<?php
/*
Plugin Name: Image Slider
Plugin URI: 
Description: Image Slider
Version: 1.1.13
Author: Tuan Phung, Nhat Thai, Thuc Le
Author URI: http://iosappvn.com/
*/

function loadImageSlider() {
	loadSlideScript();
	$images = loadImageFileName();
	
	echo '<div id="slide">';
	echo '<div class="slides_container">';
	foreach($images as $image) {
		echo '<div>';
		echo '<img src="'. plugins_url( 'images/' . $image , __FILE__ ) .'">';
		echo '</div>';
	}
	echo '</div>';
	echo '</div>';
}

function loadImageFileName() {
	//path to directory to scan
	//
	$directory = dirname(__FILE__) . '/images/';

	//get all image files with a .jpg extension.
	$images = glob($directory . "*.*");
	 
	$result = array();
	//print each file name
	foreach($images as $image)
	{
		array_push($result, basename($image));
	}
	return $result;
}

function loadSlideScript() {
	echo '<script src="' . plugins_url('/script.js', __FILE__) . '"></script>';
	echo '<script>loadSlideScript()</script>';
}

add_action('admin_menu', 'register_plugin_menu_page');
function register_plugin_menu_page() {
   add_menu_page('Images Slider', 'Images Slider', 'manage_options', 'images-slider', 'load_upload_page');
}

function load_upload_page() {
	include 'list.php';
	loadListImage();
}

?>

