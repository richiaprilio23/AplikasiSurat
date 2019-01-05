<!DOCTYPE html>
<html>
<head lang="en">    
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="description" content="Metro, a sleek, intuitive, and powerful framework for faster and easier web development for Windows Metro Style.">
    <meta name="keywords" content="HTML, CSS, JS, JavaScript, framework, metro, front-end, frontend, web development">
    <meta name="author" content="Sergey Pimenov and Metro UI CSS contributors">
     
    <title>Dashboard</title>

    <link href="<?php echo base_url('assets/admin/css/metro.css');?>" rel="stylesheet">
    <link href="<?php echo base_url('assets/admin/css/metro-icons.css');?>" rel="stylesheet">
    <link href="<?php echo base_url('assets/admin/css/metro-responsive.css');?>" rel="stylesheet">

    <script src="<?php echo base_url('assets/admin/js/jquery-2.1.3.min.js');?>"></script>
    <script src="<?php echo base_url('assets/admin/js/metro.js');?>"></script>
    <script src="//maps.googleapis.com/maps/api/js?sensor=false"></script>

    <style>
        .tile-area-controls {
            position: fixed;
            right: 40px;
            top: 40px;
        }

        .tile-group {
            left: 100px;
        }

        .tile, .tile-small, .tile-sqaure, .tile-wide, .tile-large, .tile-big, .tile-super {
            opacity: 0;
            -webkit-transform: scale(.8);
            transform: scale(.8);
        }

        #charmSettings .button {
            margin: 5px;
        }

        .schemeButtons {
            /*width: 300px;*/
        }

        @media screen and (max-width: 640px) {
            .tile-area {
                overflow-y: scroll;
            }
            .tile-area-controls {
                display: none;
            }   
        }

        @media screen and (max-width: 320px) {
            .tile-area {
                overflow-y: scroll;
            }

            .tile-area-controls {
                display: none;
            }

        }
    </style>

    <script>

        /*
         * Do not use this is a google analytics fro Metro UI CSS
         * */
        if (window.location.hostname !== 'localhost') {

            (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
                (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
                    m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
            })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

            ga('create', 'UA-58849249-3', 'auto');
            ga('send', 'pageview');

        }

    </script>

    <script>
        (function($) {
            $.StartScreen = function(){
                var plugin = this;
                var width = (window.innerWidth > 0) ? window.innerWidth : screen.width;

                plugin.init = function(){
                    setTilesAreaSize();
                    if (width > 640) addMouseWheel();
                };

                var setTilesAreaSize = function(){
                    var groups = $(".tile-group");
                    var tileAreaWidth = 80;
                    $.each(groups, function(i, t){
                        if (width <= 640) {
                            tileAreaWidth = width;
                        } else {
                            tileAreaWidth += $(t).outerWidth() + 80;
                        }
                    });
                    $(".tile-area").css({
                        width: tileAreaWidth
                    });
                };

                var addMouseWheel = function (){
                    $("body").mousewheel(function(event, delta, deltaX, deltaY){
                        var page = $(document);
                        var scroll_value = delta * 50;
                        page.scrollLeft(page.scrollLeft() - scroll_value);
                        return false;
                    });
                };

                plugin.init();
            }
        })(jQuery);

        $(function(){
            $.StartScreen();

            var tiles = $(".tile, .tile-small, .tile-sqaure, .tile-wide, .tile-large, .tile-big, .tile-super");

            $.each(tiles, function(){
                var tile = $(this);
                setTimeout(function(){
                    tile.css({
                        opacity: 1,
                        "-webkit-transform": "scale(1)",
                        "transform": "scale(1)",
                        "-webkit-transition": ".3s",
                        "transition": ".3s"
                    });
                }, Math.floor(Math.random()*500));
            });

            $(".tile-group").animate({
                left: 0
            });
        });

        function showCharms(id){
            var  charm = $(id).data("charm");
            if (charm.element.data("opened") === true) {
                charm.close();
            } else {
                charm.open();
            }
        }

        function setSearchPlace(el){
            var a = $(el);
            var text = a.text();
            var toggle = a.parents('label').children('.dropdown-toggle');

            toggle.text(text);
        }

        $(function(){
            var current_tile_area_scheme = localStorage.getItem('tile-area-scheme') || "tile-area-scheme-dark";
            $(".tile-area").removeClass (function (index, css) {
                return (css.match (/(^|\s)tile-area-scheme-\S+/g) || []).join(' ');
            }).addClass(current_tile_area_scheme);

            $(".schemeButtons .button").hover(
                    function(){
                        var b = $(this);
                        var scheme = "tile-area-scheme-" +  b.data('scheme');
                        $(".tile-area").removeClass (function (index, css) {
                            return (css.match (/(^|\s)tile-area-scheme-\S+/g) || []).join(' ');
                        }).addClass(scheme);
                    },
                    function(){
                        $(".tile-area").removeClass (function (index, css) {
                            return (css.match (/(^|\s)tile-area-scheme-\S+/g) || []).join(' ');
                        }).addClass(current_tile_area_scheme);
                    }
            );

            $(".schemeButtons .button").on("click", function(){
                var b = $(this);
                var scheme = "tile-area-scheme-" +  b.data('scheme');

                $(".tile-area").removeClass (function (index, css) {
                    return (css.match (/(^|\s)tile-area-scheme-\S+/g) || []).join(' ');
                }).addClass(scheme);

                current_tile_area_scheme = scheme;
                localStorage.setItem('tile-area-scheme', scheme);

                showSettings();
            });
        });

        var weather_icons = {
            'clear-day': 'mif-sun',
            'clear-night': 'mif-moon2',
            'rain': 'mif-rainy',
            'snow': 'mif-snowy3',
            'sleet': 'mif-weather4',
            'wind': 'mif-wind',
            'fog': 'mif-cloudy2',
            'cloudy': 'mif-cloudy',
            'partly-cloudy-day': 'mif-cloudy3',
            'partly-cloudy-night': 'mif-cloud5'
        };

        var api_key = 'AIzaSyDPfgE0qhVmCcy-FNRLBjO27NbVrFM2abg';

        $(function(){
            if (navigator.geolocation) {
                navigator.geolocation.getCurrentPosition(function(position){
                    var lat = position.coords.latitude, lon = position.coords.longitude;
                    var pos = lat+','+lon;
                    var latlng = new google.maps.LatLng(lat, lon);
                    var geocoder = new google.maps.Geocoder();
                    $.ajax({
                        url: '//api.forecast.io/forecast/219588ba41dedc2f1019684e8ac393ad/'+pos+'?units=si',
                        dataType: 'jsonp',
                        success: function(data){
                            //do whatever you want with the data here
                            geocoder.geocode({latLng: latlng}, function(result, status){
                                console.log(result[3]);
                                $("#city_name").html(result[3].formatted_address);
                            });
                            var current = data.currently;
                            //$('#city_name').html(response.city+", "+response.country);
                            $("#city_temp").html(Math.round(current.temperature)+" &deg;C");
                            $("#city_weather").html(current.summary);
                            $("#city_weather_daily").html(data.daily.summary);
                            $("#weather_icon").addClass(weather_icons[current.icon]);
                            $("#pressure").html(current.pressure);
                            $("#ozone").html(current.ozone);
                            $("#wind_bearing").html(current.windBearing);
                            $("#wind_speed").html(current.windSpeed);
                            $("#weather_bg").css({
                                'background-image': 'url(../images/'+current.icon+'.jpg'+')'
                            });
                        }
                    }); 
                });
            }
        });
    </script>

