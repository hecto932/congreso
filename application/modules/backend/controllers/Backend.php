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
            $role = modules::run("backusers/getRoleId");
            if($role == 1)
            {
                $data["title"] = "Backend - Congreso";
                $data["userData"] = modules::run("backusers/getSessionUserData");
                $data["contenido_principal"] = $this->load->view("home", $data, true);
                $this->load->view("back/template", $data);
            }
            elseif($role == 2 || $role 3)
            {
                redirect("backend/arbitraje");
            }
            elseif($role == 5)
            {
                redirect("backend/pagos");
            }
            elseif($role == 6 || $role == 7)
            {
                redirect("backend/simposios");
            }
    		
    	}
    	else
    	{
    		$data["title"] = "Backend - Login";
    		$this->load->view("login", $data);
    	}
    }
}
