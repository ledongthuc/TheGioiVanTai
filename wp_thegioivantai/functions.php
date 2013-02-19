<?php
add_theme_support( 'post-thumbnails' );

/**
 * If more than one page exists, return TRUE.
 */
function show_posts_nav() {
	global $wp_query;
	return ($wp_query->max_num_pages > 1);
}

function custom_excerpt_length( $length ) {
	return 20;
}
add_filter( 'excerpt_length', 'custom_excerpt_length', 999 );

show_admin_bar( false );

/*
    Enum and enum's function    
*/
//require_once("custom-field/enum_province.php");
require_once("custom-field/enum_vehicle.php");

/*
    Custom fields
*/
require_once("custom-field/chuyen-hang.php");
require_once("custom-field/chuyen-xe.php");
require_once("custom-field/xe.php");
?>
