<?php

class Users_model extends CI_Model
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

}  

?>