</head>
<body style="overflow-y: hidden;">

    <div data-role="charm" id="charmSettings" data-position="top">
        <h1 class="text-light">Settings</h1>
        <hr class="thin"/>
            <br />
        <div class="schemeButtons">
            <div class="button square-button tile-area-scheme-darkBlue" data-scheme="darkBlue"></div>
            <div class="button square-button tile-area-scheme-lightBlue" data-scheme="lightBlue"></div>
        </div>
    </div>

    <div class="tile-area tile-area-scheme-dark fg-white" style="height: 100%; max-height: 100% !important;">
        <h1 class="tile-area-title">Dashboard</h1>

        <div class="tile-area-controls">
            <button class="image-button icon-right bg-gray fg-white bg-hover-dark no-border"><span class="sub-header no-margin text-light">User</span> <span class="icon mif-user"></span></button>

            <button class="square-button bg-gray fg-white bg-hover-dark no-border" onclick="showCharms('#charmSettings')"><span class="mif-cog"></span></button>

            <!-- <button class="image-button icon-right bg-gray fg-white bg-hover-dark no-border"> <span class="sub-header no-margin text-light">User</span> <span class="icon mif-user"></span></button> -->

            <a href="<?php echo base_url('login/logout'); ?>"  class="image-button icon-right bg-gray fg-white bg-hover-dark no-border"><span class="mif-exit">Exit</span></a>
        </div>
    

        <div class="tile-group double">
            <!-- <span class="tile-group-title">Manajemen Surat</span> -->
            <div class="tile-container">
            <a href="<?php echo base_url('admin/surat/surat_masuk'); ?>" class="tile-wide bg-red fg-white" data-role="tile">
                    <div class="tile-content iconic">
                        <span class="icon mif-mail"></span>
                    </div>
                    <span class="tile-label">Daftar Surat Masuk</span>
            </a>
                <a href="<?php echo base_url('admin/surat/surat_keluar_r'); ?>" class="tile bg-darkGreen fg-white" data-role="tile">
                    <div class="tile-content iconic">
                        <span class="icon mif-mail-read"></span>
                    </div>
                    <span class="tile-label">Daftar Surat Keluar (Rektor)</span>
                </a>
                <a href="<?php echo base_url('admin/surat/surat_keluar_nr'); ?>" class="tile bg-amber fg-white" data-role="tile">
                    <div class="tile-content iconic">
                        <span class="icon mif-mail-read"></span>
                    </div>
                    <div class="tile-label">Daftar Surat Keluar (NonRektor)</div>
                </a>
            </div>
        </div>
        
        <div class="tile-group double">
            <!-- <span class="tile-group-title">Administrator</span> -->
            <div class="tile-container">
                <a href="<?php echo base_url('admin/surat/surat_internal'); ?>" class="tile-wide bg-green fg-white" data-role="tile">
                    <div class="tile-content iconic">
                        <span class="icon mif-contacts-mail"></span>
                    </div>
                    <span class="tile-label">Daftar Surat Internal</span>
                </a>

            <a href="<?php echo base_url('admin/surat/master_surat'); ?>" class="tile bg-gray fg-white" data-role="tile">
                <div class="tile-content iconic">
                        <span class="icon mif-mail"></span>
                    </div>
                    <span class="tile-label">Management Master Surat</span>
            </a>

                <a href="<?php echo base_url('admin/user'); ?>" class="tile bg-gray fg-white" data-role="tile">
                    <div class="tile-content iconic">
                        <span class="icon mif-users"></span>
                    </div>
                    <span class="tile-label">User Management</span>
                </a> 
            </div>
        </div>

        <div class="tile-group double">
            <!-- <span class="tile-group-title">Situs Web</span> -->
            <div class="tile-container">
                <a href="http://lppm.ubhara.ac.id" class="tile-wide bg-orange fg-white" data-role="tile">
                    <div class="tile-content iconic">
                        <span class="icon mif-home"></span>
                    </div>
                    <div class="tile-label">LPPM Ubhara Surabaya</div>
                </a>
                <a href="http://ubhara.ac.id" class="tile-wide bg-yellow fg-white" data-role="tile">
                    <div class="tile-content iconic">
                        <span class="icon mif-library"></span>
                    </div>
                    <span class="tile-label">Universitas Bhayangkara Surabaya</span>
                </a>
            </div>
        </div>
    </div>
</body>
</html>