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

    public function addWork()
    {
    	if(!empty($_POST))
    	{
    		$this->form_validation->set_rules("campus", "Campus", "required");
    		$this->form_validation->set_rules("area_id", "Area temática", "required");
    		$this->form_validation->set_rules("modality", "Modalidad", "required");
    		$this->form_validation->set_rules("title", "Titulo", "required|trim");

    		$this->form_validation->set_message('required', '%s es requerido.');
    		$this->form_validation->set_message('is_unique', '%s no es unico.');

    		$this->form_validation->set_error_delimiters("<p class='text-danger'>", "</p>");

    		if($this->form_validation->run($this))
    		{
    			$work = array(
    				"user_id" 	=> modules::run("users/getSessionId"),
    				"campus" 	=> $this->input->post("campus"),
    				"area_id" 	=> $this->input->post("area_id"),
    				"modality" 	=> $this->input->post("modality"),
    				"title" 	=> $this->input->post("title"),
    				"status"	=> "En proceso de arbitraje"
    			);

    			$this->works_model->addWork($work);

    			$this->session->set_flashdata('message', 'Trabajo cargado exitosamente.');

    			redirect("/app");
    		}
    		else
    		{
    			echo "No pasaron";
    			pre(validation_errors());
    		}
    	}
    	else
    	{
    		redirect("/app");
    	}
    }
}
