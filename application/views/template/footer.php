<?php
foreach ($kontak->result() as $row){
  $telp 	= $row->telp_kontak;
  $email	= $row->email_kontak;
  $alamat	= $row->alamat_kontak;
  $website	= $row->web_kontak;
}?>

<!-- === BEGIN FOOTER === -->
            <div id="content-bottom-border" class="container">
            </div>
            <div id="base">
                <div class="container padding-vert-30 margin-top-60">
                    <div class="row">
                    
                        <!-- Contact Details -->
                        <!-- <div class="col-md-4 margin-bottom-20">
                            <h3 class="margin-bottom-10">Contact Details</h3>
                            <p>
                                <span class="fa-phone">Telp :</span><?php echo $telp;?>
                                <br>
                                <span class="fa-envelope">Email :</span>
                                <a href="mailto:<?php echo $email;?>"><?php echo $email;?></a>
                                <br>
                                <span class="fa-link">Website :</span>
                                <a href="http://<?php echo $website;?>"><?php echo $website;?></a>
                            </p>
                            <p><?php echo $alamat;?></p>
                        </div> -->
                        <!-- End Contact Details -->
                        <!-- Sample Menu -->
                       <!--  <div class="col-md-8 margin-bottom-20">
                            <h3 class="margin-bottom-10">Link Menu</h3> -->
                            
                            <!-- <table style="border : 2px solid white;">
                            <tr><td>
                            <ul class="menu">
                              <div class="col-md-3" style="background-color: yellow; height: 100px; color: #000000">
                                <a style="height: 100%; width: 100%" href="http://www.ubhara-library.com/">
                                  <div style="width: 100%; height:100%; margin-left:-5px" align="center">
                                      <h4 style="margin-top: 17%; color: black">Perpustakaan</h4>
                                  </div>
                                </a>
                              </div>
                              <div class="col-md-3" style="background-color: black; height: 100px; color: #000000">
                                <a style="height: 100%; width: 100%" href="http://ubhara-library.com/repository/">
                                  <div style="width: 100%; height:100%" align="center">
                                      <h4 style="margin-top: 17%; color: snow">Repository</h4>
                                  </div>
                                </a>
                              </div>
                              <div class="col-md-3" style="background-color: yellow; height: 100px; color: #000000">
                                <a style="height: 100%; width: 100%" href="http://www.ubhara.ac.id/v2/wp-content/uploads/2013/06/penghargaan-kopertis-7.jpg">
                                  <div style="height: 100%; width: 100%" align="center">
                                      <h4 style="margin-top: 17%; color: black">Kopertis 7</h4>
                                  </div>
                                </a>
                              </div>
                              <div class="col-md-3" style="background-color: black; height: 100px; color: #000000">
                                <a style="height: 100%; width: 100%" href="http://forlap.dikti.go.id/perguruantinggi/detail/RTMxNzJDMjEtMzlBMS00RUNELUI1Q0UtNDI2NTNGNkZGRkU0">
                                  <div style="width: 100%; height:100%" align="center">
                                      <h4 style="margin-top: 17%; color: snow">Forlap Dikti</h4>
                                  </div>
                                </a>
                              </div>
                              <div class="col-md-3" style="background-color: black; height: 100px; color: #000000">
                                <a style="height: 100%; width: 100%" href="http://isbn.perpusnas.go.id/Account/SearchBuku?searchCat=Penerbit&searchTxt=ubhara+press	">
                                  <div style="width: 100%; height:100%" align="center">
                                      <h4 style="margin-top: 17%; color: snow">ISBN Ubhara</h4>
                                  </div>
                                </a>
                              </div>
                              <div class="col-md-3" style="background-color: yellow; height: 100px; color: #000000">
                                <a style="height: 100%; width: 100%" href="http://sim.ubhara.ac.id">
                                  <div style="width: 100%; height:100%" align="center">
                                      <h5 style="margin-top: 17%; color: black">KRS ONLINE<br>KHS ONLINE<br>Remidi ONLINE</h5>
                                  </div>
                                </a>
                              </div>
                              <div class="col-md-3" style="background-color: black; height: 100px; color: #000000">
                                <a style="height: 100%; width: 100%" href="http://www.kemenkumham.go.id/">
                                  <div style="width: 100%; height:100%" align="center">
                                      <h4 style="margin-top: 17%; color: snow">KEMENKUMHAM</h4>
                                  </div>
                                </a>
                              </div>
                              <div class="col-md-3" style="background-color: yellow; height: 100px; color: #000000">
                                <a style="height: 100%; width: 100%" href="http://setneg.go.id/">
                                  <div style="width: 100%; height:100%" align="center">
                                      <h4 style="margin-top: 17%; color: black">SETNEG</h4>
                                  </div>
                                </a>
                              </div>
                              <div class="col-md-3" style="background-color: yellow; height: 100px; color: #000000">
                                <a style="height: 100%; width: 100%" href="http://www.dpr.go.id/akd/index/id/Tentang-Komisi-III">
                                  <div style="width: 100%; height:100%" align="center">
                                      <h4 style="margin-top: 17%; color: black">Komisi III DPR RI</h4>
                                  </div>
                                </a>
                              </div>
                              <div class="col-md-3" style="background-color: black; height: 100px; color: #000000">
                                <a style="height: 100%; width: 100%" href="http://www.mahkamahkonstitusi.go.id/">
                                  <div style="width: 100%; height:100%" align="center">
                                      <h4 style="margin-top: 17%; color: snow">MK</h4>
                                  </div>
                                </a>
                              </div>
                              <div class="col-md-3" style="background-color: yellow; height: 100px; color: #000000">
                                <a style="height: 100%; width: 100%" href="https://www.mahkamahagung.go.id/id">
                                  <div style="width: 100%; height:100%" align="center">
                                      <h4 style="margin-top: 17%; color: black">MA</h4>
                                  </div>
                                </a>
                              </div>
                              <div class="col-md-3" style="background-color: black; height: 100px; color: #000000">
                                <a style="height: 100%; width: 100%" href="http://www.komisiyudisial.go.id/home">
                                  <div style="width: 100%; height:100%" align="center">
                                      <h4 style="margin-top: 17%; color: snow">KY</h4>
                                  </div>
                                </a>
                              </div>
                              <div class="col-md-3" style="background-color: black; height: 100px; color: #000000">
                                <a style="height: 100%; width: 100%" href="https://www.kpk.go.id/id/">
                                  <div style="width: 100%; height:100%" align="center">
                                      <h4 style="margin-top: 17%; color: snow">KPK</h4>
                                  </div>
                                </a>
                              </div>
                              <div class="col-md-3" style="background-color: yellow; height: 100px; color: #000000">
                                <a style="height: 100%; width: 100%" href="http://kejaksaan.go.id/">
                                  <div style="width: 100%; height:100%" align="center">
                                      <h4 style="margin-top: 17%; color: black">Kejaksaan</h4>
                                  </div>
                                </a>
                              </div>
                              <div class="col-md-3" style="background-color: black; height: 100px; color: #000000">
                                <a style="height: 100%; width: 100%" href="https://www.polri.go.id/">
                                  <div style="width: 100%; height:100%" align="center">
                                      <h4 style="margin-top: 17%; color: snow">POLRI</h4>
                                  </div>
                                </a>
                              </div>
                              <div class="col-md-3" style="background-color: yellow; height: 100px; color: #000000">
                                <a style="height: 100%; width: 100%" href="http://www.pta-surabaya.go.id/">
                                  <div style="width: 100%; height:100%" align="center">
                                      <h4 style="margin-top: 17%; color: black">PTA SURABYA</h4>
                                  </div>
                                </a>
                              </div>
                              <div class="col-md-3" style="background-color: yellow; height: 100px; color: #000000">
                                <a style="height: 100%; width: 100%" href="http://www.dilmiltama.go.id/home/">
                                  <div style="width: 100%; height:100%" align="center">
                                      <h5 style="margin-top: 17%; color: black">PENGADILAN MILITER<br>SURABAYA</h5>
                                  </div>
                                </a>
                              </div>
                              <div class="col-md-3" style="background-color: black; height: 100px; color: #000000">
                                <a style="height: 100%; width: 100%" href="http://site.ptun-surabaya.go.id/">
                                  <div style="width: 100%; height:100%" align="center">
                                      <h4 style="margin-top: 17%; color: snow">PTUN SURABAYA</h4>
                                  </div>
                                </a>
                              </div>
                              <div class="col-md-3" style="background-color: yellow; height: 100px; color: #000000">
                                <a style="height: 100%; width: 100%" href="http://www.peradi.or.id/">
                                  <div style="width: 100%; height:100%" align="center">
                                      <h4 style="margin-top: 17%; color: black">PERADI</h4>
                                  </div>
                                </a>
                              </div>
                              <div class="col-md-3" style="background-color: black; height: 100px; color: #000000">
                                <a style="height: 100%; width: 100%" href="http://www.kongres-advokat-indonesia.org/">
                                  <div style="width: 100%; height:100%" align="center">
                                      <h4 style="margin-top: 17%; color: snow">KAI</h4>
                                  </div>
                                </a>
                              </div>
                            </ul>
                            </td></tr>
                            </table>
                            
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
            </div> -->
            <!-- Footer Menu -->
            <!-- <div id="footer">
                <div class="container">
                    <div class="row">
                        <div id="footermenu" class="col-md-8">
                        
                        </div> -->
                        <center style="margin-top: -15px;"> <a href="http://ubhara.ac.id" target="_blank"> Universitas Bhayangkara Surabaya</a> | 
                          <a href="http://lppm.ubhara.ac.id/" target="_blank"> Lppm Ubhara Surabaya</a><br>
                          IT Ubhara | Copyright &copy; Ide Kita Cemerlang 2018 </center>
                    </div>
                </div>
            </div>
            <!-- End Footer Menu -->
            <!-- JS -->
            <script type="text/javascript" src="<?php echo base_url('assets/js/jquery.min.js');?>" type="text/javascript"></script>
            <script type="text/javascript" src="<?php echo base_url('assets/js/bootstrap.min.js');?>" type="text/javascript"></script>
            <script type="text/javascript" src="<?php echo base_url('assets/js/scripts.js');?>"></script>
            <!-- Isotope - Portfolio Sorting -->
            <script type="text/javascript" src="<?php echo base_url('assets/js/jquery.isotope.js');?>" type="text/javascript"></script>
            <!-- Mobile Menu - Slicknav -->
            <script type="text/javascript" src="<?php echo base_url('assets/js/jquery.slicknav.js');?>" type="text/javascript"></script>
            <!-- Animate on Scroll-->
            <script type="text/javascript" src="<?php echo base_url('assets/js/jquery.visible.js');?>" charset="utf-8"></script>
            <!-- Sticky Div -->
            <script type="text/javascript" src="<?php echo base_url('assets/js/jquery.sticky.js');?>" charset="utf-8"></script>
            <!-- Slimbox2-->
            <script type="text/javascript" src="<?php echo base_url('assets/js/slimbox2.js');?>" charset="utf-8"></script>
            <!-- Modernizr -->
            <script src="<?php echo base_url('assets/js/modernizr.custom.js');?>" type="text/javascript"></script>
            <!-- End JS -->
    </body>
</html>
<!-- === END FOOTER === -->
