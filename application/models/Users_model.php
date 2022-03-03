<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Users_model extends CI_Model {

	function __construct(){
		parent::__construct();
		$this->load->database();
	}

	public function getAllUsers(){
		$query = $this->db->get('members');
		return $query->result(); 
	}

	public function insert($user){
		$this->db->insert('members', $user);
		return $this->db->insert_id(); 
	}

	public function getUser($id){
		$query = $this->db->get_where('members',array('id'=>$id));
		return $query->row_array();
	}

	public function activate($data, $id){
		$this->db->where('members.id', $id);
		return $this->db->update('members', $data);
	}

	public function getUserData($data=array()){
		$query = $this->db->get_where('members',$data);
		return $query->row_array();
	}

	/*
     * Update member data into the database
     * @param $data array to be update based on the passed parameters
     * @param $id num filter data
     */
    public function update($data, $id) {
        if(!empty($data) && !empty($id)){
            // Add modified date if not included
            if(!array_key_exists("modified", $data)){
                $data['modified'] = date("Y-m-d H:i:s");
            }
            
            // Update member data
            $update = $this->db->update('members', $data, array('id' => $id));
            
            // Return the status
            return $update?true:false;
        }
        return false;
    }

}
