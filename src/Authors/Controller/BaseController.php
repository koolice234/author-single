<?php
/**
 * Melis Technology (http://www.melistechnology.com)
 *
 * @copyright Copyright (c) 2015 Melis Technology (http://www.melistechnology.com)
 *
 */

namespace Authors\Controller;

use MelisFront\Controller\MelisSiteActionController;
use Zend\Mvc\MvcEvent;
use Zend\View\Model\ViewModel;

class BaseController extends MelisSiteActionController
{
    public $view = null;
    
    function __construct()
    {
        $this->view = new ViewModel();
    }

    public function onDispatch(MvcEvent $event)
    {
        
        // Service Manager
        $sm = $event->getApplication()->getServiceManager();
        $pageId = $this->params()->fromRoute('idpage');
        
        
        /**
        *   MelisFront Service retrive Site config datas
        */
        $engineTree = $sm->get('MelisEngineTree');

        // Retrieving Page site
        $site = $engineTree->getSiteByPageId($pageId);

        // print_r($site);
        // die();
        $siteName = $site->site_label;
        $this->layout()->setVariable('sitename',$siteName);

    
        /**
        *   MelisFront Service retrive Site config datas
        */
        $siteConfigSrv = $sm->get('MelisSiteConfigService');
        $home = $siteConfigSrv->getSiteConfigByKey('homePageId', $site->site_main_page_id);

        // print_r($home);
        // exit();

        $engineTree = $this->getServiceLocator()->get('MelisEngineTree');
        $blogpage = $engineTree->getPageChildren($home, 1)->current();
        // Set variable of Blog Page
        $this->layout()->setVariable('blogpageid',$blogpage->tree_page_id);
        $this->layout()->setVariable('homepageid',$home);


        // Application config
        $siteConfig = $sm->get('config');
        

        $fulldata = $sm->get('MelisEnginePage');
        $melisPageTreePublished = $fulldata->getDatasPage($pageId);
        
        // print_r($melisPageTreePublished->getMelisPageTree());
        

        // Prospects Plugin
        // This plugin attached to layout
        $prospectsForm = $this->MelisCmsProspectsShowFormPlugin();
        $prospectsParamenter = [
            'template_path' => 'contanctUs',
            'fields' => 'pros_name,pros_email,pros_message',
            'required_fields' => 'pros_name,pros_email,pros_message',
            'theme' => 2 // ID of theme. see Prospects tools under Theme tool
        ];

        // Rendering plugin to get the result this will return ViewModel
        $pluginViewModel = $prospectsForm->render($prospectsParamenter);

        // Prospects Plugin use to deisplay Contact form
        $this->layout()->addChild($pluginViewModel, 'contactUsForm');

        // $this->layout()->addChild($breadcrumb, 'pageBreadcrumb');
        return parent::onDispatch($event);
    }
}
