<?php

class Payments_model extends CI_Model
{
	function __construct()
	{
		parent::__construct();
	}

	function getPaymentsByUserId($user_id)
	{
		$query = $this->db->get_where("payments", array("user_id" => $user_id));
		return $query->result_array();
	}

	function addPayment($payment)
	{
		$this->db->insert("payments", $payment);
	}

	function numberPaymentsByUserId($user_id)
	{
		$query = $this->db->get_where("payments", array("user_id" => $user_id));
		return $query->num_rows();
	}

	function getAllPaymentsWithoutVerify()
	{
		$this->db->where("status !=", "Conforme");
		$this->db->where("status !=", "No conforme");
		$query = $this->db->get("payments");
		return $query->result_array();
	}

	function changeStatus($paymentId, $status)
	{
		$this->db->where("id", $paymentId);
		$this->db->update("payments", array("status" => $status));
	}

	function getPayments($status)
	{
		$query = $this->db->get_where("payments", array("status" => $status));
		return $query->result_array();
	}

	function getAllPaymentsByUserId($user_id)
	{
		$this->db->where("user_id", $user_id);
		$query = $this->db->get("payments");
		return $query->result_array();
	}

	function addPaymentAssistan($payment)
	{
		$this->db->insert("paymentAssistans", $payment);
	}

	function getMyPaymentAssistant($assistant_id)
	{
		$this->db->where("assistant_id", $assistant_id);
		$query = $this->db->get("paymentAssistans");
		return $query->result_array();
	}

	function hasAPayment($assistant_id)
	{
		$query = $this->db->get_where("paymentAssistans", array("assistant_id" => $assistant_id));
		return $query->num_rows() != 0;
	}

}  

?>