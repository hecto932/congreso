<?php

class Works_model extends CI_Model
{
	function __construct()
	{
		parent::__construct();
	}

	function getAllAreas()
	{
		$query = $this->db->get('areas');
		return $query->result_array();
	}

}  

?>