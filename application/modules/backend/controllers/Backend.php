<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Backend extends MX_Controller {

	function __construct()
    {
        parent::__construct();
    }

    function index()
    {
    	if(modules::run("backusers/backUserSession"))
    	{
    		$data["title"] = "Backend - Congreso";
            $data["userData"] = modules::run("backusers/getSessionUserData");
    		$data["contenido_principal"] = $this->load->view("home", $data, true);
    		$this->load->view("back/template", $data);
    	}
    	else
    	{
    		$data["title"] = "Backend - Login";
    		$this->load->view("login", $data);
    	}
    }
}
