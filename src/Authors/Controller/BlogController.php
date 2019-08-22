<?php
/**
 * Melis Technology (http://www.melistechnology.com)
 *
 * @copyright Copyright (c) 2015 Melis Technology (http://www.melistechnology.com)
 *
 */

namespace Authors\Controller;

class BlogController extends BaseController
{
    /**
    *   This action display the list of Blogs
    */
    public function indexAction()
    {
        // Retrieving Blog details page
        $engineTree = $this->getServiceLocator()->get('MelisEngineTree');
        $page = $engineTree->getPageChildren($this->idPage, 1)->current();
        // Retrieving Page site
        $site = $engineTree->getSiteByPageId($this->idPage);

        /**
         * Listing News using MelisCmsNewsListNewsPlugin
         */
		$listNewsPluginView = $this->MelisCmsNewsListNewsPlugin();
		$listNewsParameters = array(
		    'template_path' => 'Blogs',
            'pageId' => $this->idPage,
            'pageIdNews' => $page->page_id,
	        'pagination' => array(
	            'nbPerPage' => 6
	        ),
	        'filter' => array(
	            'column' => 'cnews_publish_date',
	            'order' => 'DESC',
	            'unpublish_filter' => true,
	            'site_id' => $site->site_id,
	        )
        );
		
		// add generated view to children views for displaying it in the contact view
		$this->view->addChild($listNewsPluginView->render($listNewsParameters), 'listNews');
        
		// $this->view->setVariable('renderMode', $this->renderMode);
        $this->view->setVariable('idPage', $this->idPage);
        return $this->view;
    }

    /**
    *   This action will display the details of the Blog
    */
    public function detailsAction()
    {
        $listNewsPluginView = $this->MelisCmsNewsShowNewsPlugin();
		$listNewsParameters = array(
		    'id' => 'newsDetails',
		    'template_path' => 'BlogDetails',
		);
		// add generated view to children views for displaying it in the contact view
        $this->view->addChild($listNewsPluginView->render($listNewsParameters), 'newsDetails');
        
        $this->view->setVariable('idPage', $this->idPage);
        return $this->view;
    }

    /**
    *   This action will display the details of the Blog
    */
    public function sidebarAction()
    {
        $listNewsPluginView = $this->MelisCmsNewsShowNewsPlugin();
        $listNewsParameters = array(
            'id' => 'sidebar',
            'template_path' => 'BlogSidebar',
        );
        // add generated view to children views for displaying it in the contact view
        $this->view->addChild($listNewsPluginView->render($listNewsParameters), 'BlogSidebar');
        
        $this->view->setVariable('idPage', $this->idPage);
        return $this->view;
    }
}
