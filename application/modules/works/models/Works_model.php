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

	function addWork($work)
	{
		$this->db->insert("works", $work);
	}

	function newAttachment($data)
	{
		$this->db->insert("files", $data);
	}

	function getWorkByTitle($title)
	{
		$query = $this->db->get_where("works", array("title" => $title));
		return $query->row_array();
	}

}  

?>