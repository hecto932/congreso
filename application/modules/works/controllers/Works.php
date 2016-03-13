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
                    $name = $_FILES["files"]["name"][$key];
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
    				"status"	=> "En proceso de arbitraje",
                    'createdAt' => date("Y-m-d H:i:s")
    			);

    			$this->works_model->addWork($work);

                $workData = $this->works_model->getWorkByTitle($work["title"]);

                $this->upload_attachments($workData["id"]);

    			$this->session->set_flashdata('message', 'Trabajo cargado exitosamente.');

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
    		redirect("/app");
    	}
    }
}
