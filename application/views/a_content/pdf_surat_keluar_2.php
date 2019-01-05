<?php 
foreach ($get_surat->result() as $row){
	$id_surat	= $row->no_surat_keluar;
	$tempat		= $row->tempat_surat;
	$tanggal2	= $row->tanggal_surat_keluar;
	$perihal	= $row->perihal_surat_keluar;
	$lampiran	= $row->lampiran_surat_keluar;
	$isi_surat 	= $row->isi_surat_keluar;
}
?>

					<!-- Download print .pdf surat keluar INTERNAL -->

<table align="center" style="width: 700px;">
	<tr>
		<td align="center">
			<img width="13%" src="<?php echo ('./assets/img/ubhara.png'); ?>">
		</td>
		<td style="width: 82%; font-family: Verdana; font-size: x-small; text-align: center;">
			<b style="font-size: 16px">YAYASAN BRATA BHAKTI DAERAH JAWA TIMUR</b>
			<br><b style="font-size: 20px">UNIVERSITAS BHAYANGKARA</b>
			<br><b style="font-size: 20px">LEMBAGA PENELITIAN DAN PENGABDIAN PADA MASYARAKAT</b>
			<br><b style="font-size: 12px">Kampus: jl. Ahmad Yani 114 Surabaya Telp. 031-8285602, Fax.031-8285601</b>
		</td>
	</tr>
	<tr>
		<td colspan="2" style="border: 0px solid #000; border-width: 1px 0 1px 0; padding: 1px">
		</td>
	</tr>
</table>
<!-- 
<table align="center" style="width: 700px;">
	<tr>
		<td align="center"><br><strong><u><?php echo $perihal;?></u></strong></td>
	</tr>
	<tr>
		<td align="center">Nomor : <?php echo $id_surat;?><br><br></td>
	</tr>
</table>
<?php echo $isi_surat; ?> -->

<table align="center" style="width: 700px;" >
	<tr>
		<td style="padding-top: 3px; width: 12%">Nomor</td>
		<td style="padding-top: 3px; width: 1%">:</td>
		<td style="padding-top: 3px"><?php echo $id_surat;?></td>
		<td style="padding-top: 3px" align="left" width="30%"><?php echo $tempat.', '.$tanggal2;?></td>
	</tr>
	<tr>
		<td>Lampiran</td>
		<td>:</td>
		<td><?php echo $lampiran;?></td>
		<td></td>
	</tr>
	<tr>
		<td>Perihal</td>
		<td>:</td>
		<td><?php echo $perihal;?></td>
		<td></td>
	</tr>
</table>
<?php echo $isi_surat; ?>