<div id="wrapper">
    <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" style="background-color: #202020;"></a>
        </div>
<div style="color: white;
padding: 15px 50px 5px 50px;
float: right;
font-size: 16px;"> Date : <?php echo date('d/M/Y'); ?> &nbsp; <a href="<?php echo base_url().'login/logout'?>" class="btn btn-danger square-btn-adjust">Logout</a> </div>
    </nav>
    <?php foreach ($get_mhs->result() as $row){
        $foto_mahasiswa = $row->foto_mahasiswa;
        $nama_mahasiswa = $row->nama_mahasiswa;
        $nim_mahasiswa = $row->nim_mahasiswa;
    }?>
       <!-- /. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav" id="main-menu">
                <li class="text-center">
                    <img src="<?php echo base_url('assets/img/resize_gallery/'.$foto_mahasiswa);?>" class="user-image img-responsive"/>
                    <p style="color: white"><b><?php echo $nama_mahasiswa?></b><br>(<?php echo $nim_mahasiswa?>)</p>
                </li>
                <li>
                    <a href="#"><i class="fa fa-user fa-1x"></i> Data Pribadi<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="<?php echo base_url('alumni/home')?>">Info Data Pribadi</a>
                        </li>
                        <li>
                            <a href="<?php echo base_url('alumni/home/edit_datadiri')?>">Ubah Data Pribadi</a>
                        </li>
                    </ul>
                </li>
                 <li>
                    <a href="<?php echo base_url('alumni/prestasi')?>"><i class="fa fa-trophy fa-1x"></i> Prestasi</a>
                </li>
                <li>
                    <a href="<?php echo base_url('alumni/peradilansemu')?>"><i class="fa fa-briefcase fa-1x"></i> Peradilan Semu</a>
                </li>
                <li>
                    <a href="<?php echo base_url('alumni/mou')?>"><i class="fa fa-bar-chart-o fa-1x"></i> MOU</a>
                </li>
                <li>
                    <a href="<?php echo base_url('alumni/tugasakhir')?>"><i class="fa fa-bar-chart-o fa-1x"></i> Tugas Akhir</a>
                </li>
                <li>
                    <a href="#"><i class="fa fa-bars fa-1x"></i> Bukti All<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="<?php echo base_url('alumni/khs')?>">Bukti KHS</a>
                        </li>
                        <li>
                            <a href="<?php echo base_url('alumni/krs')?>">Bukti KRS</a>
                        </li>
                        <li>
                            <a href="<?php echo base_url('alumni/kkn')?>">Bukti KKN</a>
                        </li>
                        <li>
                            <a href="<?php echo base_url('alumni/spp')?>">Bukti SPP</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="<?php echo base_url('alumni/home/user/')?>"><i class="fa fa-cog fa-1x"></i> Ganti Password</a>
                </li>
                </ul>
        </div>
    </nav>
    <!-- /. NAV SIDE  -->
