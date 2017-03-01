<!DOCTYPE HTML>
<html>
<head>
	<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
	<!-- JS Loader -->
	<script type="text/javascript">
		$(window).load(function() {
		// Animate loader off screen
		$(".se-pre-con").fadeOut("slow");
	});
	</script>
	<title>Wisata Madura</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
	
	<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" />
	<link rel="stylesheet" href="//ajax.googleapis.com/ajax/libs/jquerymobile/1.4.5/jquery.mobile.min.css" />
	<link rel="stylesheet" href="<?php echo base_url() ?>assets/vendor/waves/waves.min.css" />
	<link rel="stylesheet" href="<?php echo base_url() ?>assets/vendor/wow/animate.css" />
	<link rel="stylesheet" href="<?php echo base_url() ?>assets/css/nativedroid2.css" />
	<link rel="stylesheet" href="<?php echo base_url() ?>assets/css/nativedroid2.color.blue.css" />
	<link rel="stylesheet" href="<?php echo base_url() ?>assets/css/custom.css" />

	<link rel="stylesheet" href="<?php echo base_url() ?>assets/jqte/jquery-te-1.4.0.css" />
	
	<link rel="shortcut icon" href="<?php echo base_url(); ?>assets/files/favicon.png">
	<meta name="mobile-web-app-capable" content="yes">
	<meta name="apple-mobile-web-app-capable" content="yes" />
	<meta name="apple-mobile-web-app-status-bar-style" content="black" />
	<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
	<style type="text/css">
		html{
			font-family: "Helvetica Neue",Helvetica,Arial,Sans-serif !important;
			font-weight: 400 !important;
		}
	</style>
	<style>
      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      
      /* Optional: Makes the sample page fill the window. */
      html, body {
        height: 100%;
        margin: 10;
        padding: 0;
      }
    </style>

	<script>
		var base_url = '<?php echo base_url(); ?>';
	</script>

