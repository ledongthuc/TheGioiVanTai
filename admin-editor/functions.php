<?php
/*
Plugin Name: Admin Editor
Plugin URI: 
Description: Customize Admin menu
Version: 1.1.13
Author: Tuan Phung
Author URI: http://iosappvn.com/
*/

//global $array_post_type;
add_action( 'init', 'init_post_type' );
function init_post_type() {
	global $wpdb;
	$post_types = $wpdb->get_results("SELECT * FROM custom_post_type;");
	foreach($post_types as $post_type) {
		add_post_type_to_admin_menu($post_type);
	}
}

function add_post_type_to_admin_menu($post_type) {
	$type = $post_type->type;
	$title = $post_type->title;
	
	$labels = array(
    'name' => $title,
    'singular_name' => $title,
    'add_new' => 'Thêm mới',
    'add_new_item' => 'Thêm mới '. $title,
    'edit_item' => 'Sửa '. $title,
    'new_item' => $title.' mới',
    'all_items' => 'Tất cả ' . $title,
    'view_item' => 'Xem ' , $title,
    'search_items' => 'Tìm kiếm ' . $title,
    'not_found' =>  'Không tìm thấy ' . $title,
    'not_found_in_trash' => 'Không tìm thấy ' . $title . ' trong thùng rác', 
    'parent_item_colon' => '',
    'menu_name' => $title
  );

  $args = array(
    'labels' => $labels,
    'public' => true,
    'publicly_queryable' => true,
    'show_ui' => true, 
    'show_in_menu' => true, 
    'query_var' => true,
    'rewrite' => array( 'slug' => $type ),
    'capability_type' => 'post',
    'has_archive' => true, 
    'hierarchical' => false,
    'menu_position' => null,
    'supports' => array( 'title', 'editor', 'thumbnail', 'excerpt', 'comments', 'author', 'custom-fields' )
  ); 

  register_post_type( $type, $args );
}

/*---------------------------------------------------
remove default menu item
----------------------------------------------------*/
add_action( 'admin_menu', 'my_remove_menu_pages' );
function my_remove_menu_pages() {
	//remove_menu_page('edit.php');
	remove_menu_page('index.php');
	remove_menu_page('widgets.php');
	remove_menu_page('users.php');
	remove_menu_page('upload.php');
	remove_menu_page('edit.php?post_type=page');
	//remove_menu_page('options-general.php');
	remove_menu_page('link-manager.php');
}
	
/*---------------------------------------------------
change position of menu item
----------------------------------------------------*/

add_filter('custom_menu_order', 'my_custom_menu_order');
add_filter('menu_order', 'my_custom_menu_order');

function my_custom_menu_order($menu_order) {
    if (!$menu_order) return true; 

	$new_menu_order = array();
	global $wpdb;
	$post_types = $wpdb->get_results("SELECT * FROM custom_post_type order by id asc;");
	foreach($post_types as $post_type) {
		array_push($new_menu_order, 'edit.php?post_type='.$post_type->type);
	}
	
	return $new_menu_order;
}

/*---------------------------------------------------
change theme for admin panel
----------------------------------------------------*/
function my_admin_head() {
        echo '<link rel="stylesheet" type="text/css" href="' .plugins_url('admin-theme.css', __FILE__). '">';
}

add_action('admin_head', 'my_admin_head');

?>
