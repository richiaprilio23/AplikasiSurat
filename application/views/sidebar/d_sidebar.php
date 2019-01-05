<div id="wrapper">
    <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            
        </div>
<div style="color: white;
padding: 15px 50px 5px 50px;
float: right;
font-size: 16px;"> Last access : <?php echo date('d/M/Y'); ?> &nbsp; <a href="<?php echo base_url().'login/logout'?>" class="btn btn-danger square-btn-adjust">Logout</a> </div>
    </nav>
    <?php foreach ($get_dos->result() as $row){
        $foto_dos = $row->foto_dosen;
        $nama_dos = $row->nama_dosen;
        $nik_dos = $row->nik_dosen;
        $status  = $row->keterangan_status_dosen;
    }?>
       <!-- /. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav" id="main-menu">
                <li class="text-center">
                    <a href="<?php echo base_url('assets/img/gallery/'.$foto_dos);?>" target="blank"><img src="<?php echo base_url('assets/img/resize_gallery/'.$foto_dos);?>" class="user-image img-responsive"/></a>
                    <p style="color: white"><b><?php echo $nama_dos?></b><br>(<?php echo $nik_dos?>)</p>
                </li>
                <li>
                    <a href="#"><i class="fa fa-user fa-1x"></i> Data Pribadi<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="<?php echo base_url('dosen/home')?>">Info Data Pribadi</a>
                        </li>
                        <li>
                            <a href="<?php echo base_url('dosen/home/edit_datadiri')?>">Ubah Data Pribadi</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="<?php echo base_url('dosen/ijazah/')?>"><i class="fa fa-file fa-1x"></i> Ijazah</a>
                </li>
                <li>
                    <a href="<?php echo base_url('dosen/prestasi/')?>"><i class="fa fa-trophy fa-1x"></i> Prestasi Dosen</a>
                </li>
                <li>
                    <a href="#"><i class="fa fa-user fa-1x"></i> Data SK<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="<?php echo base_url('dosen/sk_dos/')?>">SK Dosen</a>
                        </li>
                        <li>
                            <a href="<?php echo base_url('dosen/sk_dos_wal/')?>">SK Dosen Wali</a>
                        </li>
                        <li>
                            <a href="<?php echo base_url('dosen/sk_mengajar/')?>">SK Mengajar</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="<?php echo base_url('dosen/buku_isbn/')?>"><i class="fa fa-book fa-1x"></i> Buku ISBN</a>
                </li>
                <li>
                    <a href="<?php echo base_url('dosen/jurnal/')?>"><i class="fa fa-book fa-1x"></i> Jurnal</a>
                </li>
                <li>
                    <a href="#"><i class="fa fa-user fa-1x"></i> Data Sertifikat<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="<?php echo base_url('dosen/seminar/')?>">Sertifikat Seminar</a>
                        </li>
                        <li>
                            <a href="<?php echo base_url('dosen/kepanitiaan/')?>">Sertifikat Kepanitiaan</a>
                        </li>
                        <li>
                            <a href="<?php echo base_url('dosen/pembicara/')?>">Sertfifikat Pembicara</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="<?php echo base_url('dosen/organisasi_praktisi/')?>"><i class="fa fa-sitemap fa-1x"></i> Organisasi Praktisi</a>
                </li>
                <?php if($status == 'Dosen Tetap'){?>
                <li>
                    <a href="#"><i class="fa fa-trophy fa-1x"></i> Kepangkatan<span class="fa arrow"></span></a>
                	<ul class="nav nav-second-level">
                        <li>
                            <a href="<?php echo base_url('dosen/kepangkatan/pengantar_rektor/')?>">Pengantar Rektor</a>
                        </li>
                        <li>
                            <a href="<?php echo base_url('dosen/kepangkatan/penilaian_team_pak/')?>">Penilaian Team P.A.K</a>
                        </li>
                        <li>
                            <a href="<?php echo base_url('dosen/kepangkatan/sk_team_pak/')?>">SK Team P.A.K</a>
                        </li>
                        <li>
                            <a href="<?php echo base_url('dosen/kepangkatan/abstrak_thesis/')?>">Abstrak Thesis/Desertasi</a>
                        </li>
                        <li>
                            <a href="<?php echo base_url('dosen/sk_dos/')?>">Skep Dosen Tetap</a>
                        </li>
                        <li>
                            <a href="<?php echo base_url('dosen/kepangkatan/berita_acara_senat/')?>">Berita Acara Senat</a>
                        </li>
                        <li>
                            <a href="<?php echo base_url('dosen/kepangkatan/daftar_hadir_senat/')?>">Daftar Hadir Senat</a>
                        </li>
                        <li>
                            <a href="<?php echo base_url('dosen/kepangkatan/pelaksanaan_pendidikan/')?>">Pelaksanaan Pendidikan</a>
                        </li>
                        <li>
                            <a href="<?php echo base_url('dosen/kepangkatan/pelaksanaan_penelitian/')?>">Pelaksanaan Penelitian</a>
                        </li>
                        <li>
                            <a href="<?php echo base_url('dosen/kepangkatan/pelaksanaan_pengabdian/')?>">Pelaksanaan Pengabdian</a>
                        </li>
                        <li>
                            <a href="<?php echo base_url('dosen/kepangkatan/pelaksanaan_penunjang')?>">Pelaksanaan Penunjang</a>
                        </li>
                        <li>
                            <a href="<?php echo base_url('dosen/ijazah/')?>">Ijazah</a>
                        </li>
                        <li>
                            <a href="<?php echo base_url('dosen/kepangkatan/dupak/')?>">Dupak</a>
                        </li>
                        <li>
                            <a href="<?php echo base_url('dosen/kepangkatan/ppkp/')?>">PPKP</a>
                        </li>
                        <li>
                            <a href="<?php echo base_url('dosen/kepangkatan/pengesahan/')?>">Pengesahan</a>
                        </li>
                        <li>
                            <a href="<?php echo base_url('dosen/kepangkatan/keabsahan/')?>">Keabsahan</a>
                        </li>
                        <li>
                            <a href="<?php echo base_url('dosen/kepangkatan/pakerti_dan_aa')?>">Pakerti & AA</a>
                        </li>
                        <li>
                            <a href="<?php echo base_url('dosen/buku_isbn/')?>">ISBN</a>
                        </li>
                        <li>
                            <a href="<?php echo base_url('dosen/jurnal/')?>">Jurnal</a>
                        </li>
                        <li>
                            <a href="<?php echo base_url('dosen/kepangkatan/peer_preview')?>">Peer Preview</a>
                        </li>
                        <li>
                            <a href="<?php echo base_url('dosen/kepangkatan/penyuluhan')?>">Penyuluhan</a>
                        </li>
                        <li>
                            <a href="<?php echo base_url('dosen/kepanitiaan/')?>">Kepanitiaan</a>
                        </li>
                        <li>
                            <a href="<?php echo base_url('dosen/seminar/')?>">Seminar</a>
                        </li>
                    </ul>
                </li>
                <?php }?>
                <li>
                    <a href="<?php echo base_url('dosen/home/user/')?>"><i class="fa fa-cog fa-1x"></i> Ganti Password</a>
                </li>
                </ul>
        </div>
    </nav>
    <!-- /. NAV SIDE  -->
