<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Assistant extends MX_Controller {

	function __construct()
    {
        parent::__construct();
        $this->load->model('assistant_model');
    }

     //VERIFICA QUE EL Asistente ESTE LOGUEADO
	public function isLoged()
	{	
		return $this->session->userdata('assistant_id');
	}

	public function index()
	{
		if($this->isLoged())
		{
			//redirect("asistentes/app");
			$data["title"] = "Congreso - Asistente";
			$data["userData"] = $this->getUserSession();
			$data["contenido_principal"] = $this->load->view("app", $data, true);
			$this->load->view("asistenteapp/template", $data);
		}
		else
		{
			$data["title"] = "App asistentes";
			$this->load->view("login", $data);
		}
	}

	public function toRegister()
	{
		if($this->isLoged())
		{
			redirect('asistentes/app');
		}
		else
		{
			$data["title"] = "Congreso - Registro de Asistente";
			$this->load->view("register", $data);
		}
	}

	public function isUniqueEmail()
	{
		$email = $this->input->post("email");
		return $this->assistant_model->isUniqueEmail($email);
	}

	public function isUniqueCedula()
	{
		$cedula = $this->input->post("ci");
		return $this->assistant_model->isUniqueCedula($cedula);
	}

	public function doRegister()
	{
		$this->form_validation->set_rules("lastName", "Apellidos", "required|trim");
		$this->form_validation->set_rules("name", "Nombres", "required|trim");
		$this->form_validation->set_rules("campus_id", "Campus", "required");
		$this->form_validation->set_rules("ci", "Cédula", "required|trim|callback_isUniqueCedula|numeric");
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
		$this->form_validation->set_message("numeric", "%s debe ser numerica.");

		$this->form_validation->set_error_delimiters("<p class='text-danger'>", "</p>");

		if($this->form_validation->run($this))
		{
			//EMPAQUETAMOS LA DATA A GUARDAR EN LA BASE DE DATOS
			$user = array(
				'lastName' 	=> $this->input->post('lastName'),
				'name'		=> $this->input->post('name'),
				'campus_id'	=> $this->input->post("campus_id"),
				'ci'		=> $this->input->post('ci'),
				'phone'		=> $this->input->post('phone'),
				'university'=> $this->input->post("university"),
				'school'=> 	$this->input->post("school"),
				'email'		=> $this->input->post('email'),
				'password'	=> sha1($this->input->post('password')),
				'createdAt'	=> date("Y-m-d H:i:s")
			);

			//INSERTAMOS UN NUEVO USUARIO A LA TABLA USER_BACKEND
			$this->assistant_model->createUser($user);

			$this->session->set_flashdata('message', '<div class="col-lg-12"><div class="alert alert-success">Registro completado exitosamente.</div></div>');

			redirect('asistentes/iniciar-sesion');
		}
		else
		{
			$data["title"] = "Congreso - Registro Asistente";
			$this->load->view("register", $data);
		}
	}

	//RETORNA TRUE O FALSE SI EL EMAIL EXISTE O NO
	public function existEmail($email)
	{
		return $this->assistant_model->existEmail($email);
	}

	//RETORNA TRUE O FALSE SI EXISTE LA SESION O NO
	public function verifySession()
	{
		$userData = array(
			'email' 	=> $this->input->post('email'),
			'password' 	=> sha1($this->input->post('password'))
 		);

		return $this->assistant_model->verifySession($userData);
	}

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
				$userData = $this->assistant_model->getUserDataByEmail($email);
				//CREO LA COOKIE DE SESION CON ID
				$cookieData = array(
					'assistant_id' 	=> $userData->id
				);
				$this->session->set_userdata($cookieData);

				$this->session->set_flashdata('message', '<div class="col-lg-12"><div class="alert alert-info">Bienvenido asistente.</div></div>');

				//REDIRIJO AL HOME
				redirect('asistentes/app');
			}
			else
			{
				//SI HUBO ALGUN ERROR REGRESAR A LA VISTA LOGIN
				$data["title"] = "App Congreso - Asistentes";
				$this->load->view("login", $data);
			}
		}
		else
		{
			redirect('asistentes/iniciar-sesion');
		}
	}

	public function logout()
	{
		if($this->getSessionId())
		{
			$this->session->unset_userdata('assistant_id');
			$this->session->sess_destroy();
		}
		redirect('asistentes/app');
	}

	public function getSessionId()
	{
		return $this->session->userdata('assistant_id');
	}

	public function getUserSession()
	{
		$user_id = $this->getSessionId();
		$userData = $this->assistant_model->getUserSession($user_id);
		return $userData;
	}

	public function toUpdateUserAssistant()
	{
		if($this->getSessionId())
		{
			$data["title"] = "Congreso - Actualizar usuario";
			$data["userData"] = $this->getUserSession();
			$data["contenido_principal"] = $this->load->view("updateAssistant", $data, true);
			$this->load->view("asistenteapp/template", $data);
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
		return $this->assistant_model->noDuplicateEmail($user_id, $email);
	}

	public function noDuplicateCedula()
	{
		$email = $this->input->post("ci");
		$user_id = $this->getSessionId();
		return $this->assistant_model->noDuplicateEmail($user_id, $email);
	}

	public function uploadAvatar()
	{
		if(!empty($_FILES['image']) && $_FILES['image']['error'] != 4)
        {
        	$date = new DateTime();
            $result = $date->format('d-m-Y H:i:s');
            $tmp_name = $_FILES["image"]["tmp_name"];
            $name = $this->getSessionId()."_".$result.$_FILES["image"]["name"];
            $type = $_FILES["image"]["type"];
            move_uploaded_file($tmp_name, "uploads/avatars/$name");
            return $name;
        }
        else
        {
        	return null;
        }
	}

	public function updateAssistant()
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
				$this->assistant_model->updateUser($user_id, $user);

				redirect('asistentes/app');
			}
			else
			{
				$data["title"] = "Congreso - Actualizar asistente";
				$data["userData"] = $this->getUserSession();
				$data["contenido_principal"] = $this->load->view("updateAssistant", $data, true);
				$this->load->view("asistenteapp/template", $data);
			}
		}
	}

	public function getAllAssistants()
	{
		$query = $this->assistant_model->getAllAssistants();
		return $query;
	}

	public function assistants()
	{
		if(modules::run("backusers/getRoleId") == 1)
		{
			$data["title"] = "Backend - Directorio de asistentes";
			$data["userData"] = modules::run('backusers/getSessionUserData');
			$data["users"] = $this->getAllAssistants();
 			$data["contenido_principal"] = $this->load->view("assistants", $data, true);
			$this->load->view("back/template", $data);
		}
		else
		{
			redirect("backend");
		}
	}
}
