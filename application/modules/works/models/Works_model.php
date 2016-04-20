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

	function getWorksByUserId($user_id)
	{
		$query = $this->db->get_where("works", array("user_id" => $user_id));
		return $query->result_array();
	}
	function getAreaName($area_id)
	{
		$query = $this->db->get_where("areas", array("id" => $area_id));
		return $query->row()->name;
	}

	function getTitleWork($work_id)
	{
		$query = $this->db->get_where("works", array("id" => $work_id));
		return $query->row()->title;
	}

	function getAllWorksWithOutPayment($user_id)
	{
		$query = $this->db->query("SELECT w.* FROM works w LEFT JOIN payments p ON w.id = p.work_id WHERE p.work_id IS NULL");
		return $query->result_array();
	}

	function numberWorksByUserId($user_id)
	{
		$query = $this->db->get_where("works", array("user_id" => $user_id));
		return $query->num_rows();
	}

	function getWorkById($work_id)
	{
		$query = $this->db->get_where("works", array("id" => $work_id));
		return $query->row_array();
	}

	function getFilesWork($work_id)
	{
		$query = $this->db->get_where("files", array("work_id" => $work_id));
		return $query->result_array();
	}

	function getNumberWorks($user_id)
	{
		$query = $this->db->get_where("works", array("user_id" => $user_id));
		return $query->num_rows();
	}

	function isUniqueTitle($title)
	{
		$query = $this->db->get_where("works", array("title" => $title));
		return $query->num_rows() == 0;
	}

	function getWorks($campus, $status)
	{
		$query = $this->db->get_where("works", array("campus" => $campus, "status" => $status, "modality !=" => "Simposios"));
		return $query->result_array();
	}

	function changeStatus($workId, $status)
	{
		$this->db->where("id", $workId);
		$this->db->update("works", array("status" => $status));
	}

	function getWorksAdmin($status)
	{
		$query = $this->db->get_where("works", array("status" => $status, "modality !=" => "Simposios"));
		return $query->result_array();
	}

	function getSimposios($data)
	{
		$query = $this->db->get_where("works", $data);
		return $query->result_array();
	}

	function getAllWorksByUserId($user_id)
	{
		$this->db->where("user_id", $user_id);
		$query = $this->db->get("works");
		return $query->result_array();
	}
}  

?>