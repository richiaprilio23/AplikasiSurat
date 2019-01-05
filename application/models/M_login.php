<?php 
class M_login extends CI_Model {
	function __construct(){
        parent :: __construct();
    }
	function cek_login($table,$where){		
		return $this->db->get_where($table,$where);
	}
	function get_user($table){
		return $this->db->get($table);
	}
	function tambah_user($table, $data){
		$this->db->insert($table, $data);
	}
	function hapus_user($table, $where){
	$this->db->delete($table, $where);
	}
	function edit_user($table, $where){		
	return $this->db->get_where($table,$where);
	}
	function update_user($table, $data, $where){
		$this->db->update($table, $data, $where);
	}
	function edit_mhs($table, $where){		
	return $this->db->get_where($table,$where);
	}
	function update_mhs($table, $data, $where){
		$this->db->update($table, $data, $where);
	}
}
