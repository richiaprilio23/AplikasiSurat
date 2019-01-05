<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {
    public function __construct() {  
        parent::__construct();
    	if($this->session->userdata('status') == FALSE || $this->session->userdata('level') != 1 ){
			redirect(base_url("login"));
		} 
    }

	public function index(){
		$data['title']		='Dashboard | LPPM Ubhara Surabaya';
		
  
		$this->load->view('dashboard', $data);
	}
}
