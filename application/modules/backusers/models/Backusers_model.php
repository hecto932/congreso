<?php

class Backusers_model extends CI_Model
{
	function __construct()
	{
		parent::__construct();
	}

	//INSERTA UN NUEVO USUARIO EN LA BASE DE DATOS
	function createUser($user)
	{
		$this->db->insert('users', $user); 
	}

	//VERIFICA SI UN EMAIL EXISTE
	function existEmail($email)
	{
		$query = $this->db->get_where('users', array('email' => $email));
		return $query->num_rows() == 1;
	}

	//VERIFICA SI EXISTE ESA SESION
	function verifySession($data)
	{
		$query = $this->db->get_where('users',$data);
		return $query->num_rows() == 1;
	}

	//OBTENER UN USUARIO POR EMAIL
	function getUserDataByEmail($email)
	{
		$data = array(
			"email"	=> $email
		);

		$query = $this->db->get_where('backusers',$data);
		return $query->row();
	}

	function getUserSession($user_id)
	{
		$query = $this->db->get_where('users', array("id" => $user_id));
		return $query->row_array();
	}

	function getSessionUserData($backuser_id)
	{
		$query = $this->db->get_where("backusers", array( "id" => $backuser_id ));
		return $query->row_array();
	}

	function getNameRoleById($role_id)
	{
		$query = $this->db->get_where("roles", array("id" => $role_id) );
		return $query->row()->name;
	}

	function getRoleId($backuser_id)
	{
		$query = $this->db->get_where("backusers", array("id" => $backuser_id) );
		return $query->row()->role_id;
	}
}  

?>