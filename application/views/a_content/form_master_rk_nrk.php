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
								<br><b style="font-size: 20px">LEMBAGA PENELITIAN DAN PENGABDIAN PADA MASYARAKAT</b>
								<br><b style="font-size: 12px">Kampus: jl. Ahmad Yani 114 Surabaya Telp. 031-8285602, Fax.031-8285601</b>
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<hr>
							</td>
						</tr>
					</table>

					<form method="post" action="<?php echo base_url('admin/surat/proses_tambah_form_master'); ?>">
						<table align="center" style="width: 800px;">

							<tr>
								<td>
									Master
								</td>
								<td> : </td>
								<td colspan="3">
									<div class="input-control text" style="width: 100%;">
										<input name="nama_master" type="text" required>
									</div>	
								</td>
								<td colspan="2" align="center">
									<input type="radio" name="master" value="1" required> Rektor/Non Rektor &nbsp;&nbsp; <input type="radio" name="master" value="2" required> Internal
								</td>
							</tr>
							
						</table>
						<center><?php echo $this->ckeditor->editor('isi_form');?></center>

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