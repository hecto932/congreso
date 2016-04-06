<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Users extends MX_Controller {

	function __construct()
    {
        parent::__construct();
        $this->load->model('users_model');
    }

    //VERIFICA QUE EL USUARIO ESTE LOGUEADO
	public function isLoged()
	{	
		return $this->session->userdata('user_id');
	}

	public function index()
	{
		if($this->isLoged())
		{
			redirect('app');
		}
		else
		{
			$data["title"] = "App Congreso";
			$this->load->view("login", $data);
		}
	}

	public function getSessionId()
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

	public function isUniqueEmail()
	{
		$email = $this->input->post("email");
		return $this->users_model->isUniqueEmail($email);
	}

	public function isUniqueCedula()
	{
		$cedula = $this->input->post("ci");
		return $this->users_model->isUniqueCedula($cedula);
	}

	public function doRegister()
	{
		$this->form_validation->set_rules("lastName", "Apellidos", "required|trim");
		$this->form_validation->set_rules("name", "Nombres", "required|trim");
		$this->form_validation->set_rules("ci", "Cédula", "required|trim|callback_isUniqueCedula");
		$this->form_validation->set_rules("phone", "Teléfono", "required|trim");
		$this->form_validation->set_rules("email", "Correo electrónico", "required|trim|valid_email|callback_isUniqueEmail");
		$this->form_validation->set_rules("password", "Contraseña", "required|trim|min_length[8]");
		$this->form_validation->set_rules("repass", "Repita la contraseña", "required|trim|matches[password]");

		$this->form_validation->set_message("required", "%s es requerido.");
		$this->form_validation->set_message("is_unique", "%s ya existe.");
		$this->form_validation->set_message("min_length", "%s es muy corta.");
		$this->form_validation->set_message("matches", "Las contraseñas no coinciden.");
		$this->form_validation->set_message("isUniqueEmail", "%s registrado.");
		$this->form_validation->set_message("isUniqueCedula", "%s registrada.");

		$this->form_validation->set_error_delimiters("<p class='text-danger'>", "</p>");

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
				'createdAt'	=> date("Y-m-d H:i:s")
			);

			//INSERTAMOS UN NUEVO USUARIO A LA TABLA USER_BACKEND
			$this->users_model->createUser($user);

			$this->session->set_flashdata('message', '<div class="col-lg-12"><div class="alert alert-success">Registro completado exitosamente.</div></div>');

			redirect('app');
		}
		else
		{
			$data["title"] = "Congreso - Registro";
			$this->load->view("register", $data);
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
			$this->form_validation->set_error_delimiters("<p class='text-danger'>", "</p>");

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

				$this->session->set_flashdata('message', '<div class="col-lg-12"><div class="alert alert-info">Bienvenido.</div></div>');

				//REDIRIJO AL HOME
				redirect('app');
			}
			else
			{
				//SI HUBO ALGUN ERROR REGRESAR A LA VISTA LOGIN
				$data["title"] = "App Congreso";
				$this->load->view("login", $data);
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
		redirect('app');
	}

	public function getUserSession()
	{
		$user_id = $this->getSessionId();
		$userData = $this->users_model->getUserSession($user_id);
		return $userData;
	}

	public function toUpdateUserSession()
	{
		if(modules::run("users/getSessionId"))
		{
			$data["title"] = "Congreso - Actualizar usuario";
			$data["userData"] = $this->getUserSession();
			$data["contenido_principal"] = $this->load->view("updateUser", $data, true);
			$this->load->view("app/template", $data);
		}
		else
		{
			redirect("participantes/inicio-sesion");
		}
	}

	public function noDuplicateEmail()
	{
		$email = $this->input->post("email");
		$user_id = $this->getSessionId();
		return $this->users_model->noDuplicateEmail($user_id, $email);
	}

	public function noDuplicateCedula()
	{
		$email = $this->input->post("ci");
		$user_id = $this->getSessionId();
		return $this->users_model->noDuplicateEmail($user_id, $email);
	}

	public function uploadAvatar()
	{
		if(!empty($_FILES['image']) && $_FILES['image']['error'] != 4)
        {
            $tmp_name = $_FILES["image"]["tmp_name"];
            $name = modules::run("users/getSessionId")."_".$_FILES["image"]["name"];
            $type = $_FILES["image"]["type"];
            move_uploaded_file($tmp_name, "uploads/avatars/$name");
            return $name;
        }
        else
        {
        	return null;
        }
	}

	public function updateUserSession()
	{

		//die_pre($_FILES);
		if(!empty($_POST))
		{
			$this->form_validation->set_rules("lastName", "Apellidos", "required|trim");
			$this->form_validation->set_rules("name", "Nombres", "required|trim");
			$this->form_validation->set_rules("ci", "Cédula", "required|trim|callback_noDuplicateCedula");
			$this->form_validation->set_rules("phone", "Teléfono", "required|trim");
			$this->form_validation->set_rules("email", "Email", "required|trim|valid_email|callback_noDuplicateEmail");

			$this->form_validation->set_message("required", "%s es requerido.");
			$this->form_validation->set_message("is_unique", "%s ya existe.");
			$this->form_validation->set_message("min_length", "%s es muy corta.");
			$this->form_validation->set_message("matches", "Contraseñas no coinciden.");

			if(!empty($this->input->post("password")) || !empty($this->input->post("repass")))
			{
				$this->form_validation->set_rules("password", "Contraseña", "required|trim|min_length[8]");
				$this->form_validation->set_rules("repass", "Repita la contraseña", "required|trim|matches[password]|min_length[8]");
			}

			$this->form_validation->set_error_delimiters("<p class='text-danger'>", "</p>");

			if($this->form_validation->run($this))
			{
				//EMPAQUETAMOS LA DATA A GUARDAR EN LA BASE DE DATOS
				$user = array(
					'lastName' 		=> $this->input->post('lastName'),
					'name'			=> $this->input->post('name'),
					'ci'			=> $this->input->post('ci'),
					'phone'			=> 	$this->input->post('phone'),
					'email'			=> $this->input->post('email'),
					'university' 	=> $this->input->post('university'),
					'school' 		=> $this->input->post('school'),
					'createdAt'		=> date("Y-m-d H:i:s")
				);

				if(!empty($this->input->post("password")) || !empty($this->input->post("repass")))
				{
					$user["password"] = sha1($this->input->post("password"));
				}

				$image = $this->uploadAvatar();
				if($image!=null)
				{
					$user["image"] = $image;
				}

				//INSERTAMOS UN NUEVO USUARIO A LA TABLA USER_BACKEND
				$user_id = $this->getSessionId();
				$this->users_model->updateUser($user_id, $user);

				redirect('app');
			}
			else
			{
				$data["title"] = "Congreso - Actualizar usuario";
				$data["userData"] = $this->getUserSession();
				$data["contenido_principal"] = $this->load->view("updateUser", $data, true);
				$this->load->view("app/template", $data);
			}
		}
	}

	public function getFullName($user_id)
	{
		return $this->users_model->getFullName($user_id);
	}

}
