<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {
	function __construct(){
        parent :: __construct(); 
        $this->load->model('M_login');
        $this->load->model('M_kontak');  
				$this->load->model('M_background');
    }

	function index(){
		$data['title']		='LPPM | Ubhara Surabaya';
		$data['content']	='login';
		$data['kontak']	= $this->M_kontak->get_where('tbl_kontak',array('id_kontak'=>1));
		$data['get_bg'] = $this->M_background->get_by_id(array('kategori_background'=>0));

		$this->load->view('theme/utama2', $data);
	}

	function login_form(){
		$username = $this->input->post('username');
		$password = $this->input->post('password');

		$where1 = array(
			'username' => $username,
			'password' => $password
			);
		$cek1 = $this->M_login->cek_login("tbl_user",$where1);

		if($cek1->num_rows() > 0){
			$data_session = array( 
				'status' 	=> true,
				'level' 	=> 1
			);

			$this->session->set_userdata($data_session);
			redirect(base_url("admin/Home"));
		}
		else{
			redirect(base_url('login'));
		}
	}


	function logout(){
		$this->session->sess_destroy();
		redirect(base_url('login'));
	}
}