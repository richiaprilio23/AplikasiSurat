<?php
class M_alumni extends CI_Model {

    function __construct() {
        parent::__construct();
    }
    var $table = 'tbl_mahasiswa';
    function get_mahasiswa($table,$where){
    	return $this->db->get_where($table,$where);
    }

    function simpan_mahasiswa($table,$data){
    	$this->db->insert($table,$data);
    }

    function detail_mahasiswa($table,$where){
    	return $this->db->get_where($table,$where);
    }

    public function get_by_id($id){
      return $this->db->get_where($this->table,$id);
    }

    public function alumni_update($where, $data){
  		$this->db->update($this->table, $data, $where);
  		return $this->db->affected_rows();
  	}

    public function delete_by_id($id){
  		$this->db->where('id_mahasiswa', $id);
  		$this->db->delete($this->table);
  	}

    public function get_detail_prestasi($table, $where){
  		return $this->db->get_where($table, $where);
  	}

    public function get_detail_peradilan($table, $where){
  		return $this->db->get_where($table, $where);
  	}

    public function get_detail_mou($table, $where){
  		return $this->db->get_where($table, $where);
  	}

    public function get_detail_khs($table, $where){
      return $this->db->get_where($table, $where);
    }

    public function get_detail_krs($table, $where){
      return $this->db->get_where($table, $where);
    }

    public function get_detail_spp($table, $where){
      return $this->db->get_where($table, $where);
    }
}
