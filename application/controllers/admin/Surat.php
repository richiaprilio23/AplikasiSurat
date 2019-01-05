<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Surat extends CI_Controller {
	public function __construct() {
        parent::__construct();
		if($this->session->userdata('status') == FALSE || $this->session->userdata('level') != 1 ){
			redirect(base_url("login"));
		} 
        $this->load->helper('date');
        $this->load->library(array('ckeditor')); //library ckeditor
        $this->load->model("M_master_surat"); 
        $this->load->library('Pdf');
    }
 
    function editor() {
    //configure base path of ckeditor folder
    $this->ckeditor->basePath = base_url().'plugins/ckeditor/';
    $this->ckeditor-> config['toolbar'] = 'Full';
    $this->ckeditor->config['language'] = 'en';
    $this->ckeditor-> config['width'] = 800;
    $this->ckeditor-> config['height'] = 500;
  	}

  	public function surat_keluar_r()
	{
		$data['title']		='LPPM | Ubhara Surabaya';
		$data['content']	='a_content/surat_keluar_r';
		$data['judul']		='Daftar Surat Keluar (Rektorat)';
		
		$where1 = array('kop_surat' => 1);
		$data['kategori_surat']= $this->M_master_surat->get_kategori_surat('tbl_master_surat',$where1);
		
		$where2 = array('keterangan_surat_keluar' => 1);
		$data['getsurat']	= $this->M_master_surat->getSuratKeluar('tbl_surat_keluar',$where2);
		
		$this->load->view('theme/admin', $data);
	} 

									// START MASTER SURAT

	public function master_surat()
	{
		$data['title']		='LPPM | Ubhara Surabaya';
		$data['content']	='a_content/master_surat';
		$data['judul']		='Management Master Surat';
		
		$where1 = array('kop_surat');
		$data['master_surat']= $this->M_master_surat->get_kategori_surat('tbl_master_surat',$where1);
		
		$where2 = array('kop_surat');
		$data['getsurat']	= $this->M_master_surat->getSuratKeluar('tbl_master_surat',$where2);

		$this->load->view('theme/admin', $data);
	}

	public function update_master_keluar($id){
		$data['title']		='Update Master | LPPM Ubhara Surabaya';
		$data['judul']		='Preview Update Master';

		$where = array('id_surat' => $id);
		$data['isi_surat'] 	= $this->M_master_surat->getMasterKeluar('tbl_master_surat',$where);
 
		foreach ($data['isi_surat']->result() as $row) {
			$format = $row->kop_surat;
		}

		if( $format == 3 ){
			$data['content']	='a_content/update_master_rk_nrk';
		}else{
			$data['content']	='a_content/update_master_internal';
		} 
		
		$this->editor();
		$this->load->view('theme/admin', $data);
	}

	public function form_master_surat($id){ 			//create new master
		$data['title']		='Tambah Master LPPM | Ubhara Surabaya';
		$data['judul']		='Tambah Master Surat'; 
		
		
		$data['content']	='a_content/form_master_rk_nrk';
		
		$data['no_surat']	= $this->M_master_surat->get_last_no_surat();
		$this->editor();
		
		$this->load->view('theme/admin', $data);
	}

	public function proses_update_master_surat($id){
       	$isi_master 				= $this->input->post('isi_surat');
       	$master						= $this->input->post('lampiran');
     
       	$datasend = array(
	       	'isi_surat'					=> $isi_master,
	       	'nama_surat'				=> $master,
       	);
		$this->M_master_surat->update_master_surat('tbl_master_surat',$datasend,array('id_surat'=>$id));
		redirect('admin/surat/master_surat/');
	}

	public function proses_tambah_form_master(){
       	$isi_master 				= $this->input->post('isi_form');
       	$master						= $this->input->post('nama_master');
     	$JenisSurat 				= $this->input->post('master');
 
       	$datasend = array(
	       	'isi_surat'					=> $isi_master,
	       	'nama_surat'				=> $master,
	       	'kop_surat'					=> $JenisSurat,
       	);
		$this->M_master_surat->insert_surat_keluar('tbl_master_surat',$datasend);
		redirect('admin/surat/master_surat/');
	}

	public function delete_master($id){

		$this->M_master_surat->delete_surat_keluar('tbl_master_surat', array('id_surat'=>$id));
		
		redirect('admin/surat/master_surat/');
	}

								// END MASTER SURAT

  	  
	public function surat_keluar_nr()
	{
		$data['title']		='LPPM | Ubhara Surabaya';
		$data['content']	='a_content/surat_keluar_nr';
		$data['judul']		='Daftar Surat Keluar (Non Rektorat)';
		
		$where1 = array('kop_surat' => 1);
		$data['kategori_surat']= $this->M_master_surat->get_kategori_surat('tbl_master_surat',$where1);
		
		$where2 = array('keterangan_surat_keluar' => 2);
		$data['getsurat']	= $this->M_master_surat->getSuratKeluar('tbl_surat_keluar',$where2);

		$this->load->view('theme/admin', $data);
	} 
	 
	public function surat_internal()
	{
		$data['title']		='LPPM | Ubhara Surabaya';
		$data['content']	='a_content/surat_internal';
		$data['judul']		='Daftar Surat Internal';
		
		$where1 = array('kop_surat' => 2);
		$data['kategori_surat']= $this->M_master_surat->get_kategori_surat('tbl_master_surat',$where1);
		
		$where2 = array('keterangan_surat_keluar' => 3);
		$data['getsurat']	= $this->M_master_surat->getSuratKeluar('tbl_surat_keluar',$where2);

		$this->load->view('theme/admin', $data);
	}

	
	//---Start GET Surat---//
	public function form_surat($id){
		$data['title']		='LPPM | Ubhara Surabaya';
		$data['judul']		='Form Surat'; 
		
		$table	= 'tbl_master_surat';
		$where	= array('id_surat' => $id);
		$data['isi_surat']	= $this->M_master_surat->get_surat_beasiswa($table,$where);
		
		foreach ($data['isi_surat']->result() as $row){
			$keterangan = $row->kop_surat;
		}
		if($keterangan == 1){
			$data['content']	='a_content/form_surat';
		}else{
			$data['content']	='a_content/form_surat_skep';
		}
		 
		$data['no_surat']	= $this->M_master_surat->get_last_no_surat();
		$this->editor(); 
		
		$this->load->view('theme/admin', $data);
	}
	//---End GET Surat---//

	//---Start Print Surat---//
	public function print_surat(){
		$data['title']		='LPPM | Ubhara Surabaya';
		$data['judul']		='Preview Form Surat';
		
		$no0	= $this->input->post('kode_skep');
		$no1	= $this->input->post('no_urut');
		$no2	= $this->input->post('fakultas');
		$no3	= $this->input->post('bulan');
		$no4	= $this->input->post('tahun');
		$no5	= $this->input->post('universitas');
		
		$tanggal = explode('-',$this->input->post('tanggal'));
		$kat			= $this->input->post('kategori');
		
		if (empty($kat)){
			$kategori = 3;
			$data['content']	='a_content/print_surat_skep';
			if(empty($no0)){
				$data['id_surat']	= $no1."/".$no2."/".$no3."/".$no4."/".$no5;
			}else{
				$data['id_surat']	= $no0."/".$no1."/".$no2."/".$no3."/".$no4."/".$no5;
			}
		}else{
			$kategori = $kat;
			$data['content']	='a_content/print_surat';
			$data['id_surat']	= $no1."/".$no2."/".$no3."/".$no4."/".$no5;
		}

		$data['tempat']		= $this->input->post('tempat');
		$data['tanggal']	= $tanggal[2].'-'.$tanggal[1].'-'.$tanggal[0];
		$data['tanggal2']	= $this->input->post('tanggal2');
		$data['lampiran']	= $this->input->post('lampiran'); 
		$data['perihal']	= $this->input->post('perihal');
		$data['tujuan']		= $this->input->post('tujuan');
		$data['isi_surat']	= $this->input->post('isi_surat');
		$data['keterangan'] = $kategori;
		
		$datasend = array(
			'id_surat_keluar' 			=> $no1,
			'no_surat_keluar' 			=> $data['id_surat'],
			'alamat_surat_keluar'		=> $data['tujuan'],
			'tanggal_surat_keluar'		=> $data['tanggal'],
			'perihal_surat_keluar'		=> $data['perihal'],
			'isi_surat_keluar'			=> $data['isi_surat'],
			'tempat_surat'				=> $data['tempat'],
			'keterangan_surat_keluar'	=> $data['keterangan'],
			'lampiran_surat_keluar'		=> $data['lampiran']
		);
		
		$where = array('id_surat_keluar' => $no1);
		$cek = $this->M_master_surat->cek_ketersediaan('tbl_surat_keluar', $where)->num_rows();
		if($cek == 0){
			$this->M_master_surat->insert_surat_keluar('tbl_surat_keluar',$datasend);
		}
		
		$this->load->view('theme/admin', $data);
	}

	//---End Print Surat---// 

	//---Start Update Function---//
	public function update_surat_keluar($id){
		$data['title']		='LPPM | Ubhara Surabaya';
		$data['judul']		='Preview Update Surat';

		$where = array('id_surat_keluar' => $id);
		$data['isi_surat'] 	= $this->M_master_surat->getSuratKeluar('tbl_surat_keluar',$where);

		foreach ($data['isi_surat']->result() as $row) {
			$format = $row->keterangan_surat_keluar;
		}

		if( $format == 3 ){
			$data['content']	='a_content/update_surat_skep';
		}else{
			$data['content']	='a_content/update_surat';
		}
		
		$this->editor();
		$this->load->view('theme/admin', $data);
	}


	//---End Update Function---//
	
	//---Start Update Print Surat---//
	public function update_print_surat($id){
		$data['title']		='LPPM | Ubhara Surabaya';
		$data['judul']		='Preview Form Surat';
		
		$no0	= $this->input->post('kode_skep');
		$no1	= $this->input->post('no_urut');
		$no2	= $this->input->post('fakultas');
		$no3	= $this->input->post('bulan');
		$no4	= $this->input->post('tahun');
		$no5	= $this->input->post('universitas');
		
		$tanggal = explode('-',$this->input->post('tanggal'));
		$kat			= $this->input->post('kategori');
		
		if (empty($kat)){
			$kategori = 3;
			$data['content']	='a_content/print_surat_skep';
			if(empty($no0)){
				$data['id_surat']	= $no1."/".$no2."/".$no3."/".$no4."/".$no5;
			}else{
				$data['id_surat']	= $no0."/".$no1."/".$no2."/".$no3."/".$no4."/".$no5;
			}
		}else{
			$kategori = $kat;
			$data['content']	='a_content/print_surat';
			$data['id_surat']	= $no1."/".$no2."/".$no3."/".$no4."/".$no5;
		}

		$data['tempat']		= $this->input->post('tempat');
		$data['tanggal']	= $tanggal[2].'-'.$tanggal[1].'-'.$tanggal[0];
		$data['tanggal2']	= $this->input->post('tanggal2');
		$data['lampiran']	= $this->input->post('lampiran'); 
		$data['perihal']	= $this->input->post('perihal');
		$data['tujuan']		= $this->input->post('tujuan');
		$data['isi_surat']	= $this->input->post('isi_surat');
		$data['keterangan'] = $kategori;
		
		$datasend = array(
			'id_surat_keluar' 			=> $no1,
			'no_surat_keluar' 			=> $data['id_surat'],
			'alamat_surat_keluar'		=> $data['tujuan'],
			'tanggal_surat_keluar'		=> $data['tanggal'],
			'perihal_surat_keluar'		=> $data['perihal'],
			'isi_surat_keluar'			=> $data['isi_surat'],
			'tempat_surat'				=> $data['tempat'],
			'keterangan_surat_keluar'	=> $data['keterangan'],
			'lampiran_surat_keluar'		=> $data['lampiran']
		);
		
		$this->M_master_surat->update_surat_keluar('tbl_surat_keluar',$datasend,array('id_surat_keluar'=>$id));
		
		$this->load->view('theme/admin', $data);
	}

	//---End Update Print Surat---//
	
	//---Start Delete Surat Keluar---//
	public function delete_surat_keluar($id){
		$data = $this->M_master_surat->getSuratKeluar('tbl_surat_keluar',array('id_surat_keluar'=>$id));
		
		foreach ($data->result() as $row){
			$bagian = $row->keterangan_surat_keluar;
			if ($bagian == 1){
				$back = 'admin/surat/surat_keluar_r/';
			}elseif ($bagian == 2){
				$back = 'admin/surat/surat_keluar_nr/';
			}else{
				$back = 'admin/surat/surat_internal/';
			}
		}
		
		$this->M_master_surat->delete_surat_keluar('tbl_surat_keluar',array('id_surat_keluar'=>$id));
		
		redirect($back);
	}
	//---End Delete Surat Keluar---//
	  
	//---Start PDF Surat Keluar---//
	public function pdf_surat_keluar($param){
		$id = explode('~',$param);
		
		$data['get_surat'] = $this->M_master_surat->get_kategori_surat('tbl_surat_keluar', array('id_surat_keluar'=>$id[0]));
		
		if($id[1]==3){
			$html= $this->load->view('a_content/pdf_surat_keluar_2', $data,true);
		}else{
			$html= $this->load->view('a_content/pdf_surat_keluar_1', $data,true);
		}

		$title_page = 'Pdf'.$param;
		$this->pdf->pdf_create($html,$title_page,'A4','portrait');
	}
	//---End PDF Surat Keluar---//
	
	//---Start Surat Masuk---//
	public function surat_masuk(){
		$data['title']		='LPPM | Ubhara Surabaya';
		$data['content']	='a_content/surat_masuk';  
		$data['judul']		='Daftar Surat Masuk';
		
		$data['get_surat']	= $this->M_master_surat->get_surat_masuk('tbl_surat_masuk');
		 
		$this->load->view('theme/admin', $data);
	}
	 
	public function tambah_surat_masuk(){
		$data['title']		='LPPM | Ubhara Surabaya'; 
		$data['content']	='a_content/tambah_surat_masuk';
		$data['judul']		='Tambah Surat Masuk';
		
		$data['no_surat']	= $this->M_master_surat->no_surat_masuk();
		
		$this->load->view('theme/admin', $data);
	} 
	
	public function simpan_surat_masuk(){
		
		if (!empty($_FILES["myFile"])) {
	       	define("UPLOAD_DIR", "./assets/pdf/");
	       	$myFile 	= $_FILES["myFile"];
	       	
	       	$name = preg_replace("/[^A-Z0-9._-]/i", "_", $myFile["name"]); //filename
	       	$parts = pathinfo($name);//filename
	       	$name = "PDF".date()."_".time().".".$parts["extension"];//filename
	       	 
	       	move_uploaded_file($myFile["tmp_name"], UPLOAD_DIR . $name); //proses upload
       	}
       	
       	$no_surat	= $this->input->post('no_surat');
       	$tgl_masuk	= explode("-",$this->input->post('tanggal1'));
       	$alamat		= $this->input->post('alamat');
       	$tgl_surat	= explode("-",$this->input->post('tanggal2'));
       	$kode_surat	= $this->input->post('kode_surat');
       	$perihal	= $this->input->post('perihal');
       	$file_pdf	= $name;
       	
       	$pisah = explode("/",$no_surat);
       	
       	$datasend = array(
	       	'id_surat_masuk'				=> $pisah[0],
	       	'no_surat_masuk'				=> $no_surat,
	       	'tanggal_msk_surat_masuk'		=> $tgl_masuk[2]."-".$tgl_masuk[1]."-".$tgl_masuk[0],
	       	'alamat_pengirim_surat_masuk'	=> $alamat,
       		'tanggal_kirim_surat_masuk'		=> $tgl_surat[2]."-".$tgl_surat[1]."-".$tgl_surat[0],
	       	'kode_surat_masuk'				=> $kode_surat,
	       	'perihal_surat_masuk'			=> $perihal,
	       	'pdf_surat_masuk'				=> $file_pdf
       	);
       
		$this->M_master_surat->insert_surat_masuk('tbl_surat_masuk',$datasend);
		
		redirect('admin/surat/surat_masuk/');
	}
	
	public function update_surat_masuk($id){
		$data['title']		='LPPM | Ubhara Surabaya';
		$data['content']	='a_content/update_surat_masuk';
		$data['judul']		='Update Surat Masuk';
		
		$data['no_surat']	= $this->M_master_surat->select_surat_masuk('tbl_surat_masuk',array('id_surat_masuk'=> $id));
		
		$this->load->view('theme/admin', $data);
	}
	
	public function proses_update_surat_masuk($id){
		$pdf_lama = $this->input->post('pdf_lama');
		
		if (!empty($_FILES["myFile"])) {
			define("UPLOAD_DIR", "./assets/pdf/");
	       	$myFile 	= $_FILES["myFile"];
	       	
	       	$name 	= preg_replace("/[^A-Z0-9._-]/i", "_", $myFile["name"]); //filename
	       	$parts 	= pathinfo($name);//filename
	       	$name 	= "PDF_".time().".".$parts["extension"];//filename
	       	
	       	$success = move_uploaded_file($myFile["tmp_name"], UPLOAD_DIR . $name); //proses upload
       	}
       	
       	if (!$success) { 
          	$name = $pdf_lama;
        }else{
        	unlink('./assets/pdf/'.$pdf_lama);
        }
       	
       	$no_surat	= $this->input->post('no_surat');
       	$tgl_masuk	= explode("-",$this->input->post('tanggal1'));
       	$alamat		= $this->input->post('alamat');
       	$tgl_surat	= explode("-",$this->input->post('tanggal2'));
       	$kode_surat	= $this->input->post('kode_surat');
       	$perihal	= $this->input->post('perihal');
       	$file_pdf	= $name;
       	
       	$pisah = explode("/",$no_surat);
       	
       	$datasend = array(
	       	'no_surat_masuk'				=> $no_surat,
	       	'tanggal_msk_surat_masuk'		=> $tgl_masuk[2]."-".$tgl_masuk[1]."-".$tgl_masuk[0],
	       	'alamat_pengirim_surat_masuk'	=> $alamat,
       		'tanggal_kirim_surat_masuk'		=> $tgl_surat[2]."-".$tgl_surat[1]."-".$tgl_surat[0],
	       	'kode_surat_masuk'				=> $kode_surat,
	       	'perihal_surat_masuk'			=> $perihal,
	       	'pdf_surat_masuk'				=> $file_pdf
       	);
       
		$this->M_master_surat->update_surat_masuk('tbl_surat_masuk',$datasend,array('id_surat_masuk'=>$id));
		
		redirect('admin/surat/surat_masuk/');
	}
	
	public function delete_surat_masuk($file){
		$id = explode('~',$file);
		unlink('./assets/pdf/'.$id[1]);
		$this->M_master_surat->delete_surat_masuk('tbl_surat_masuk', array('id_surat_masuk'=>$id[0]));
		redirect('admin/surat/surat_masuk/');
	}
	//---End Surat Masuk---//
	
}
