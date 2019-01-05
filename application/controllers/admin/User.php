<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends CI_Controller {
	public function __construct() {
        parent::__construct();
//		if($this->session->userdata('status') == FALSE || $this->session->userdata('level') != 1 ){
//			redirect(base_url("login"));
//		}
        $this->load->model('M_alumni'); 
        $this->load->model('M_login');
    }

    public function index(){
    	$data['title']		='LPPM | Ubhara Surabaya';
		$data['content']	='a_content/user';
		$data['judul']		='User Management';

		$data['get_mhs']	= $this->M_alumni->get_mahasiswa('tbl_mahasiswa',array('status_mahasiswa'=>1));		
		$data['get_alm']	= $this->M_alumni->get_mahasiswa('tbl_mahasiswa',array('status_mahasiswa'=>0));	
		$data['get_admin']	= $this->M_login->get_user('tbl_user');		
		$this->load->view('theme/admin', $data);
    }

    public function simpan_admin(){
    	$password 					= $this->input->post('password');
    	$username 					= $this->input->post('username');
    	$data = array(
			'password' => $password,
			'username' => $username,
			);
		$this->M_login->tambah_user('tbl_user',$data);
		redirect('admin/user/');
	}
	
	public function hapus_admin($id){
		$where = array('id_user' => $id);
		$this->M_login->hapus_user('tbl_user',$where);
		redirect('admin/user/');
	}
    
	function edit_admin($id){
		$data['title']		='LPPM | Ubhara Surabaya';
		$data['content']	='a_content/edit_user_admin';
		$data['judul']		='User Manajemen';

		$where = array('id_user' => $id);
		$data['user'] = $this->M_login->edit_user('tbl_user',$where);
		
		$this->load->view('theme/admin',$data);
	}

	function update_admin($id){
		$password = $this->input->post('password');
		$username = $this->input->post('username');
		
		$data = array(
			'username' => $username,
			'password' => $password
		);

		$where = array(
			'id_user' => $id
		);

		$this->M_login->update_user('tbl_user',$data,$where);
		redirect('admin/user');
	}

	function edit_mhs($id){
		$data['title']		='LPPM | Ubhara Surabaya';
		$data['content']	='a_content/edit_user_mhs';
		$data['judul']		='User Manajemen';

		$where = array('id_mahasiswa' => $id);
		$data['user'] = $this->M_login->edit_mhs('tbl_mahasiswa',$where);
		
		$this->load->view('theme/admin',$data);
	}

	function update_mhs($id){
		$password = $this->input->post('password');
		$username = $this->input->post('username');
		
		$data = array(
			'nim_mahasiswa' => $username,
			'password_mahasiswa' => $password
		);

		$where = array(
			'id_mahasiswa' => $id
		);

		$this->M_login->update_mhs('tbl_mahasiswa',$data,$where);
		redirect('admin/user');
	}
}