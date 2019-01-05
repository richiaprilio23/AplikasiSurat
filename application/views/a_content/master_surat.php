<div class="page-content">
        <div class="flex-grid no-responsive-future"> 
            <div class="row" style="height: 100%"> 
<!-- START CONTENT -->                		
    		<div class="cell auto-size padding20 bg-white" id="cell-content">
                    <h1 class="text-light"><?php echo $judul;?><span class=" mif-contacts-mail place-right"></span></h1>
                    <hr class="thin bg-grayLighter">
                    
                    <div class="dropdown-button">
                        <a href="<?php echo base_url('admin/surat/form_master_surat/14/');?>"><button class="button success" onclick="metroDialog.toggle('#dialog')"><span class="mif-plus"></span>  Create New Master </button></a>
                        </ul>
					</div> 
                    <hr class="thin bg-grayLighter">
                    <table id="example_table" class="dataTable striped border bordered" data-role="datatable" data-searching="true">
                        <thead>
                        <tr>
                            <td class="sortable-column">Master Surat</td>
                            <td class="sortable-column">Action</td>
                        </tr>
                        </thead>
                        <tbody> 
                        
                        <?php foreach($getsurat->result() as $row){?>
                        <tr>
                            <td><?php echo $row->nama_surat;?></td>
                            <td align="center" style="padding-left: 0px; padding-right: 0px">
	                            <a href="<?php echo base_url('admin/surat/update_master_keluar/'.$row->id_surat); ?>"><button class="button warning">Update</button></a>
	                            <a href="<?php echo base_url('admin/surat/delete_master/'.$row->id_surat); ?>" onclick="return confirm('Hapus?')"><button class="button danger">Delete</button></a>
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