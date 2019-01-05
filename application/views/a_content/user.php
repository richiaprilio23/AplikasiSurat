<html>
<head>
    <title></title>
</head>
<body>
<div class="page-content">
        <div class="flex-grid no-responsive-future">
            <div class="row" style="height: 100%">
            <div class="cell auto-size padding20 bg-white" id="cell-content">
                    <h1 class="text-light"><?php echo $judul;?><span class="mif-users place-right"></span></h1>
                    <hr class="thin bg-grayLighter">

<!-- START CONTENT --> 

<div class="tabcontrol2" >
    
    <div class="frames">
        <div class="frame" >
        <h4>Tambah User</h1>
        <form method="post" action="<?php echo base_url('admin/user/simpan_admin/'); ?>" >
        <table width="100%">
            <tr>
                <td width="20px">Username</td>
                <td> : </td>
                <td>
                    <div class="input-control text info" style="width: 60%;">
                        <input name="username" type="text" required>
                    </div>
                </td>
            </tr>
            <tr>
                <td>Password</td>
                <td> : </td>
                <td>
                    <div class="input-control text info" style="width: 60%;">
                        <input name="password" type="password" required>
                    </div>
                </td>
                <td align="right"><?php echo $this->session->flashdata('pesan')?></td>
            </tr>
            <tr>
                <td><button type="submit" class="button primary">Simpan</button></td>
            </tr>
        </table>
        </form>
            <table id="example_table" class="dataTable striped border bordered" data-role="datatable" data-searching="true">
                        <thead>
                            <tr>
                                <td class="sortable-column">No</td>
                                <td class="sortable-column">User</td>
                                <td class="sortable-column">Password</td>
                                <td class="sortable-column">Action</td>
                            </tr>
                        </thead>
                        <tbody>
                        <?php
                        $x=0;
                        foreach ($get_admin->result() as $row){?>
                            <tr>
                                <td><?php echo $x+1;?>.</td>
                                <td><?php echo $row->username;?></td>
                                <td><?php echo $row->password;?></td>
                                <td align="center" style="padding-left: 0px; padding-right: 0px">
                                    <a href="<?php echo base_url('admin/user/edit_admin/'.$row->id_user); ?>" class="image-button warning small-button"><span class="icon mif-pencil" style="background-color:#e05d00"></span>Update</a>
                                    <a href="<?php echo base_url('admin/user/hapus_admin/'.$row->id_user); ?>" class="image-button danger small-button" onclick="return confirm('Hapus user?')"><span class="icon mif-bin" style="background-color:#b42e26"></span>Delete</a>
                                </td>
                            </tr>
                        <?php $x++;} ?>
                        </tbody>
            </table>
        </div>
    </div>
</div>

<!-- END CONTENT -->                     
                    
            </div>
            </div>
        </div>
</div>
</body>
</html>


<script>
    $(function(){
        $("#tab-control").tabcontrol();
    });
</script>