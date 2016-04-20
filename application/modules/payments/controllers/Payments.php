<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Payments extends MX_Controller {

	function __construct()
    {
        parent::__construct();
        $this->load->model('payments_model');
    }

    public function getAccessPayments()
    {
        return modules::run("backusers/getSessionId") && (modules::run("backusers/getRoleId")==1 || modules::run("backusers/getRoleId")==5);
    }

    public function index()
    {
        if($this->getAccessPayments())
        {
            $data["title"] = "Backend - Pagos";
            $data["userData"] = modules::run("backusers/getSessionUserData");
            $data["payments"] = $this->getAllPaymentsWithoutVerify();
            $data["contenido_principal"] = $this->load->view("payments", $data, true);
            $this->load->view("back/template", $data);
        }
        else
        {
            redirect("backend");
        }
    }

    public function toAddPayment()
    {
        if(modules::run("users/getSessionId"))
        {
            $data["title"] = "Agregar nuevo pago";
            $data["userData"] = modules::run("users/getUserSession");
            $data["MyWorks"] = modules::run("works/getWorksByUserId", modules::run('users/getSessionId'));
            $data["contenido_principal"] = $this->load->view("addPayment", $data, true);
            $this->load->view("app/template", $data);
        }
        else
        {
            redirect("/");
        }
    }

    public function getPaymentsByUserId($user_id)
    {
    	$result = $this->payments_model->getPaymentsByUserId($user_id);
        foreach ($result as $key => $value) {
            $result[$key]["work"] = modules::run("works/getTitleWork", $result[$key]["work_id"]);
        }
        return $result;
    }

    public function addPayment()
    {
        if(!empty($_POST))
        {
            $this->form_validation->set_rules("bank", "Banco", "required");
            $this->form_validation->set_rules("numberReference", "Numero de referencia", "required");
            $this->form_validation->set_rules("amount", "Monto", "required");
            $this->form_validation->set_rules("work_id", "Trabajo", "required");

            $this->form_validation->set_message("required", "%s es requerido.");
            $this->form_validation->set_message("is_unique", "%s ya fue registrado.");

            $this->form_validation->set_error_delimiters("<p class='text-danger'>", "</p>");

            if($this->form_validation->run($this))
            {
                $payment = array(
                    "user_id" => modules::run("users/getSessionId"),
                    "bank" => $this->input->post("bank"),
                    "numberReference" => $this->input->post("numberReference"),
                    "amount" => $this->input->post("amount"),
                    "work_id" => $this->input->post("work_id"),
                    "status" => "Por verificar",
                    'createdAt' => date("Y-m-d H:i:s")
                );

                $this->payments_model->addPayment($payment);

                $this->session->set_flashdata('message', '<div class="col-lg-12"><div class="alert alert-success">Pago realizado exitosamente. Por favor espere por su confirmación..</div></div>');

                redirect("/app");
            }
            else
            {
                $data["title"] = "Agregar nuevo pago";
                $data["userData"] = modules::run("users/getUserSession");
                $data["MyWorks"] = modules::run("works/getAllWorksWithOutPayment", modules::run('users/getSessionId'));
                $data["contenido_principal"] = $this->load->view("addPayment", $data, true);
                $this->load->view("app/template", $data);
            }
        }
        else
        {
            redirect("/");
        }
    }

    public function numberPaymentsByUserId($user_id)
    {
        return $this->payments_model->numberPaymentsByUserId($user_id);
    }

    public function getAllPaymentsWithoutVerify()
    {
        $result =  $this->payments_model->getAllPaymentsWithoutVerify();
        foreach ($result as $key => $value) {
            $result[$key]["work"] = modules::run("works/getTitleWork", $result[$key]["work_id"]);
            $result[$key]["user"] = modules::run("users/getFullName", $result[$key]["user_id"]);
        }
        return $result;   
    }

    public function changeStatus()
    {
        if($this->getAccessPayments())
        {
            $status = $this->input->post("status");
            $paymentId = $this->input->post("paymentId");
            $this->payments_model->changeStatus($paymentId, $status);
            redirect("backend/pagos");
        }
        else
        {
            redirect("backend");
        }
    }

    public function getPayments($status)
    {
        $result =  $this->payments_model->getPayments($status);
        foreach ($result as $key => $value) {
            $result[$key]["work"] = modules::run("works/getTitleWork", $result[$key]["work_id"]);
            $result[$key]["user"] = modules::run("users/getFullName", $result[$key]["user_id"]);
        }
        return $result; 
    }

    public function getPaymentsConforme()
    {
        if($this->getAccessPayments())
        {
            $data["title"] = "Backend - Pagos";
            $data["userData"] = modules::run("backusers/getSessionUserData");
            $data["payments"] = $this->getPayments("Conforme");
            $data["contenido_principal"] = $this->load->view("payments", $data, true);
            $this->load->view("back/template", $data);
        }
        else
        {
            redirect("backend");
        }
    }

    public function getPaymentsNoConforme()
    {
        if($this->getAccessPayments())
        {
            $data["title"] = "Backend - Pagos";
            $data["userData"] = modules::run("backusers/getSessionUserData");
            $data["payments"] = $this->getPayments("No conforme");
            $data["contenido_principal"] = $this->load->view("payments", $data, true);
            $this->load->view("back/template", $data);
        }
        else
        {
            redirect("backend");
        }
    }

    public function getAllPaymentsByUserId($user_id)
    {
        $result = $this->payments_model->getAllPaymentsByUserId($user_id);
        foreach ($result as $key => $value) {
            $result[$key]["work"] = modules::run("works/getTitleWork", $result[$key]["work_id"]);
            $result[$key]["user"] = modules::run("users/getFullName", $result[$key]["user_id"]);
        }
        return $result; 
    }

}
