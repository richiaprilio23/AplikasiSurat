    <!-- === BEGIN HEADER === -->
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
    <!--<![endif]-->
    <head>
        <!-- Title -->
        <title><?php echo $title; ?></title>
        <!-- Meta -->
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <meta name="description" content="">
        <meta name="author" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
        <!-- Favicon -->
        <link href="favicon.ico" rel="shortcut icon">
        <!-- Bootstrap Core CSS -->
        <link rel="stylesheet" href="<?php echo base_url('assets/css/bootstrap.css'); ?>" rel="stylesheet">
        <!-- Template CSS -->
        <link rel="stylesheet" href="<?php echo base_url('assets/css/animate.css');?>" rel="stylesheet">
        <link rel="stylesheet" href="<?php echo base_url('assets/css/font-awesome.css');?>" rel="stylesheet">
        <link rel="stylesheet" href="<?php echo base_url('assets/css/style.css');?>" rel="stylesheet">
        <link rel="stylesheet" href="<?php echo base_url('assets/css/responsive.css');?>" rel="stylesheet">
        <link rel="stylesheet" href="<?php echo base_url('assets/css/custom.css');?>" rel="stylesheet">
        <!-- Google Fonts-->
        <link href="http://fonts.googleapis.com/css?family=Roboto+Condensed:400,300" rel="stylesheet" type="text/css">
        <link href="http://fonts.googleapis.com/css?family=PT+Sans" type="text/css" rel="stylesheet">
        <link href="http://fonts.googleapis.com/css?family=Roboto:400,300" rel="stylesheet" type="text/css">
    </head>
    <body>
      <?php
      foreach ($get_bg->result() as $row){
        $file_background = $row->file_background;
      }?>
    <div id="body-bg" style="background-image: url(<?php echo base_url('assets/img/gallery/').$file_background;?>)">
            <!-- <ul class="social-icons pull-right hidden-xs">
              <li class="social-dribbble">
                    <a href="<?php echo base_url('login');?>" title="Login"></a>
              </li>
                <li class="social-twitter">
                    <a href="https://twitter.com/fh_ubhara" target="_blank" title="Twitter"></a>
                </li>
                <li class="social-facebook">
                    <a href="https://www.facebook.com/profile.php?id=100016986911855" target="_blank" title="Facebook"></a>
                </li>
                <li class="social-googleplus">
                    <a href="https://plus.google.com/u/0/111091930178035504417" target="_blank" title="GooglePlus"></a>
                </li>
            </ul> -->
            <!-- <div id="pre-header" class="container" style="height:40px">
            </div> -->
            <div id="header">
                <div class="container">
                    <div class="row">
                        <div class="logo" style="margin-bottom: 20px">
                            <a href="<?php echo base_url();?>" title=" ">
                                <img height="90px" src="<?php echo base_url('assets/img/logo-header.png');?>" alt="Logo" />
                            </a>
                        </div>
                    </div>
                </div>
            </div>
