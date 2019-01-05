<div class="page-content">
        <div class="flex-grid no-responsive-future">
            <div class="row" style="height: 100%">
<!-- START CONTENT -->                		
    		<div class="cell auto-size padding20 bg-white" id="cell-content">
                    <h1 class="text-light"> <?php echo $judul;?><span class="mif-mail place-right"></span></h1>
                    <hr class="thin bg-grayLighter">
                    <a href="<?php echo base_url('admin/surat/tambah_surat_masuk/');?>"><button class="button success" onclick="metroDialog.toggle('#dialog')"><span class="mif-plus"></span> Tambah Surat Masuk</button></a>

                    <hr class="thin bg-grayLighter">
                    <table id="example_table" class="dataTable striped border bordered" data-role="datatable" data-searching="true">
                        <thead>
                        <tr>
                            <td rowspan="2" class="sortable-column">No. Urut Surat</td>
                            <td rowspan="2" class="sortable-column">Tgl. Masuk</td>
                            <td rowspan="2" class="sortable-column">Alamat Pengirim</td>
                            <td colspan="3" class="sortable-column"><center>DARI SURAT MASUK</center></td>
                            <td rowspan="2" class="sortable-column">File</td>
                            <td rowspan="2" class="sortable-column">Action</td>
                        </tr>
                        <tr>
                        	<td class="sortable-column">Tanggal</td>
                            <td class="sortable-column">Nomor</td>
                            <td class="sortable-column">Perihal</td>
                            
                        </tr>
                        </thead>
                        <tbody>
                        <?php foreach ($get_surat->result() as $row){?>
                        <tr>
                            <td><?php echo $row->no_surat_masuk;?></td>
                            <td><?php echo $row->tanggal_msk_surat_masuk;?></td>
                            <td><?php echo $row->alamat_pengirim_surat_masuk;?></td>
                            <td><?php echo $row->tanggal_kirim_surat_masuk;?></td>
                            <td><?php echo $row->kode_surat_masuk;?></td>
                            <td><?php echo $row->perihal_surat_masuk;?></td>

                            <td align="center" style="padding-left: 0px; padding-right: 0px"><a href="<?php echo base_url('assets/pdf/'.$row->pdf_surat_masuk)?>">Download <span class="mif-file-download mif-lg"></span></a></td>


                            <td align="center" style="padding-left: 0px; padding-right: 0px">
	                            <a href="<?php echo base_url('admin/surat/update_surat_masuk/'.$row->id_surat_masuk)?>"><button class="button warning">Update</button></a> | 
	                            <a href="<?php echo base_url('admin/surat/delete_surat_masuk/'.$row->id_surat_masuk.'~'.$row->pdf_surat_masuk)?>" onclick="return confirm('Hapus?')"><button class="button danger">Delete</button></a>
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