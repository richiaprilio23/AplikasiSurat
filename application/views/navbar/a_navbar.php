<div class="app-bar fixed-top darcula" data-role="appbar">
        <a href="<?php echo base_url('admin/home/'); ?>" class="app-bar-element branding">Dashboard</a>
        <span class="app-bar-divider"></span>
        <ul class="app-bar-menu">
            <li> 
                <a href="<?php echo base_url('admin/surat/surat_masuk/');?>">Surat Masuk</a>
            </li>
            <li>
                <a href="" class="dropdown-toggle">Surat Keluar</a>
                <ul class="d-menu" data-role="dropdown">
                    <li><a href="<?php echo base_url('admin/surat/surat_keluar_r/');?>" >Rektorat</a></li>
                    <li class="divider"></li>
                    <li><a href="<?php echo base_url('admin/surat/surat_keluar_nr/');?>">Non Rektorat</a></li>
                    <li class="divider"></li>
                    <li><a href="<?php echo base_url('admin/surat/surat_internal/');?>">Internal</a></li>
                    <li class="divider"></li>
                  </li>
                </ul>
            </li>
        </ul>
        <div class="app-bar-element place-right">
           <span class="app-bar-menu"><span class="mif-exit"></span></span>
                <ul class="app-bar-menu">
                    <li> 
                       <a href="<?php echo base_url('login/logout')?>" class="app-bar-menu" class= "mif-exit">Exit</a>
                    </li>
                </ul>
        </div>
    </div>
   </div>
