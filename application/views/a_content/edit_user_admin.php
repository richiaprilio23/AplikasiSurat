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
<h4 class="text-light">Edit user dan Password</h4>
<?php foreach($user->result() as $u){ ?>
<form method="post" action="<?php echo base_url('admin/user/update_admin/'.$u->id_user); ?>" >
        <table width="100%">
            <tr>
                <td width="20px">Username</td>
                <td> : </td>
                <td>
                    <div class="input-control text info" style="width: 60%;">
                        <input name="username" type="text" value="<?php echo $u->username ?>">
                    </div>
                </td>
            </tr>
            <tr>
                <td>Password</td>
                <td> : </td>
                <td>
                    <div class="input-control text info" style="width: 60%;">
                        <input name="password" type="text" value="<?php echo $u->password ?>">
                    </div>
                </td>
               
            </tr>
            <tr>
                <td><button type="submit" class="button primary">Simpan</button></td>
            </tr>
        </table>
</form>
<?php } ?>
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