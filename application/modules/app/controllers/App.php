<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class App extends MX_Controller {

	function __construct()
    {
        parent::__construct();
    }

    public function index()
    {
    	if(modules::run('users/getSessionId'))
    	{
    		$data["title"] = "Congreso - 2016";
            $data["userData"] = modules::run('users/getUserSession');
            $data["MyPayments"] = modules::run("payments/getPaymentsByUserId", modules::run('users/getSessionId'));
            $data["MyWorks"] = modules::run("works/getWorksByUserId", modules::run('users/getSessionId'));
    		$data["contenido_principal"] = $this->load->view("app", $data, true);
    		$this->load->view("app/template", $data);
    	}
    	else
    	{
    		redirect('participantes/inicio-sesion');
    	}
    }
}
