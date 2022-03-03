<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends CI_Controller {

	function __construct(){
		parent::__construct();
		$this->load->model('users_model');
		$this->load->helper(array('form'));
        $this->load->library('form_validation');
        $this->load->library('session');

        //get all users
        $this->data['users'] = $this->users_model->getAllUsers();
	}

	public function index(){
		$this->load->view('register', $this->data);
	}

	public function register(){
		$this->form_validation->set_rules('firstname', 'First name', 'required|max_length[100]');
		$this->form_validation->set_rules('lastname', 'Last name', 'required|max_length[100]');
		$this->form_validation->set_rules('phonenumber', 'Phone number', 'required|max_length[100]');
		$this->form_validation->set_rules('dateofbirth', 'Date of birth', 'required|max_length[10]');
		$this->form_validation->set_rules('email', 'Email', 'valid_email|required');
        $this->form_validation->set_rules('password', 'Password', 'required|min_length[7]|max_length[30]');
        $this->form_validation->set_rules('password_confirm', 'Confirm Password', 'required|matches[password]');
        $this->form_validation->set_rules('country', 'Country', 'required|max_length[10]');
        $this->form_validation->set_rules('rdbsubscription', 'Subscription For (either of type: story, comment, poll)', 'required');
        if ($this->form_validation->run() == FALSE) { 
         	$this->load->view('register', $this->data);
		}
		else{
			//get user inputs
			$firstname = $this->input->post('firstname');
			$lastname = $this->input->post('lastname');
			$phonenumber = $this->input->post('phonenumber');
			$dateofbirth = $this->input->post('dateofbirth');
			$email = $this->input->post('email');
			$password = $this->input->post('password');
			$country = $this->input->post('country');
			$rdbsubscription = $this->input->post('rdbsubscription');

			//generate simple random code
			$set = '123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
			$code = substr(str_shuffle($set), 0, 12);

			//insert user to users table and get id
			$user['firstname'] = $firstname;
			$user['lastname'] = $lastname;
			$user['phonenumber'] = $phonenumber;
			$user['dateofbirth'] = $dateofbirth;	
			$user['email'] = $email;
			$user['password'] = $password;
			$user['country'] = $country;
			$user['subscription'] = $rdbsubscription;
			$user['code'] = $code;
			$user['active'] = false;
			$user['created']=date("Y-m-d H:i:s");
			$id = $this->users_model->insert($user);

			//set up email
			$config = array(
		  		'protocol' => 'mail',
		  		'smtp_host' => 'smtp.gmail.com',
		  		'smtp_port' => 465,
		  		'smtp_user' => 'vidhyadinesh2010@gmail.com', // change it to yours
		  		'smtp_pass' => 'vidhya2010', // change it to yours
		  		'mailtype' => 'html',
		  		'wordwrap' => TRUE
			);

			$message = 	"
						<html>
						<head>
							<title>Verification Code</title>
						</head>
						<body>
							<h2>Thank you for Registering.</h2>
							<p>Your Account:</p>
							<p>Email: ".$email."</p>
							<p>Password: ".$password."</p>
							<p>Please click the link below to activate your account.</p>
							<h4><a href='".base_url()."user/activate/".$id."/".$code."'>Activate My Account</a></h4>
						</body>
						</html>
						";
	 		
		    $this->load->library('email', $config);
		    $this->email->set_newline("\r\n");
		    $this->email->from($config['smtp_user']);
		    $this->email->to($email);
		    $this->email->subject('Signup Verification Email');
		    $this->email->message($message);

		    //sending email
		    if($this->email->send()){
		    	$this->session->set_flashdata('message','Activation code sent to email');
		    }
		    else{
		    	$this->session->set_flashdata('message', $this->email->print_debugger());
	 
		    }

        	redirect('register');
		}

	}

	public function activate(){
		$id =  $this->uri->segment(3);
		$code = $this->uri->segment(4);

		//fetch user details
		$user = $this->users_model->getUser($id);

		//if code matches
		if($user['code'] == $code){
			//update user active status
			$data['active'] = true;
			$query = $this->users_model->activate($data, $id);
			
	        /* Endpoint */
	        $url = 'https://hn.algolia.com/api/v1/search?tags='.$user['subscription'];
	    
	        /* eCurl */
	        $curl = curl_init($url);
	             
	        /* Define content type */
	        curl_setopt($curl, CURLOPT_HTTPHEADER, array('Content-Type:application/json'));
	             
	        /* Return json */
	        curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
	             
	        /* make request */
	        $result = curl_exec($curl);
	              
	        /* close curl */
	        curl_close($curl);
	         // Prepare member data
            $memData = array(
                'subscriptioncontent'=> $result
            );
            
            // Update member data
            $update = $this->users_model->update($memData, $id);


			if($query){
				$this->session->set_flashdata('message', 'User activated successfully');
			}
			else{
				$this->session->set_flashdata('message', 'Something went wrong in activating account');
			}
		}
		else{
			$this->session->set_flashdata('message', 'Cannot activate account. Code didnt match');
		}

		redirect('register');

	}

	public function login(){
		
		$this->form_validation->set_rules('email', 'Email', 'valid_email|required');
        $this->form_validation->set_rules('password', 'Password', 'required|min_length[7]|max_length[30]');        
        if ($this->form_validation->run() == FALSE) { 
         	$this->load->view('login', $this->data);
		}
		else{
			//get user inputs
			
			$email = $this->input->post('email');
			$password = $this->input->post('password');
			
            $user = $this->users_model->getUserData(array('email'=>$email,'password'=>$password));
            
                        $data = array(
                    'id' =>$user['id'],
                    'email' =>$user['email'],
                    'firstname' => $user['firstname'],
                    'lastname' => $user['lastname'],                   
                    'validated' => true
                    );
            $this->session->set_userdata($data);

		    
        	redirect('user/home');
		}

	}

	public function home(){
		$this->check_isvalidated();
		  
        
         $user = $this->users_model->getUserData(array('id'=>$this->session->userdata('id')));
       
        $this->data['subscriptioncontent']=json_decode($user['subscriptioncontent']);

        
        
        
        
        $this->data['subscriptioncontent'] = $this->data['subscriptioncontent'];
        $this->data['title'] = 'Subscriptions';
        	$this->load->view('header', $this->data);
        	$this->load->view('sidebar', $this->data);
         	$this->load->view('home', $this->data);
         	$this->load->view('footer', $this->data);
		
		

	}
    private function check_isvalidated(){
        if(! $this->session->userdata('validated')){
            redirect('user/login');
        }
    }  
	function logout() {
		$loginPath	=	base_url()."user/login";
		$this->session->sess_destroy();
		//printpre($this->session);
		redirect("$loginPath");	
	}	
    


}
