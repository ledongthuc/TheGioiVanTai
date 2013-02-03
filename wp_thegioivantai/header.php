<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html;charset=utf-8"/>

<title><?php bloginfo('name'); ?> <?php if ( is_single() ) { ?> <?php } ?> <?php wp_title(''); ?></title>

<link rel="stylesheet" href="<?php bloginfo('stylesheet_url'); ?>" type="text/css" media="screen" />
<link rel="alternate" type="application/rss+xml" title="RSS 2.0" href="<?php bloginfo('rss2_url'); ?>" />
<link rel="alternate" type="text/xml" title="RSS .92" href="<?php bloginfo('rss_url'); ?>" />
<link rel="alternate" type="application/atom+xml" title="Atom 0.3" href="<?php bloginfo('atom_url'); ?>" />

<link rel="pingback" href="<?php bloginfo('pingback_url'); ?>" />

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
<script src="<?php bloginfo('template_directory');?>/slide/slides.min.jquery.js"></script>
<?php wp_head(); ?>

</head>
<body <?php body_class(); ?> style="background-color:#011727;">

<div id="art-main">
<header class="art-header clearfix">
    <div class="art-shapes">
		<h1 class="art-headline" data-left="6.5%">
			<a href="#">Thế giới vận tải</a>
		</h1>
		<h2 class="art-slogan" data-left="3%">Vận Tải - Kho Bãi - Hàng Hóa</h2>
		<?php
			if (function_exists('loadImageSlider')) {
				loadImageSlider();
			}
		?>
		<div class="art-object1439133047" data-left="69.65%"></div>
		<div class="art-object394026086" data-left="-1%"></div>
    </div>
	
	<nav class="art-nav clearfix desktop-nav">
		<ul class="art-hmenu">
			<li><a id="home" href="<?php bloginfo('url'); ?>">Trang chủ</a></li>
			<li><a id="vehicle" href="<?php bloginfo('url'); ?>/?cat=2">Tìm Xe</a></li>
			<li><a id="goods" href="<?php bloginfo('url'); ?>/?cat=3">Tìm Hàng</a></li>
			<!--<li><a href="#">Tìm Kho</a></li>
			<li><a href="#">Thuê Kho</a></li>
			<li><a href="#">Mua/Bán Xe</a></li>-->
			<li><a id="news" href="<?php bloginfo('url'); ?>/?cat=4">Tin Tức</a></li>
		</ul> 
	</nav> 
	
<?php
	$pageURL = 'http';
	if ($_SERVER["HTTPS"] == "on") 
	{
		$pageURL .= "s";
	}
	
	$pageURL .= "://";
	if ($_SERVER["SERVER_PORT"] != "80") 
	{
		$pageURL .= $_SERVER["SERVER_NAME"].":".$_SERVER["SERVER_PORT"].$_SERVER["REQUEST_URI"];
	} 
	else 
	{
		$pageURL .= $_SERVER["SERVER_NAME"].$_SERVER["REQUEST_URI"];
	}
	
	$currentPage = site_url().'/';
	
	if ( strpos($pageURL, $currentPage."?cat=2") !== false ) { $current = 'vehicle';}
	elseif ( strpos($pageURL, $currentPage."?cat=3") !== false ) { $current = 'goods';}
	elseif ( strpos($pageURL, $currentPage."?cat=4") !== false ) { $current = 'news';}
	elseif ( $pageURL == $currentPage ) { $current = 'home';}
?>

<style type="text/css">
	#<?php echo $current; ?> {
		background: #F4B225;
	   background: linear-gradient(top, #F5BE47 0, #F2AA0D 86%, #E9A30C 100%) no-repeat;
	   background: -webkit-linear-gradient(top, #F5BE47 0, #F2AA0D 86%, #E9A30C 100%) no-repeat;
	   background: -moz-linear-gradient(top, #F5BE47 0, #F2AA0D 86%, #E9A30C 100%) no-repeat;
	   background: -o-linear-gradient(top, #F5BE47 0, #F2AA0D 86%, #E9A30C 100%) no-repeat;
	   background: -ms-linear-gradient(top, #F5BE47 0, #F2AA0D 86%, #E9A30C 100%) no-repeat;
	   background: linear-gradient(top, #F5BE47 0, #F2AA0D 86%, #E9A30C 100%) no-repeat;
	   -svg-background: linear-gradient(top, #F5BE47 0, #F2AA0D 86%, #E9A30C 100%) no-repeat;
	   -webkit-border-radius:7px;
	   -moz-border-radius:7px;
	   border-radius:7px;
	   padding:0 20px;
	   margin:0 auto;
	   color: #262626;
	   text-decoration: none;
	   border: 1px solid;
	}
</style>
