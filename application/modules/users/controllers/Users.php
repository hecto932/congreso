<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Users extends MX_Controller {

	function __construct()
    {
        parent::__construct();
        $this->load->model('users_model');
    }

	public function index()
	{
		$data["title"] = "App Congreso";
		$this->load->view("login", $data);
	}

	public function getSessionId()
	{
		return $this->session->userdata('user_id');
	}

	//VERIFICA QUE EL USUARIO ESTE LOGUEADO
	public function isLoged()
	{	
		return $this->session->userdata('user_id');
	}

	public function toRegister()
	{
		if($this->isLoged())
		{
			echo "Voy al home";
		}
		else
		{
			$data["title"] = "Congreso - Registro";
			$this->load->view("register", $data);
		}
	}

	public function doRegister()
	{
		echo "<pre>".print_r($_POST, true)."</pre>";

		$this->form_validation->set_rules("lastName", "Apellidos", "required|trim");
		$this->form_validation->set_rules("name", "Nombres", "required|trim");
		$this->form_validation->set_rules("ci", "Identificación", "required|trim");
		$this->form_validation->set_rules("phone", "Teléfono", "required|trim");
		$this->form_validation->set_rules("email", "Correo electrónico", "required|trim|valid_email|is_unique[users.email]");
		$this->form_validation->set_rules("password", "Contraseña", "required|trim");

		if($this->form_validation->run($this))
		{
			//EMPAQUETAMOS LA DATA A GUARDAR EN LA BASE DE DATOS
			$user = array(
				'lastName' 	=> $this->input->post('lastName'),
				'name'		=> $this->input->post('name'),
				'ci'		=> $this->input->post('ci'),
				'phone'		=> 	$this->input->post('phone'),
				'email'		=> $this->input->post('email'),
				'password'	=> sha1($this->input->post('password')),
				'createdAt'	=> date("Y-m-d H:i:s"),
				'updatedAt'	=> date("Y-m-d H:i:s")
			);

			//INSERTAMOS UN NUEVO USUARIO A LA TABLA USER_BACKEND
			$this->users_model->createUser($user);

			redirect('/');
		}
		else
		{
			echo "No pasaron";
			echo "<pre>".print_r(validation_errors(), true)."</pre>";
		}
	}
}