</head>
<body>
	<!-- Loader -->
	<div class="se-pre-con"></div>

	<div data-role="page">
		<!-- panel left -->
		<div data-role="panel" id="leftpanel" data-display="overlay" data-position-fixed="true" >

			<div class='nd2-sidepanel-profile wow fadeInDown' style="background-image:url('https://c1.staticflickr.com/9/8046/8119190289_3ef5abb1f8_b.jpg'); background-size:305px;">
				
				<div class="row">
					<div style="font-size:20px; color:white; font-weight:700;" class='col-xs-12 center-xs'>
						GISMADURA
					</div>
				</div>
			</div>
			
			<ul id="menu-member" data-role="listview" data-icon="true">
				<li>
					<a data-ajax="false" href="<?php echo base_url(); ?>">
						<img src="http://image.flaticon.com/icons/png/512/149/149053.png" class="ui-li-icon" />
						Home
					</a>
				</li>

			</ul>

			<div data-role="collapsible" data-inset="false" data-collapsed="false"  data-collapsed-icon="carat-d" data-expanded-icon="carat-d" data-iconpos="right">
				<h3>Kategori</h3>
				<ul data-role="listview" data-inset="false" data-icon="false">
					<li><a href="<?php echo base_url(); ?>index.php/main/kategori/pantai">Pantai</a></li>
					<li><a href="<?php echo base_url(); ?>index.php/main/kategori/air-terjun">Air Terjun</a></li>
					<li><a href="<?php echo base_url(); ?>index.php/main/kategori/pegunungan">Pegunungan</a></li>
					<li><a href="<?php echo base_url(); ?>index.php/main/kategori/wisata-kota">Wisata Kota</a></li>
					<li><a href="<?php echo base_url(); ?>index.php/main/kategori/wisata-religi">Wisata Religi</a></li>
				</ul>
			</div>

		</div>
		<!-- /panel left -->

		

			<div data-role="header" class="wow fadeInDown" data-wow-delay="0.2s">
				<a href="#leftpanel" class="ui-btn ui-btn-left wow fadeIn" data-wow-delay='0.8s'><i class="zmdi zmdi-menu"></i></a>
				<h1 class="wow fadeIn" data-wow-delay='0.4s'>Wisata Madura</h1>
				
					<div data-role="navbar">
						<ul>
							<li><a href="<?php echo base_url(); ?>index.php/main/wisata/bangkalan">Bangkalan</a></li>
							<li><a href="<?php echo base_url(); ?>index.php/main/wisata/sampang">Sampang</a></li>
							<li><a href="<?php echo base_url(); ?>index.php/main/wisata/pamekasan">Pamekasan</a></li>
							<li><a href="<?php echo base_url(); ?>index.php/main/wisata/sumenep">Sumenep</a></li>
						</ul>
					</div><!-- /navbar -->
				
			</div>

			<?php echo $_content; ?>

			
			
		</div>
		<script type="text/javascript">
			var base_url = '<?php echo base_url() ?>';		
		</script>
		
		<script src="//code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
		<!--<script type="text/javascript">
			$(document).on("mobileinit", function(){
				$.mobile.ajaxEnabled=false;
				$.mobile.loadingMessage=false;
			});
		</script>-->
		<script src="//ajax.googleapis.com/ajax/libs/jquerymobile/1.4.5/jquery.mobile.min.js"></script>
		<script src="<?php echo base_url() ?>assets/vendor/waves/waves.min.js"></script>
		<script src="<?php echo base_url() ?>assets/vendor/wow/wow.min.js"></script>
		<script src="<?php echo base_url() ?>assets/js/nativedroid2.js"></script>
		<script src="<?php echo base_url() ?>assets/nd2settings.js"></script>
		
		<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyALS7EXhdm7g9XrjOkLIuxXDtsIddLTa10"></script>

		<script>
			var lokasi = [];
			var myLatLng = {lat: -7.127736, lng: 112.724148};
			var myLat = null;
			var myLng = null;

			if(page == 'home'){
				$.ajax({
					url:base_url+'index.php/api/get_all_wisata',
					method:'get',
					success:function(result){
						var res = JSON.parse(result);
						console.log(res['wisata'].length);
						if(res['status'] == 'success'){
							for(var i = 0; i < res['wisata'].length; i++){
								lokasi[i] = [res['wisata'][i].nama_wisata, res['wisata'][i].latitude, res['wisata'][i].longitude, (i+1), res['wisata'][i].foto, res['wisata'][i].slug_wisata]; 
								
							}
							initMap(lokasi);
						}
						
					}
				});
			}else if(page == 'detail'){
				$.ajax({
					url:base_url+'index.php/api/detail_wisata/'+slug,
					method:'get',
					success:function(result){
						var res = JSON.parse(result);
						if(res['status'] == 'success'){
							lokasi = [res['wisata'].nama_wisata, res['wisata'].latitude, res['wisata'].longitude, 1]; 
							initMapDetail(lokasi);
						}
						
					}
				})
			}
			var map = null;
			function initMap(loc) {	
				var locations = loc;

				map = new google.maps.Map(document.getElementById('indexmap'), {
					zoom: 8,
					center: new google.maps.LatLng(-7.048358, 113.359955),
					mapTypeId: google.maps.MapTypeId.ROADMAP
				});

				var infowindow = new google.maps.InfoWindow();

				var marker, i;

				for (i = 0; i < locations.length; i++) { 
				marker = new google.maps.Marker({
					position: new google.maps.LatLng(locations[i][1], locations[i][2]),
					map: map,
					icon: base_url+'assets/marker.png'
				});

				google.maps.event.addListener(marker, 'click', (function(marker, i) {
					return function() {
						var html = 	'<div style="height:75px; width:250px;">'+
									'<div class="row"><div class="col-xs-4"><img style="height:50px; width:100%" src="'+base_url+'assets/wisata/'+locations[i][4]+'" /></div>'+
									'<div class="col-xs-8"><div class="content-nama-wisata">'+locations[i][0]+'</div><a data-ajax="false" href="'+base_url+'index.php/main/detail/'+locations[i][5]+'"><button>Detail</button><button>Cari Rute</button></div></div>'
									'</div>';
						infowindow.setContent(html);
						infowindow.open(map, marker);
					}})(marker, i));
				}
				getLocation();
			}

				
			// var x = document.getElementById("demo");
			function getLocation() {
				if (navigator.geolocation) {
					navigator.geolocation.getCurrentPosition(showPosition);
				} else {
					alert("asdsadsadsad");
				}
			}
			function showPosition(position) {
				//alert("Latitude = "+position.coords.latitude+ "Longitude = "+position.coords.longitude);
				myLat = '-7.159110';
				myLng = '113.257927';
				marker = new google.maps.Marker({
					position: new google.maps.LatLng('-7.159110', '113.257927'),
					map: map,
					icon: base_url+'assets/gps-location-symbol.png'
				});
			}

			function initMapDetail(loc){
				var location = loc;

				var map = new google.maps.Map(document.getElementById('detailmap'), {
					zoom: 12,
					center: new google.maps.LatLng(location[1], location[2])
					// mapTypeId: google.maps.MapTypeId.ROADMAP
				});

				var infowindow = new google.maps.InfoWindow();

				marker = new google.maps.Marker({
					position: new google.maps.LatLng(location[1], location[2]),
					map: map,
					icon: base_url+'assets/marker.png'
				});

				google.maps.event.addListener(marker, 'click', (function(marker) {
					return function() {
						infowindow.setContent(location[0]+'<br><a href="#"><button>Dapatkan Rute Wisata</button></a>');
						infowindow.open(map, marker);
					}})(marker));
				}
		</script>

		<script>
			$('#cariterdekat').on('click', function(){
				var lat = myLat;
				var lng = myLng;

				find_closest_marker(lat, lng);
			});

			function rad(x) {return x*Math.PI/180;}
			function find_closest_marker(lat, lng) {
				var R = 6371; // radius of earth in km
				var distances = [];
				var closest = -1;
				for( i=0;i<lokasi.length; i++ ) {
					var mlat = lokasi[i][1];
					var mlng = lokasi[i][2];
					var dLat  = rad(mlat - lat);
					var dLong = rad(mlng - lng);
					var a = Math.sin(dLat/2) * Math.sin(dLat/2) +
						Math.cos(rad(lat)) * Math.cos(rad(lat)) * Math.sin(dLong/2) * Math.sin(dLong/2);
					var c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a));
					var d = R * c;
					distances[i] = d;
					if ( closest == -1 || d < distances[closest] ) {
						closest = i;
					}
				}
				
				loc = new google.maps.LatLng(lokasi[closest][1], lokasi[closest][2]);
				map.setCenter(loc);
				map.setZoom(14);
			}
		</script>	

		 <script>
		 
		</script>

	</body>
</html>
