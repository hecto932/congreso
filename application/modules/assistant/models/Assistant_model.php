<?php

class Assistant_model extends CI_Model
{
	function __construct()
	{
		parent::__construct();
	}

	//INSERTA UN NUEVO USUARIO EN LA BASE DE DATOS
	function createUser($user)
	{
		$this->db->insert('assistants', $user); 
	}

	//VERIFICA SI UN EMAIL EXISTE
	function existEmail($email)
	{
		$query = $this->db->get_where('assistants', array('email' => $email));
		return $query->num_rows() == 1;
	}

	//VERIFICA SI EXISTE ESA SESION
	function verifySession($data)
	{
		$query = $this->db->get_where('assistants',$data);
		return $query->num_rows() == 1;
	}

	//OBTENER UN USUARIO POR EMAIL
	function getUserDataByEmail($email)
	{
		$data = array(
			"email"	=> $email
		);

		$query = $this->db->get_where('assistants',$data);
		return $query->row();
	}

	function getUserSession($user_id)
	{
		$query = $this->db->get_where('assistants', array("id" => $user_id));
		return $query->row_array();
	}

	function noDuplicateEmail($user_id, $email)
	{
		$query = $this->db->get_where("assistants", array("id !=" => $user_id, "email" => $email) );
		return $query->num_rows() == 0;
	}

	function updateUser($user_id, $user)
	{
		$this->db->where("id", $user_id);
		$this->db->update("assistants", $user);
	}

	function noDuplicateCedula($user_id, $ci)
	{
		$query = $this->db->get_where("assistants", array("id !=" => $user_id, "ci" => $ci) );
		return $query->num_rows() == 0;
	}

	function isUniqueEmail($email)
	{
		$query = $this->db->get_where("assistants", array("email" => $email));
		return $query->num_rows() == 0;
	}

	function isUniqueCedula($ci)
	{
		$query = $this->db->get_where("assistants", array("ci" => $ci));
		return $query->num_rows() == 0;
	}

	function getFullName($user_id)
	{
		$query = $this->db->get_where('assistants', array("id" => $user_id));
		return $query->row()->name." ".$query->row()->lastName;
	}

	function getUserData($assistant_id)
	{
		$query = $this->db->get_where('assistants', array("id" => $assistant_id));
		return $query->row_array();
	}

	function getAllAssistants()
	{
		$this->db->order_by('lastName', 'ASC');
		$query = $this->db->get("assistants");
		return $query->result_array();
	}

}  

?>