<?php

/**
 * Melis Technology (http://www.melistechnology.com)
 *
 * @copyright Copyright (c) 2015 Melis Technology (http://www.melistechnology.com)
 *
 */

namespace Authors\Controller;
use MelisFront\Controller\MelisSiteActionController;
use Zend\View\Model\ViewModel;
use Zend\Db\TableGateway\TableGateway;
use Zend\Mvc\MvcEvent;

class CustomSettingsController extends MelisSiteActionController
{
    public function settingsAction()
    {
        $view = new ViewModel();
        $view->setTemplate('customsettings/custom-settings');
        //$siteId = BaseController::site;
        $data = array(
            'siteId' => '3'
        );
        $view->setVariable('view_data', $data);
        return $view;
    }

    public function getdataAction() {
        $db = $this->getServiceLocator()->get('Zend\Db\Adapter\Adapter');//get db adapter
        $settings_data = array();
        $settingsTbl = new TableGateway('cb_custom_settings', $db);
        $resultSet = $settingsTbl->select();

        if($resultSet->count() > 0) {
            foreach ($resultSet as $result) {
                $settings_data[] = array(
                    'site_id' => $result->site_id,
                    'recipient' => $result->recipient,
                    'cc' => $result->cc
                );
            }
            echo json_encode($settings_data);
            exit;
        } else {
            echo "0 results from db";
        }
    }

    public function addSettingAction() {
        $site_id = $_POST['site_id'];
        $recipient = $_POST['recipient'];
        $cc = $_POST['cc'];

        $db = $this->getServiceLocator()->get('Zend\Db\Adapter\Adapter');
        $settingsTbl = new TableGateway('cb_custom_settings', $db);
        $resultSet = $settingsTbl->select(array('site_id' => $site_id));
        if($resultSet->count() > 0) { //Update
            $settingData = array(
                'recipient' => $recipient,
                'cc' => $cc
            );
            $settingsTbl->update($settingData, ['site_id' => $site_id]);
        } else { // Add
            $settingData = array(
                'site_id' => $site_id,
                'recipient' => $recipient,
                'cc' => $cc
            );
            $settingsTbl->insert($settingData);
        }
    }
}