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
}  

?>