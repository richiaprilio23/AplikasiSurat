<div class="page-content">
        <div class="flex-grid no-responsive-future">
            <div class="row" style="height: 100%">
<!-- START CONTENT -->                		
    		<div class="cell auto-size padding20 bg-white" id="cell-content">
                    <h1 class="text-light"><?php echo $judul;?><span class="mif-mail-read place-right"></span></h1>
                    <hr class="thin bg-grayLighter">
                    
					<div class="dropdown-button">
					    <button class="button success dropdown-toggle" href="#" id="themes" ><span class="mif-plus"></span> Buat Surat Baru</button>
					    <ul class="split-content d-menu" data-role="dropdown">
					        <?php foreach ($kategori_surat->result() as $row){?>
					        <li style="width: 100%"><a style="width: 100%; color: black;" href="<?php echo base_url('admin/surat/form_surat/'.$row->id_surat);?>"><?php echo $row->nama_surat;?></a></li>
							<?php } ?>
					    </ul>
					</div>
                    
                    <hr class="thin bg-grayLighter">
                    <table id="example_table" class="dataTable striped border bordered" data-role="datatable" data-searching="true">
                        <thead>
                        <tr>
                            <td class="sortable-column">No. Urut Surat</td>
                            <td class="sortable-column">Alamat Tujuan</td>
                            <td class="sortable-column">Tanggal</td>
                            <td class="sortable-column">Perihal</td>
                            <td class="sortable-column">File</td>
                            <td class="sortable-column">Action</td>
                        </tr>
                        </thead>
                        <tbody>
                        <?php foreach($getsurat->result() as $row){?>
                        <tr>
                            <td><?php echo $row->no_surat_keluar;?></td>
                            <td><?php echo $row->alamat_surat_keluar;?></td>
                            <td><?php echo $row->tanggal_surat_keluar;?></td>
                            <td><?php echo $row->perihal_surat_keluar;?></td>
                            <td align="center" style="padding-left: 0px; padding-right: 0px"><a href="<?php echo base_url('admin/surat/pdf_surat_keluar/'.$row->id_surat_keluar."~".$row->keterangan_surat_keluar); ?>">Download <span class="mif-file-download mif-lg"></span></a></td>
                            <td align="center" style="padding-left: 0px; padding-right: 0px">
	                            <a href="<?php echo base_url('admin/surat/update_surat_keluar/'.$row->id_surat_keluar); ?>"><button class="button warning">Update</button></a>
	                            <a href="<?php echo base_url('admin/surat/delete_surat_keluar/'.$row->id_surat_keluar); ?>" onclick="return confirm('Hapus?')"><button class="button danger">Delete</button></a>
                            </td>
                        </tr>
                        <?php }?>
                        </tbody>
                    </table>
        	</div>
        	
<!-- END CONTENT --> 
    	</div>	
    </div>	
</div>	