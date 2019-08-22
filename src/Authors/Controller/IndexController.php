<?php
/**
 * Melis Technology (http://www.melistechnology.com)
 *
 * @copyright Copyright (c) 2015 Melis Technology (http://www.melistechnology.com)
 *
 */

namespace Authors\Controller;

use Zend\View\Model\JsonModel;

class IndexController extends BaseController
{
    /**
    *   Homapage ViewModel
    */
    public function indexAction()
    {
    	return $this->view;
    }
}
