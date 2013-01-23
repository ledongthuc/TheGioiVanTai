<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html;charset=utf-8">

<title><?php bloginfo('name'); ?> <?php if ( is_single() ) { ?> <?php } ?> <?php wp_title(''); ?></title>

<link rel="stylesheet" href="<?php bloginfo('template_directory');?>/bootstrap.min.css" media="screen" />
<link rel="stylesheet" href="<?php bloginfo('stylesheet_url'); ?>" type="text/css" media="screen" />
<link rel="alternate" type="application/rss+xml" title="RSS 2.0" href="<?php bloginfo('rss2_url'); ?>" />
<link rel="alternate" type="text/xml" title="RSS .92" href="<?php bloginfo('rss_url'); ?>" />
<link rel="alternate" type="application/atom+xml" title="Atom 0.3" href="<?php bloginfo('atom_url'); ?>" />

<link rel="pingback" href="<?php bloginfo('pingback_url'); ?>" />

<?php wp_head(); ?>
</head>
<body>
<div id="art-main">
<header class="art-header clearfix">
    <div class="art-shapes">
		<h1 class="art-headline" data-left="6.5%">
			<a href="#">Thế giới vận tải</a>
		</h1>
		<h2 class="art-slogan" data-left="3%">Vận Tải - Kho Bãi - Hàng Hóa</h2>
		<div class="art-object1439133047" data-left="69.65%"></div>
		<div class="art-object394026086" data-left="-1%"></div>
    </div>

	<nav class="art-nav clearfix desktop-nav">
		<ul class="art-hmenu">
			<li><a href="#" class="active">Trang Chủ</a></li>
			<li><a href="<?php bloginfo('url'); ?>/?cat=2">Tìm Xe</a></li>
			<li><a href="<?php bloginfo('url'); ?>/?cat=3">Tìm Hàng</a></li>
			<!--<li><a href="#">Tìm Kho</a></li>
			<li><a href="#">Thuê Kho</a></li>
			<li><a href="#">Mua/Bán Xe</a></li>-->
			<li><a href="<?php bloginfo('url'); ?>/?cat=4">Tin Tức</a></li>
		</ul> 
	</nav>               
</header>

<div class="art-sheet clearfix">
<div class="art-layout-wrapper clearfix">