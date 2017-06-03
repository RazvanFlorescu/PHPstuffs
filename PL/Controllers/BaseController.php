<?php

/**
 * Created by PhpStorm.
 * User: Razvan
 * Date: 6/3/2017
 * Time: 00:47
 */
require_once("PL/Helpers/Template.php");
class BaseController
{
    private $template;
    private $cssURL = "localhost:8181/tw/pl/interface/css";
    public function __construct()
    {
        $this->template = new Template();
    }

    public function renderView($view, $data){
        $this->template->setFile($view);
        $data['cssURL'] = $this->cssURL;
        $this->template->setParams($data);
        return $this->template->render();
    }

    public function loadView($view, $data=[]){
        echo $this->renderView($view, $data);
        exit();
    }
}