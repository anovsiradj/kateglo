<?php
/* vim: set expandtab tabstop=4 shiftwidth=4 softtabstop=4: */

/**
 * The action for a 'submit' button.
 * 
 * PHP versions 4 and 5
 *
 * LICENSE: This source file is subject to version 3.01 of the PHP license
 * that is available through the world-wide-web at the following URI:
 * http://www.php.net/license/3_01.txt If you did not receive a copy of
 * the PHP License and are unable to obtain it through the web, please
 * send a note to license@php.net so we can mail you a copy immediately.
 *
 * @category    HTML
 * @package     HTML_QuickForm_Controller
 * @author      Alexey Borzov <avb@php.net>
 * @copyright   2003-2007 The PHP Group
 * @license     http://www.php.net/license/3_01.txt PHP License 3.01
 * @version     CVS: $Id: Submit.php,v 1.5 2007/05/18 09:34:18 avb Exp $
 * @link        http://pear.php.net/package/HTML_QuickForm_Controller
 */

/**
 * Class representing an action to perform on HTTP request.
 */
require_once 'HTML/QuickForm/Action.php';

/**
 * The action for a 'submit' button.
 *
 * @category    HTML
 * @package     HTML_QuickForm_Controller
 * @author      Alexey Borzov <avb@php.net>
 * @version     Release: 1.0.8
 */
class HTML_QuickForm_Action_Submit extends HTML_QuickForm_Action
{
    function perform(&$page, $actionName)
    {
        // save the form values and validation status to the session
        $page->isFormBuilt() or $page->buildForm();
        $pageName =  $page->getAttribute('id');
        $data     = $page->controller->container();
        $data['values'][$pageName] = $page->exportValues();
        if (PEAR::isError($valid = $page->validate())) {
            return $valid;
        }
        $data['valid'][$pageName] = $valid;

        // All pages are valid, process
        if ($page->controller->isValid()) {
            return $page->handle('process');

        // Current page is invalid, display it
        } elseif (!$data['valid'][$pageName]) {
            return $page->handle('display');

        // Some other page is invalid, redirect to it
        } else {
            $target = $page->controller->getPage($page->controller->findInvalid());
            return $target->handle('jump');
        }
    }
}

?>