<?php
foreach ($no_surat->result() as $row){
	$no		= $row->id_surat_masuk+1;
}

?>
<div class="page-content">
        <div class="flex-grid no-responsive-future">
            <div class="row" style="height: 100%">
<!-- START CONTENT -->
    		<div class="cell auto-size padding20 bg-white" id="cell-content">
                    <h1 class="text-light"><?php echo $judul;?><span class="mif-mail place-right"></span></h1>
                    <hr class="thin bg-grayLighter">

                    <!-- Start Form Input -->

		            <form method="post" action="<?php echo base_url('admin/surat/simpan_surat_masuk/')?>" enctype="multipart/form-data">
		            	<table width="80%">
		                	<tr>
		                    	<td>No. Urut Surat</td><td> : </td>
		                    	<td>
		                    		<div class="input-control text" style="width: 100%;">
		                    			<input id="no" type="text" value="<?php echo $no?>" hidden>
										<input id="kode" name="no_surat" type="text" required>
									</div >
		                    	</td>
		                	</tr>
		                    <tr>
		                    	<td>Tanggal masuk</td><td> : </td>
		                    	<td>
		                    		<div class="input-control text" id="datepicker" style="width: 100%;" data-format="dd-mm-yyyy" data-preset="<?php echo mdate("%m-%d-%Y");?>">
										<input id="date" name="tanggal1" type="text" onchange="getDate()" hidden>
										<input id="date2" type="text" readonly>
										<button class="button"><span class="mif-calendar"></span></button>
									</div>
		                    	</td>
		                    </tr>
		                    <tr>
		                    	<td>Alamat Pengirim</td><td> : </td>
		                    	<td>
			                    	<div class="input-control text" style="width: 100%;">
										<input name="alamat" type="text" required>
									</div>
		                    	</td>
		                    </tr>
		                    <tr>
		                    	<td>Tanggal</td><td> : </td>
		                    	<td>
									<div class="input-control text" id="datepicker2" style="width: 100%;" data-format="dd-mm-yyyy">
										<input id="date3" name="tanggal2" type="text" onchange="getDate2()" hidden>
										<input id="date4"  type="text" readonly >
										<button class="button"><span class="mif-calendar"></span></button>
									</div>
		                    	</td>
		                    </tr>
		                    <tr>
		                    	<td>Nomor</td><td> : </td>
		                    	<td>
			                   		<div class="input-control text" style="width: 100%;">
										<input name="kode_surat" type="text" required>
									</div>
		                    	</td>
		                    </tr>
		                    <tr>
		                    	<td>Perihal</td><td> : </td>
		                    	<td>
		                    		<div class="input-control text" style="width: 100%;">
										<input name="perihal" type="text" required>
									</div>
		                    	</td>
		                    </tr>
		                    <tr>
		                    	<td>File PDF</td><td> : </td>
		                    	<td>
		                    		<div class="input-control file" data-role="input" style="width: 100%;">
										<input type="file" name="myFile">
										<button class="button"><span class="mif-folder"></span></button>
									</div>
		                    	</td>
		                    </tr>
		          		</table>
		                <hr class="thin bg-grayLighter">
		                <div align="right">
		                	<button class="button danger" onclick="goBack()"><span class="mif-cancel"></span> Batal</button>
		                	<button type="reset" class="button warning"><span class="mif-loop"></span> Clear</button>
		                	<button type="submit" class="button primary"><span class="mif-download2"></span> Simpan</button>
		                </div>
		            </form>
                    <!-- End Form Input -->
        	</div>

<!-- END CONTENT -->
    	</div>
    </div>
</div>

<script type="text/javascript">

$( document ).ready(function() {
	var a = document.getElementById('date').value;
	var b = document.getElementById('no').value;
	var pisah = a.split("-");
	var bulan_romawi = romawi(pisah[1]);
	var bulan_indo = bulan_indonesia(pisah[1]);
	document.getElementById('kode').value = b+"/LPPM/"+bulan_romawi+"/"+pisah[2]+"/UBHARA";
	document.getElementById('date2').value = pisah[0]+' '+bulan_indo+' '+pisah[2];

});

function getDate(){
	var a = document.getElementById('date').value;
	var b = document.getElementById('no').value;
	var pisah = a.split("-");
	var bulan_romawi = romawi(pisah[1]);
	var bulan_indo = bulan_indonesia(pisah[1]);
	document.getElementById('kode').value = b+"/LPPM/"+bulan_romawi+"/"+pisah[2]+"/UBHARA";
	document.getElementById('date2').value = pisah[0]+' '+bulan_indo+' '+pisah[2];
}

function getDate2(){
	var a = document.getElementById('date3').value;
	var pisah = a.split("-");
	var bulan_romawi = romawi(pisah[1]);
	var bulan_indo = bulan_indonesia(pisah[1]);
	document.getElementById('date4').value = pisah[0]+' '+bulan_indo+' '+pisah[2];
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
