<?php 
class M_master_surat extends CI_Model {
	function __construct(){
        parent :: __construct();
    }
    //---Start model surat keluar---//
	function cek_ketersediaan($table,$where){		
		return $this->db->get_where($table,$where);
	}
	
	function get_surat_beasiswa($table,$where){		//GET SURAT PERMOHONAN DANA
		return $this->db->get_where($table,$where);
	}

	function get_master_surat($table,$where){		//GET master SURAT
		return $this->db->get_where($table,$where);
	}
	
	function get_kategori_surat($table,$where){
		return $this->db->get_where($table,$where);
	}
	
	function get_last_no_surat(){
		$query ="SELECT id_surat_keluar FROM tbl_surat_keluar ";
		return $this->db->query($query);
	}
	
	function insert_surat_keluar($table,$datasend){
		$this->db->insert($table,$datasend);
	}
	
	function getSuratKeluar($table,$where){
		return $this->db->get_where($table,$where);
	}

	function getMasterKeluar($table,$where){		//MASTER SURAT KELUAR
		return $this->db->get_where($table,$where);
	}
	
	function update_surat_keluar($table,$datasend,$id){
		$this->db->update($table,$datasend,$id);
	}
	
	function delete_surat_keluar($table,$where){
		$this->db->delete($table,$where);
	}

	function update_master_surat($table,$datasend,$where){
		$this->db->update($table,$datasend,$where);
	}
	//---End model surat keluar---//
	
	//---Start model surat masuk---//
	function get_surat_masuk($table){
		return $this->db->get($table);
	}
	
	function select_surat_masuk($table,$id){
		return $this->db->get_where($table,$id);
	}
	
	function no_surat_masuk(){
		$query ="SELECT id_surat_masuk FROM tbl_surat_masuk ";
		return $this->db->query($query); //tambah_surat
	}
	
	function insert_surat_masuk($table,$datasend){
		$this->db->insert($table,$datasend);
	}
	
	function update_surat_masuk($table,$datasend,$where){
		$this->db->update($table,$datasend,$where);
	}
	
	function delete_surat_masuk($table,$where){
		$this->db->delete($table,$where);
	}
	//---End model surat masuk---//
}