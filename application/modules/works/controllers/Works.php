<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Works extends MX_Controller {

	function __construct()
    {
        parent::__construct();
        $this->load->model('works_model');
    }

    //RETORNA EL ERROR SEGUN EL CODIGO - MOVER A LENGUAGE
    function codeToMessage($code) 
    { 
        $message = '';
        switch ($code) 
        { 
            case UPLOAD_ERR_INI_SIZE: 
                $message = "El archivo subido excede la directiva upload_max_filesize en php.ini"; 
                break; 
            case UPLOAD_ERR_FORM_SIZE: 
                $message = "El archivo subido excede la directiva MAX_FILE_SIZE que fue especificada en el formulario HTML."; 
                break; 
            case UPLOAD_ERR_PARTIAL: 
                $message = "El archivo subido fue sólo parcialmente cargado"; 
                break; 
            case UPLOAD_ERR_NO_FILE: 
                $message = "Ningún archivo fue subido"; 
                break; 
            case UPLOAD_ERR_NO_TMP_DIR: 
                $message = "Falta la carpeta temporal"; 
                break; 
            case UPLOAD_ERR_CANT_WRITE: 
                $message = "No se pudo escribir el archivo en el disco"; 
                break; 
            case UPLOAD_ERR_EXTENSION: 
                $message = "Una extensión de PHP detuvo la carga de archivos"; 
                break; 

            default: 
                $message = "Unknown upload error"; 
                break; 
        } 
        return $message; 
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
    	if(modules::run("users/getSessionId") && ($this->getNumberWorks()<3))
    	{
    		$data["title"] = "Agregar un nuevo trabajo";
    		$data["userData"] = modules::run('users/getUserSession');
    		$data["areas"] = $this->getAllAreas();
    		$data["contenido_principal"] = $this->load->view("addWork", $data, true);
    		$this->load->view("app/template", $data);
    	}
    	else
    	{
    		$this->session->set_flashdata('message', '<div class="col-lg-12"><div class="alert alert-danger">Usted ha alcanzado el maximo de trabajos permitidos.</div></div>');
            redirect("/app");
    	}
    }

    //CREA UN NUEVO ATTACHMENT
    public function newAttachment($work_id, $name, $type = null)
    {
        $data = array(
            'work_id'   => $work_id,
            'name'      => $name,
            'type'      => $type,
            'createdAt' => date("Y-m-d H:i:s")
        );

        $this->works_model->newAttachment($data);
    }

    public function upload_attachments($work_id)
    {
        //SI EXISTEN ADJUNTOS
        if(!empty($_FILES['files']))
        {
            foreach ($_FILES["files"]["error"] as $key => $error) 
            {
                if ($error == UPLOAD_ERR_OK) 
                {
                    $tmp_name = $_FILES["files"]["tmp_name"][$key];
                    $name = modules::run("users/getSessionId")."_".$_FILES["files"]["name"][$key];
                    $type = $_FILES["files"]["type"][$key];
                    move_uploaded_file($tmp_name, "uploads/files/$name");
                    if($type == 'application/vnd.openxmlformats-officedocument.wordprocessingml.document')
                        $type = 'DOCX';
                    elseif($type == 'application/pdf')
                        $type = 'PDF';
                    elseif($type == 'application/zip')
                        $type = 'ZIP';
                    elseif($type == 'application/vnd.ms-powerpoint')
                        $type = 'PPT';
                    elseif($type == 'application/msword')
                        $type = 'DOC';
                    $this->newAttachment($work_id, $name, $type);
                }
                else
                {
                    return $this->codeToMessage($error);
                }
            }
        }
    }

    public function getNumberFiles()
    {
        $this->session->set_flashdata('message', '<span class="badge badge-danger">Solo pueden cargarse maximo tres(3) archivos.</span>');
        return count($_FILES["files"]["name"]) <= 3;
    }

    public function getNumberWorks()
    {
        $user_id = modules::run("users/getSessionId");
        return $this->works_model->getNumberWorks($user_id);
    }

    public function isUniqueTitle()
    {
        $title = $this->input->post("title");
        return $this->works_model->isUniqueTitle($title);
    }

    public function addWork()
    {
    	if(!empty($_POST))
    	{
    		$this->form_validation->set_rules("campus", "Campus", "required");
    		$this->form_validation->set_rules("area_id", "Area temática", "required");
    		$this->form_validation->set_rules("modality", "Modalidad", "required");
    		$this->form_validation->set_rules("title", "Titulo", "required|trim|callback_isUniqueTitle");

    		$this->form_validation->set_message('required', '%s es requerido.');
    		$this->form_validation->set_message('is_unique', '%s no es unico.');
            $this->form_validation->set_message("isUniqueTitle","Título es repetido.");

    		$this->form_validation->set_error_delimiters("<p class='text-danger'>", "</p>");

            //echo count($_FILES["files"]["name"]);
            //die_pre($_FILES);

    		if($this->form_validation->run($this) && $this->getNumberFiles())
    		{
    			$work = array(
    				"user_id" 	=> modules::run("users/getSessionId"),
    				"campus" 	=> $this->input->post("campus"),
    				"area_id" 	=> $this->input->post("area_id"),
    				"modality" 	=> $this->input->post("modality"),
    				"title" 	=> $this->input->post("title"),
    				"status"	=> "En proceso de arbitraje",
                    'createdAt' => date("Y-m-d H:i:s")
    			);

    			$this->works_model->addWork($work);

                $workData = $this->works_model->getWorkByTitle($work["title"]);

                $this->upload_attachments($workData["id"]);

    			$this->session->set_flashdata('message', '<div class="col-lg-12"><div class="alert alert-success">Trabajo cargado exitosamente.</div></div>');

    			redirect("/app");
    		}
    		else
    		{
    			$data["title"] = "Agregar un nuevo trabajo";
                $data["userData"] = modules::run('users/getUserSession');
                $data["areas"] = $this->getAllAreas();
                $data["contenido_principal"] = $this->load->view("addWork", $data, true);
                $this->load->view("app/template", $data);
    		}
    	}
    	else
    	{
            $this->session->set_flashdata('message', '<div class="col-lg-12"><div class="alert alert-error">Usted ha alcanzado el maximo de trabajos permitidos.</div></div>');
    		redirect("/app");
    	}
    }

    public function getWorksByUserId($user_id)
    {
        $result = $this->works_model->getWorksByUserId($user_id);
        foreach ($result as $key => $value) {
            $result[$key]["area"] = $this->works_model->getAreaName($result[$key]["area_id"]);
        }
        return $result;
    }

    public function getAreaName($work_id)
    {
        return $this->works_model->getAreaName($work_id);
    }

    public function getAllWorksWithOutPayment($user_id)
    {
        $result = $this->works_model->getAllWorksWithOutPayment($user_id);
        foreach ($result as $key => $value) {
            $result[$key]["work"] = $this->works_model->getAreaName($result[$key]["work_id"]);
        }
        //die_pre($result);
        return $result;
    }

    public function numberWorksByUserId($user_id)
    {
        return $this->works_model->numberWorksByUserId($user_id);
    }

    public function getTitleWork($work_id)
    {
        return $this->works_model->getTitleWork($work_id);
    }

    public function getWorkById($work_id)
    {
        $query = $this->works_model->getWorkById($work_id);
        $query["files"] = $this->works_model->getFilesWork($work_id);
        $query["area"] = $this->works_model->getAreaName($query["area_id"]);
        return $query; 
    }

    public function work($work_id)
    {
        if(modules::run("users/getSessionId"))
        {
            $data["title"] = "Congreso - Trabajo";
            $data["userData"] = modules::run('users/getUserSession');
            $data["work"] = $this->getWorkById($work_id);
            $data["contenido_principal"] = $this->load->view("work", $data, true);
            $this->load->view("app/template", $data);
        }
        else
        {
            redirect("/app");
        }
    }
}
