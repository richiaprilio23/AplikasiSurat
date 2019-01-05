<?php
class M_background extends CI_Model {

  function __construct() {
      parent::__construct();
  }

  var $table = 'tbl_background';
  //fungsi untuk menampilkan semua data dari tabel database
	function get_background() {
        return $this->db->get($this->table);
	}
  public function get_by_id($id){
    return $this->db->get_where($this->table,$id);
  }
  public function background_add($data){
		$this->db->insert($this->table, $data);
		return $this->db->insert_id();
	}

	public function background_update($where, $data){
		$this->db->update($this->table, $data, $where);
		return $this->db->affected_rows();
	}

	public function delete_by_id($id){
		$this->db->where('id_background', $id);
		$this->db->delete($this->table);
	}
}
