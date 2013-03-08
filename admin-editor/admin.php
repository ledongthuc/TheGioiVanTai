<?php/*
add_action( 'admin_menu', 'my_remove_menu_pages' );
	function my_remove_menu_pages() {
		remove_menu_page('edit.php');
		remove_menu_page('tools.php');	
		remove_menu_page('widgets.php');
		remove_menu_page('users.php');
		remove_menu_page('upload.php');
		remove_menu_page('edit.php?post_type=page');
		remove_menu_page('edit-comments.php');
		remove_menu_page('options-general.php');
		remove_menu_page('link-manager.php');
	}

add_action('admin_menu', 'register_custom_menu_page');
function register_custom_menu_page() {
   add_menu_page('custom menu title', 'Hang', 'add_users', 'edit.php?s&post_status=all&post_type=post&action=-1&m=0&cat=3&paged=1&mode=list&action2=-1', '',   plugins_url('myplugin/images/icon.png'), 1);
   
   add_menu_page('custom menu title', 'Xe', 'add_users', 'edit.php?s&post_status=all&post_type=post&action=-1&m=0&cat=4&paged=1&mode=list&action2=-1', '',   plugins_url('myplugin/images/icon.png'), 2);
   
   add_menu_page('custom menu title', 'Kho', 'add_users', 'edit-custom.php?s&post_status=all&post_type=post&action=-1&m=0&cat=5&paged=1&mode=list&action2=-1', '',   plugins_url('myplugin/images/icon.png'), 3);
}

function my_admin_head() {
        echo '<link rel="stylesheet" type="text/css" href="' .plugins_url('wp-admin.css', __FILE__). '">';
}

add_action('admin_head', 'my_admin_head');

add_filter('admin_footer_text', 'left_admin_footer_text_output'); //left side
function left_admin_footer_text_output($text) {
    $text = 'How much wood would a woodchuck chuck?';
    return $text;
}
 
add_filter('update_footer', 'right_admin_footer_text_output', 11); //right side
function right_admin_footer_text_output($text) {
    $text = 'That\'s purely hypothetical.';
    return $text;
}
*/
/*
add_action('admin_menu', 'register_my_custom_submenu_page');
function register_my_custom_submenu_page() {
	add_submenu_page( 'tools.php', 'My Custom Submenu Page2', 'My Custom Submenu Page1', 'manage_options', 'my-custom-submenu-page', 'my_custom_submenu_page_callback' ); 
}
function my_custom_submenu_page_callback() {
	echo '<h3>My Custom Submenu Page</h3>';

}


*/	


/*---------------------------------------------------
add menu page for each category
----------------------------------------------------*/
function codex_custom_init() {
  $labels = array(
    'name' => 'Books',
    'singular_name' => 'Book',
    'add_new' => 'Add New',
    'add_new_item' => 'Add New Book',
    'edit_item' => 'Edit Book',
    'new_item' => 'New Book',
    'all_items' => 'All Books',
    'view_item' => 'View Book',
    'search_items' => 'Search Books',
    'not_found' =>  'No books found',
    'not_found_in_trash' => 'No books found in Trash', 
    'parent_item_colon' => '',
    'menu_name' => 'Books'
  );

  $args = array(
    'labels' => $labels,
    'public' => true,
    'publicly_queryable' => true,
    'show_ui' => true, 
    'show_in_menu' => true, 
    'query_var' => true,
    'rewrite' => array( 'slug' => 'book' ),
    'capability_type' => 'post',
    'has_archive' => true, 
    'hierarchical' => false,
    'menu_position' => null,
	'taxonomies' => array('category'),
    'supports' => array( 'title', 'editor', 'author', 'thumbnail', 'excerpt', 'comments' )
  ); 

  register_post_type( 'book', $args );
}
//add_action( 'init', 'codex_custom_init' );

//filter
/*
add_action('restrict_manage_posts','my_restrict_manage_posts');

		function my_restrict_manage_posts() {
			global $typenow;

			if ($typenow=='abcd'){
                         $args = array(
                             'show_option_all' => "Show All Categories",
                             'taxonomy'        => 'category',
                             'name'               => 'category'

                         );
				wp_dropdown_categories($args);
                        }
		}
add_action( 'request', 'my_request' );
function my_request($request) {
	if (is_admin() && $GLOBALS['PHP_SELF'] == '/wp-admin/edit.php' && isset($request['post_type']) && $request['post_type']=='your_custom_post_type') {
		$request['term'] = get_term($request['category'],'category')->name;

	}
	return $request;
}
*/
function my_remove_actions( $actions, $post ) {
    if( $post->post_type == 'post' ) {
        unset( $actions['inline hide-if-no-js'] );
    }
    return $actions;
}
//add_filter( 'post_row_actions', 'my_remove_actions', 10, 2 );


function add_category_menu() {
	$categories = get_categories('hide_empty=0&orderby=name');
	$all_cats = array();
	foreach ($categories as $category_item ) {
		add_menu_page( $category_item->cat_name, $category_item->cat_name, 'manage_options', $category_item->cat_name, 'theme_settings_page');
	}
}
 
/*---------------------------------------------------
add actions
----------------------------------------------------*/
//add_action( 'admin_menu', 'add_category_menu' );
 
/*---------------------------------------------------
Theme Panel Output
----------------------------------------------------*/
function theme_settings_page() {

	$categories = get_categories('hide_empty=0&orderby=name');
	$all_cats = array();
	foreach ($categories as $category_item ) {
		query_posts( 'cat='.$category_item->cat_ID );
		while (have_posts()) : the_post();
			the_excerpt();
		endwhile;
	}
	
}
?>
