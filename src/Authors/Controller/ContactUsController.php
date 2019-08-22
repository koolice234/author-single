<?php
/**
 * Melis Technology (http://www.melistechnology.com)
 *
 * @copyright Copyright (c) 2015 Melis Technology (http://www.melistechnology.com)
 *
 */

namespace Authors\Controller;

use Zend\View\Model\JsonModel;
use MelisFront\Controller\MelisSiteActionController;
use PHPMailer\PHPMailer\PHPMailer;
use Zend\Db\TableGateway\TableGateway;

class ContactUsController extends MelisSiteActionController
{
    /**
    *   This action will manage the contact form 
    *   after submit
    */
    /*public function submitContactUsFormAction()
    {
        // Prospects Plugin
        $prospectsForm = $this->MelisCmsProspectsShowFormPlugin();
        $prospectsParamenter = [
            'template_path' => 'contanctUs',
            'fields' => 'pros_name,pros_email,pros_message',
            'required_fields' => 'pros_name,pros_email,pros_message',
            'theme' => 2
        ];

        // Plugin ViewModel
        $pluginViewModel = $prospectsForm->render($prospectsParamenter);

        // This Service will Render ViewModer to html
        $renderer = $this->getServiceLocator()->get('ViewRenderer');

        // return JsonModel
        return new JsonModel(['html' => $renderer->render($pluginViewModel)]);
    }*/

    public function submitContactUsFormAction()
    {
        $site_id = '3';
        $pros_name = $_POST['pros_name'];
        $pros_email = $_POST['pros_email'];
        $pros_message =  $_POST['pros_message'];
        $recipient = '';
        $cc = '';
	print_r($_POST);
        $db = $this->getServiceLocator()->get('Zend\Db\Adapter\Adapter');//get db adapter
        //$settings_data = array();
        $settingsTbl = new TableGateway('cb_custom_settings', $db);
        $resultSet = $settingsTbl->select(array('site_id' => $site_id));
        $current =  $resultSet->current();

        if (isset($current)) {
            $recipient = $current['recipient'];
            $cc = $current['cc'];
        } else {
            echo "0 results from db";
        }

        $mail = new PHPMailer(true);
        $mail->isSMTP();
        $mail->Host       = 'smtp.gmail.com';
        $mail->SMTPAuth   = true;
        $mail->Username   = 'empesquera.cri@gmail.com';
        $mail->Password   = 'ilFind78';
        $mail->SMTPSecure = 'tls';
        $mail->Port       = 587;

        $mail->From = "empesquera.cri@gmail.com"; //@todo: Site email
        $mail->FromName = "Author Website"; //@todo: Site name
        $mail->addAddress($recipient);
        //$mail->AddCC($cc);
        $mail->isHTML(true);

        $mail->Subject = "New Contact Message";
        $mail->Body = "<p><span>From:</span><span><b>" . $pros_name . "</b></span></p>
                       <p><span>Email:</span><span><b>" . $pros_email . "</b></span></p>
                       <p><span>Message:</span><span><b>" . $pros_message . "</b></span></p>";
        $mail->AltBody = "From: " . $pros_name . ", Email: " . $pros_email . " Message: " . $pros_message;

        if(!$mail->send())
        {
            error_log("Mailer Error: " . $mail->ErrorInfo);
        }
        else
        {
            error_log("Message has been sent successfully");
        }

        // Prospects Plugin
        $prospectsForm = $this->MelisCmsProspectsShowFormPlugin();
        $prospectsParamenter = [
            'template_path' => 'contanctUs',
            'fields' => 'pros_name,pros_email,pros_message',
            'required_fields' => 'pros_name,pros_email,pros_message',
            'theme' => 1
        ];

        // Plugin ViewModel
        $pluginViewModel = $prospectsForm->render($prospectsParamenter);

        // This Service will Render ViewModer to html
        $renderer = $this->getServiceLocator()->get('ViewRenderer');

        // return JsonModel
        return new JsonModel(['html' => $renderer->render($pluginViewModel)]);
    }
}
