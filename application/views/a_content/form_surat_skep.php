<?php 
	foreach ($isi_surat -> result() as $row){
		$isi = $row->isi_surat;
		$perihal = $row->nama_surat;
		$kode_skep = $row->keterangan_surat;
	}
	
	foreach ($no_surat -> result() as $row2){
		$no = $row2->id_surat_keluar + 1;
	}
	
	$fakultas 		= "LPPM"; 
	$universitas 	= "UBHARA";
?>
<div class="page-content">
	<div class="flex-grid no-responsive-future">
		<div class="row" style="height: 100%">
			<!-- START CONTENT -->
			<div class="cell auto-size padding20 bg-white" id="cell-content">
				<h1 class="text-light"><?php echo $judul;?><span class="mif-mail place-right"></span></h1>
				<hr class="thin bg-grayLighter">
					
					<table align="center" style="width: 700px;">
						<tr>
							<td align="center">
								<img width="70%" src="<?php echo base_url('assets/img/ubhara.png'); ?>">
							</td>
							<td style="width: 82%; font-family: Verdana; font-size: x-small; text-align: center;">
								<b style="font-size: 16px">YAYASAN BRATA BHAKTI DAERAH JAWA TIMUR</b>
								<br><b style="font-size: 20px">UNIVERSITAS BHAYANGKARA</b>
								<br><b style="font-size: 16px">LEMBAGA PENELITIAN DAN PENGABDIAN PADA MASYARAKAT</b>
								<br><b style="font-size: 12px">Kampus: jl. Ahmad Yani 114 Surabaya Telp. 031-8285602, Fax.031-8285601</b>
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<hr>
							</td>
						</tr>
					</table>
					<form method="post" action="<?php echo base_url('admin/surat/print_surat'); ?>">
						<table align="center" style="width: 800px;">
							<tr>
								<td>
									No Surat
								</td>
								<td> : </td>
								<td >
									<div class="input-control text" style="width: 100%;">
										<input id="no0" name="kode_skep" type="text" value="<?php echo $kode_skep;?>">
									</div>	
								</td>
								<td >
									<div class="input-control text" style="width: 100%;">
										<input id="no1" name="no_urut" type="text" value="<?php echo $no;?>" required>
									</div>	
								</td>
								<td >
									<div class="input-control text" style="width: 100%;">
										<input id="no2" name="fakultas" type="text" value="<?php echo $fakultas?>" required>
									</div>	
								</td>
								<td >
									<div class="input-control text" style="width: 100%;">
										<input id="no3" name="bulan" type="text" value="<?php ?>" readonly required>
									</div>	
								</td>
								<td >
									<div class="input-control text" style="width: 100%;">
										<input id="no4" name="tahun" type="text" value="<?php ?>" readonly required>
									</div>	
								</td>
								<td >
									<div class="input-control text" style="width: 100%;">
										<input id="no5" name="universitas" type="text" value="<?php echo $universitas;?>" required>
									</div>	
								</td>
							</tr>
							<tr>
								<td>
									Tempat<font style="color:snow;">_</font>dan<font style="color:snow;">_</font>Tanggal
								</td>
								<td> : </td>
								<td colspan="3">
									<div class="input-control text" style="width: 100%;">
										<input name="tempat" type="text" value="Surabaya" required>
									</div>									
								</td>
								<td colspan="3">
									<div class="input-control text" id="datepicker" style="width: 100%;" data-format="dd-mm-yyyy" data-preset="<?php echo mdate("%m-%d-%Y");?>">
										<input id="date"  name="tanggal" type="text" onchange="getDate()" hidden>
										<input id="date2" name="tanggal2" type="text" readonly>
										<button class="button"><span class="mif-calendar"></span></button>
									</div>								
								</td>
							</tr>
							<tr hidden>
								<td>
									Lampiran
								</td>
								<td> : </td>
								<td colspan="6">
									<div class="input-control text" style="width: 100%;">
										<input name="lampiran" type="text" value="-" required>
									</div>	
								</td>
							</tr>
							<tr>
								<td valign="top">
									Perihal
								</td>
								<td valign="top"> : </td>
								<td colspan="6">
									<div class="input-control textarea" data-role="input" data-text-auto-resize="true" data-text-max-height="10" style="width: 100%">
									    <textarea name="perihal" required><?php echo $perihal;?></textarea>
									</div>	
								</td>
							</tr>
							<tr hidden>
								<td>
									Alamat Tujuan
								</td>
								<td> : </td>
								<td colspan="6">
									<div class="input-control text" style="width: 100%;">
										<input name="tujuan" type="text" value="-" required>
									</div>	
								</td>
							</tr>
						</table>
						<center><?php echo $this->ckeditor->editor('isi_surat',$isi);?></center>
						<div align="right">
							<button class="button danger" onclick="goBack()"><span class="mif-cancel"></span> Batal</button> 
							<button type="submit" class="button primary"><span class="mif-download2"></span> Simpan</button>
						</div>
					</form>
			</div>
			<!-- END CONTENT -->
		</div>
	</div>
</div>

<script type="text/javascript">

$( document ).ready(function() {
	var a = document.getElementById('date').value;
	var pisah = a.split("-");
	var bulan_romawi = romawi(pisah[1]);
	var bulan_indo = bulan_indonesia(pisah[1]);
	document.getElementById('no3').value = bulan_romawi;
	document.getElementById('no4').value = pisah[2];
	document.getElementById('date2').value = pisah[0]+' '+bulan_indo+' '+pisah[2];
	
});

function getDate(){
	var a = document.getElementById('date').value;
	var pisah = a.split("-");
	var bulan_romawi = romawi(pisah[1]);
	var bulan_indo = bulan_indonesia(pisah[1]);
	document.getElementById('no3').value = bulan_romawi;
	document.getElementById('no4').value = pisah[2];
	document.getElementById('date2').value = pisah[0]+' '+bulan_indo+' '+pisah[2];
}

function romawi(bulan){
	switch(bulan) {
    case "01":
        return "I";
        break;
    case "02":
        return "II";
        break;
    case "03":
        return "III";
        break;
    case "04":
        return "IV";
        break;
    case "05":
        return "V";
        break;
    case "06":
        return "VI";
        break;
    case "07":
        return "VII";
        break;
    case "08":
        return "VIII";
        break;
    case "09":
        return "IX";
        break;
    case "10":
        return "X";
        break;
    case "11":
        return "XI";
        break;
    case "12":
        return "XII";
        break;
	}
}

function bulan_indonesia(bulan){
	switch(bulan) {
    case "01":
        return "Januari";
        break;
    case "02":
        return "Februari";
        break;
    case "03":
        return "Maret";
        break;
    case "04":
        return "April";
        break;
    case "05":
        return "Mei";
        break;
    case "06":
        return "Juni";
        break;
    case "07":
        return "Juli";
        break;
    case "08":
        return "Agustus";
        break;
    case "09":
        return "September";
        break;
    case "10":
        return "Oktober";
        break;
    case "11":
        return "November";
        break;
    case "12":
        return "Desember";
        break;
	}
}
</script>