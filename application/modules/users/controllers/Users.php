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
			redirect('app');
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

	//RETORNA TRUE O FALSE SI EL EMAIL EXISTE O NO
	public function existEmail($email)
	{
		return $this->users_model->existEmail($email);
	}

	//RETORNA TRUE O FALSE SI EXISTE LA SESION O NO
	public function verifySession()
	{
		$userData = array(
			'email' 	=> $this->input->post('email'),
			'password' 	=> sha1($this->input->post('password'))
 		);

		return $this->users_model->verifySession($userData);
	}



	//INICIA UNA SESION POR BACKEND
	public function login()
	{
		if(!empty($_POST))
		{
			//DEFINIENDO LAS REGLAS
			$this->form_validation->set_rules('email', 'Correo electrónico', 'required|trim|valid_email|callback_existEmail');
			$this->form_validation->set_rules('password', 'Contraseña', 'required|callback_verifySession');
			
			//DEFINIENDO MENSAJE DE ERROR
			$this->form_validation->set_message('required', '%s es requerido.');
			$this->form_validation->set_message('valid_email','%s invalido.');
			$this->form_validation->set_message('existEmail', '%s no existe.');
			$this->form_validation->set_message('verifySession','Email o Password incorrecto.');
			$this->form_validation->set_error_delimiters('<ul class="parsley-errors-list filled"><li class="parsley-custom-error-message">', '</li></ul>');

			//SI LAS VALIDACIONES SON CORRECTAS
			if($this->form_validation->run($this))
			{
				//OBTENGO EL EMAIL DEL USUARIO
				$email = $this->input->post('email');
				//BUSCO SUS DATOS POR EMAIL
				$userData = $this->users_model->getUserDataByEmail($email);
				//CREO LA COOKIE DE SESION CON ID
				$cookieData = array(
					'user_id' 	=> $userData->id
				);
				$this->session->set_userdata($cookieData);

				//REDIRIJO AL HOME
				redirect('app');
			}
			else
			{
				die_pre(validation_errors());
				//SI HUBO ALGUN ERROR REGRESAR A LA VISTA LOGIN
				$data['title'] = 'Congreso - Iniciar Sesión';
				$this->load->view('login',$data);
			}
		}
		else
		{
			redirect('participantes/inicio-sesion');
		}
	}

	public function logout()
	{
		if($this->getSessionId())
		{
			$this->session->unset_userdata('user_id');
			$this->session->sess_destroy();
		}
		redirect('/');
	}

}
