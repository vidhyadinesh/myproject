<?php

class Admin_Model extends CI_Model {
	
	function __construct(){
		parent::__construct();
		$this->load->database();
	}
	
	function listTblAdmin(){	
		$sql='SELECT admin_id
					,admin_name
					,admin_email
					,admin_password
					,admin_role
					
					FROM
						admin WHERE 1=1 ';
			                  
			
			 	if($this->isPropertySet('admin_id'))
					$sql.=" AND admin_id='".$this->getProperty('admin_id')."'";
				
			 	if($this->isPropertySet('admin_name'))
					$sql.=" AND admin_name='".$this->getProperty('admin_name')."'";
				
			 	if($this->isPropertySet('admin_email'))
					$sql.=" AND admin_email='".$this->getProperty('admin_email')."'";
				
			 	if($this->isPropertySet('admin_password'))
					$sql.=" AND admin_password='".$this->getProperty('admin_password')."'";
				
			 	if($this->isPropertySet('admin_role'))
					$sql.=" AND admin_role='".$this->getProperty('admin_role')."'";
				
echo $sql;
			return $this->dbFetchArray($sql);
			

	}
	
	function fnTblAdmin($mode="I"){	
		$data['admin_name']=$this->getProperty('admin_name');
		$data['admin_email']=$this->getProperty('admin_email');
		$data['admin_password']=$this->getProperty('admin_password');
		$data['admin_role']=$this->getProperty('admin_role');
	
		if($mode=="I"){
    			return $this->db->insert('admin',$data);
    	       
   		}
	    	else if ($mode=="U"){            
	    		$where_arr['admin_id']=$this->getProperty('admin_id');
	        	$this->db->where($where_arr);
			return $this->db->update('admin',$data);	    
	 	}
	    	else if($mode=="D"){
			$where_arr['admin_id']=$this->getProperty('admin_id');
	        	$this->db->where($where_arr);
			return $this->db->delete('admin');	    	    
	    	}
			    		
	}
	
	 public function validate(){
        // grab user input
        $username = $this->security->xss_clean($this->input->post('user_email'));
        $password = $this->security->xss_clean($this->input->post('user_pass'));
        
        // Prep the query
        //$this->db->where('admin_email', $username);
        //$this->db->where('admin_password', $password);
        
        // Run the query
        //$query = $this->db->get('admin'); echo $query->num_rows;die();
        $query = $this->db->get_where('admin',array('admin_email'=>$username,'admin_password'=>$password));
		$num_rows=$query->num_rows();
        // Let's check if there are any results
        if($num_rows == 1)
        {
            // If there is a user, then create session data
            $row = $query->row_array();
            $data = array(
                    'adminid' => $row['admin_id'],
                    'aname' => $row['admin_name'],
                    'aemail' => $row['admin_email'],                   
                    'validated' => true
                    );
            $this->session->set_userdata($data);
            return true;
        }
        // If the previous process did not validate
        // then return false.
        return false;
    }
	
}

?>
