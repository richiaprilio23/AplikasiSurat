<div class="page-content">
	<div class="flex-grid no-responsive-future">
		<div class="row" style="height: 100%">
			<!-- START CONTENT -->
			<div class="cell auto-size padding20 bg-white" id="cell-content">
				<h1 class="text-light"><?php echo $judul;?><span class="mif-mail place-right"></span></h1>
				<hr class="thin bg-grayLighter">

					
					<table align="center" border="1">
					<tr><td style="padding: 10px;">
						<div align="right">
							<button class="button danger" onclick="goBack()"><span class="mif-cancel"></span> Batal</button> 
							<button class="button warning" onclick="goBack()"><span class="mif-cancel"></span> Edit</button> 
							<a type="submit" id="ctk" class="button primary" href="<?php echo base_url('admin/surat/surat_internal') ;?>"><span class="mif-download2" ></span> Print</a>
						</div>
					</td></tr>
					<tr><td style="padding: 10px;">
						<div class="print">
							<table align="center" style="width: 700px;">
								<tr>
									<td align="center">
										<img width="70%" src="<?php echo base_url('assets/img/ubhara.png'); ?>">
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
							<table align="center" style="width: 700px;">
								<tr>
									<td align="center"><br><strong><u><?php echo $perihal;?></u></strong></td>
								</tr>
								<tr>
									<td align="center">Nomor : <?php echo $id_surat;?><br><br></td>
								</tr>
							</table>
							<?php echo $isi_surat; ?>
						</div>
					</td></tr>
					</table>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
   $(function(){
  $('#ctk').click(function(){
    printMe=window.open();
    printMe.document.write($('.print').html());
    printMe.print();
    printMe.close();
  });
});
</script>