<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class index extends CI_Controller{
	public function __construct()
	{   
		parent::__construct();
	}
	
	public function index() {
		$loginUrl	=	base_url()."admin/login";
		echo "Hello I am here";
		exit();
		header("Location: $loginUrl");
		}   			
}
