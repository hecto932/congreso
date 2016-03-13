<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Works extends MX_Controller {

	function __construct()
    {
        parent::__construct();
        $this->load->model('works_model');
    }

    public function index()
    {

    }

    public function getAllAreas()
    {
    	return $this->works_model->getAllAreas();
    }

    public function toAddWork()
    {
    	if(modules::run("users/getSessionId"))
    	{
    		$data["title"] = "Agregar un nuevo trabajo";
    		$data["userData"] = modules::run('users/getUserSession');
    		$data["areas"] = $this->getAllAreas();
    		$data["contenido_principal"] = $this->load->view("addWork", $data, true);
    		$this->load->view("app/template", $data);
    	}
    	else
    	{
    		redirect("/");
    	}
    }
}
