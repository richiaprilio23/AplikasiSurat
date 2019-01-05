<?php
class M_kontak extends CI_Model {

	function __construct() {
		parent::__construct();
	}
  	//fungsi untuk menampilkan semua data dari tabel database
	function get_where($table,$where) {
        return $this->db->get_where($table,$where);
	}
	
	public function update($table, $data, $where){
		$this->db->update($table, $data, $where);
	}
}
