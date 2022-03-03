<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Members extends CI_Controller {
    
    function __construct() {
        parent::__construct();
        $this->check_isvalidated();
        
        // Load member model
        $this->load->model('admin/member_model');
        
        // Load form helper and library
        $this->load->helper('form');
        $this->load->library('form_validation');
        
        // Load pagination library
        $this->load->library('pagination');
        
        // Per page limit
        $this->perPage = 3;
    }
    private function check_isvalidated(){
        if(! $this->session->userdata('validated')){
            redirect('admin/login');
        }
    }   
        
    public function index(){
        $data = array();
        
        // Get messages from the session
        if($this->session->userdata('success_msg')){
            $data['success_msg'] = $this->session->userdata('success_msg');
            $this->session->unset_userdata('success_msg');
        }
        if($this->session->userdata('error_msg')){
            $data['error_msg'] = $this->session->userdata('error_msg');
            $this->session->unset_userdata('error_msg');
        }
        
        // If search request submitted
        if($this->input->post('submitSearch')){
            $inputKeywords = $this->input->post('searchKeyword');
            $searchKeyword = strip_tags($inputKeywords);
            if(!empty($searchKeyword)){
                $this->session->set_userdata('searchKeyword',$searchKeyword);
            }else{
                $this->session->unset_userdata('searchKeyword');
            }
        }elseif($this->input->post('submitSearchReset')){
            $this->session->unset_userdata('searchKeyword');
        }
        $data['searchKeyword'] = $this->session->userdata('searchKeyword');
        
        // Get rows count
        $conditions['searchKeyword'] = $data['searchKeyword'];
        $conditions['returnType']    = 'count';
        $rowsCount = $this->member_model->getRows($conditions);
        
        // Pagination config
        $config['base_url']    = base_url().'admin/members/index/';
        $config['uri_segment'] = 4;
        $config['total_rows']  = $rowsCount;
        $config['per_page']    = $this->perPage;
        
        
        $config['first_tag_open'] = $config['last_tag_open']= $config['next_tag_open']= $config['prev_tag_open'] = $config['num_tag_open'] = '<li>';
        $config['first_tag_close'] = $config['last_tag_close']= $config['next_tag_close']= $config['prev_tag_close'] = $config['num_tag_close'] = '</li>';
         
        $config['cur_tag_open'] = '<li style="padding: 0 14px;line-height: 34px;"><span><b>';
        $config['cur_tag_close'] = "</b></span></li>";
        
        // Initialize pagination library
        $this->pagination->initialize($config);
        
        // Define offset
        $page = $this->uri->segment(4);
        $offset = !$page?0:$page;
        
        // Get rows
        $conditions['returnType'] = '';
        $conditions['start'] = $offset;
        $conditions['limit'] = $this->perPage;
        $data['members'] = $this->member_model->getRows($conditions);
        $data['title'] = 'Members List';
        
        // Load the list page view
        //$this->load->view('templates/header', $data);
        
        //$this->load->view('templates/footer');
        $this->load->view('admin/header', $data);      
        $this->load->view('admin/sidebar');     
        $this->load->view('admin/members/index', $data);   
        $this->load->view('admin/footer');
    }

    public function view($id){
        $data = array();
        
        // Check whether member id is not empty
        if(!empty($id)){
            $data['member'] = $this->member_model->getRows(array('id' => $id));;
            $data['title']  = 'Member Details';
            
            // Load the details page view
            //$this->load->view('templates/header', $data);
            
            //$this->load->view('templates/footer');
            $this->load->view('admin/header', $data);      
        $this->load->view('admin/sidebar');     
        $this->load->view('admin/members/view', $data);   
        $this->load->view('admin/footer');
        }else{
            redirect('members');
        }
    }
    
    public function add(){
        $data = array();
        $memData = array();
        
        // If add request is submitted
        if($this->input->post('memSubmit')){
            // Form field validation rules
            $this->form_validation->set_rules('first_name', 'first name', 'required');
            $this->form_validation->set_rules('last_name', 'last name', 'required');
            $this->form_validation->set_rules('email', 'email', 'required|valid_email');
            $this->form_validation->set_rules('gender', 'gender', 'required');
            $this->form_validation->set_rules('country', 'country', 'required');
            
            // Prepare member data
            $memData = array(
                'first_name'=> $this->input->post('first_name'),
                'last_name' => $this->input->post('last_name'),
                'email'     => $this->input->post('email'),
                'gender'    => $this->input->post('gender'),
                'country'   => $this->input->post('country')
            );
            
            // Validate submitted form data
            if($this->form_validation->run() == true){
                // Insert member data
                $insert = $this->member_model->insert($memData);

                if($insert){
                    $this->session->set_userdata('success_msg', 'Member has been added successfully.');
                    redirect('members');
                }else{
                    $data['error_msg'] = 'Some problems occured, please try again.';
                }
            }
        }
        
        $data['member'] = $memData;
        $data['title'] = 'Add Member';
        
        // Load the add page view
        //$this->load->view('templates/header', $data);
        $this->load->view('admin/header', $data);      
        $this->load->view('admin/sidebar');     
        $this->load->view('admin/members/add-edit', $data);     
        $this->load->view('admin/footer');
        
        //$this->load->view('templates/footer');
    }
    
    public function edit($id){
        $data = array();
        
        // Get member data
        $memData = $this->member_model->getRows(array('id' => $id));
        
        // If update request is submitted
        if($this->input->post('memSubmit')){ 
            // Form field validation rules
            $this->form_validation->set_rules('first_name', 'first name', 'required');
            $this->form_validation->set_rules('last_name', 'last name', 'required');
            $this->form_validation->set_rules('phonenumber', 'Phone number', 'required|max_length[100]');
           $this->form_validation->set_rules('dateofbirth', 'Date of birth', 'required|max_length[10]');
            //$this->form_validation->set_rules('email', 'email', 'required|valid_email');
            $this->form_validation->set_rules('country', 'Country', 'required|max_length[10]');
        $this->form_validation->set_rules('rdbsubscription', 'Subscription For (either of type: story, comment, poll)', 'required');
            
            // Prepare member data
            $memData = array(
                'firstname'=> $this->input->post('first_name'),
                'lastname' => $this->input->post('last_name'),
                'phonenumber' => $this->input->post('phonenumber'),
                 'dateofbirth' => $this->input->post('dateofbirth'),
                //'email'     => $this->input->post('email'),
                'country'   => $this->input->post('country'),
                'subscription'   => $this->input->post('rdbsubscription')
            );
            
            // Validate submitted form data
            if($this->form_validation->run() == true){
                // Update member data
                $update = $this->member_model->update($memData, $id);

                if($update){
                    $this->session->set_userdata('success_msg', 'Member has been updated successfully.');
                    redirect('admin/members');
                }else{
                    $data['error_msg'] = 'Some problems occured, please try again.';
                }
            }
        }

        $data['member'] = $memData;
        $data['title'] = 'Update Member';
        $this->load->view('admin/header', $data);      
        $this->load->view('admin/sidebar');     
        $this->load->view('admin/members/add-edit', $data);     
        $this->load->view('admin/footer');
        // Load the edit page view
        //$this->load->view('templates/header', $data);
        
        //$this->load->view('templates/footer');
    }
    
    public function delete($id){
        // Check whether member id is not empty
        if($id){
            // Delete member
            $delete = $this->member_model->delete($id);
            
            if($delete){
                $this->session->set_userdata('success_msg', 'Member has been removed successfully.');
            }else{
                $this->session->set_userdata('error_msg', 'Some problems occured, please try again.');
            }
        }
        
        // Redirect to the list page
        redirect('admin/members');
    }
}