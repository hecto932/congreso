<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Backusers extends MX_Controller {

	function __construct()
    {
        parent::__construct();
        $this->load->model('backusers_model');
    }

    public function backUserSession()
    {
    	return $this->session->userdata("backuser_id");
    }

    public function getSessionId()
	{
		return $this->session->userdata('backuser_id');
	}

	//RETORNA TRUE O FALSE SI EXISTE LA SESION O NO
	public function verifySession()
	{
		$userData = array(
			'email' 	=> $this->input->post('email'),
			'password' 	=> sha1($this->input->post('password'))
 		);

		return $this->backusers_model->verifySession($userData);
	}

	//INICIA UNA SESION POR BACKEND
	public function login()
	{
		die_pre($_POST);
		if(!empty($_POST))
		{
			//DEFINIENDO LAS REGLAS
			$this->form_validation->set_rules('email', 'Correo electrónico', 'required|trim|valid_email');
			$this->form_validation->set_rules('password', 'Contraseña', 'required|callback_verifySession');
			
			//DEFINIENDO MENSAJE DE ERROR
			$this->form_validation->set_message('required', '%s es requerido.');
			$this->form_validation->set_message('valid_email','%s invalido.');
			$this->form_validation->set_message('verifySession','Email o Password incorrecto.');
			$this->form_validation->set_error_delimiters("<p class='text-danger'>", "</p>");

			//SI LAS VALIDACIONES SON CORRECTAS
			if($this->form_validation->run($this))
			{
				//OBTENGO EL EMAIL DEL USUARIO
				$email = $this->input->post('email');
				//BUSCO SUS DATOS POR EMAIL
				$userData = $this->backusers_model->getUserDataByEmail($email);
				//CREO LA COOKIE DE SESION CON ID
				$cookieData = array(
					'backuser_id' 	=> $userData->id
				);
				$this->session->set_userdata($cookieData);

				$this->session->set_flashdata('message', '<div class="col-lg-12"><div class="alert alert-info">Bienvenido.</div></div>');

				//REDIRIJO AL HOME
				redirect('backend');
			}
			else
			{
				//SI HUBO ALGUN ERROR REGRESAR A LA VISTA LOGIN
				$data["title"] = "Backend - Login";
				$this->load->view("login", $data);
			}
		}
		else
		{
			redirect('backend');
		}
	}

	public function logout()
	{
		if($this->getSessionId())
		{
			$this->session->unset_userdata('backuser_id');
			$this->session->sess_destroy();
		}
		redirect('backend');
	}

	public function getSessionUserData()
	{
		$backuser_id = $this->session->userdata("backuser_id");
		$userdata = $this->backusers_model->getSessionUserData($backuser_id);
		$userdata["role"] = $this->backusers_model->getNameRoleById($userdata["role_id"]);
		return $userdata;
	}

	public function getRoleId()
	{
		$backuser_id = $this->getSessionId();
		return $this->backusers_model->getRoleId($backuser_id);
	}
}
