/**
 * Activate Add-ons
 * Here you can enter your activation codes to unlock Add-ons to use in your theme. 
 * Since all activation codes are multi-site licenses, you are allowed to include your key in premium themes.
 */ 

function my_acf_settings( $options )
{
    // activate add-ons
    $options['activation_codes']['repeater'] = 'XXXX-XXXX-XXXX-XXXX';
    $options['activation_codes']['options_page'] = 'XXXX-XXXX-XXXX-XXXX';
    $options['activation_codes']['flexible_content'] = 'XXXX-XXXX-XXXX-XXXX';
    $options['activation_codes']['gallery'] = 'XXXX-XXXX-XXXX-XXXX';
    
    // setup other options (http://www.advancedcustomfields.com/docs/filters/acf_settings/)
    
    return $options;
    
}
add_filter('acf_settings', 'my_acf_settings');


/**
 * Register field groups
 * The register_field_group function accepts 1 array which holds the relevant data to register a field group
 * You may edit the array as you see fit. However, this may result in errors if the array is not compatible with ACF
 * This code must run every time the functions.php file is read
 */

if(function_exists("register_field_group"))
{
	register_field_group(array (
		'id' => '510480dd71f23',
		'title' => 'Thông tin về xe',
		'fields' => 
		array (
			0 => 
			array (
				'key' => 'field_18',
				'label' => 'Loại xe',
				'name' => 'vehicle',
				'type' => 'select',
				'order_no' => 0,
				'instructions' => '',
				'required' => 1,
				'conditional_logic' => 
				array (
					'status' => 0,
					'rules' => 
					array (
						0 => 
						array (
							'field' => 'null',
							'operator' => '==',
							'value' => '',
						),
					),
					'allorany' => 'all',
				),
				'choices' => 
				array (
					1 => 'Xe tải',
					2 => 'Xe ben',
					3 => 'Xe Container',
					4 => 'Chuyên dụng',
					5 => 'Siêu trường - Siêu trọng',
					6 => 'Xe bồn',
					7 => 'Xe cẩu',
					8 => 'Loại khác',
				),
				'default_value' => 8,
				'allow_null' => 0,
				'multiple' => 0,
			),
			1 => 
			array (
				'key' => 'field_19',
				'label' => 'Biển số xe',
				'name' => 'license-plate',
				'type' => 'text',
				'order_no' => 1,
				'instructions' => '',
				'required' => 0,
				'conditional_logic' => 
				array (
					'status' => 0,
					'rules' => 
					array (
						0 => 
						array (
							'field' => 'field_18',
							'operator' => '==',
							'value' => 1,
						),
					),
					'allorany' => 'all',
				),
				'default_value' => '',
				'formatting' => 'none',
			),
			2 => 
			array (
				'key' => 'field_20',
				'label' => 'Trọng tải',
				'name' => 'capacity',
				'type' => 'text',
				'order_no' => 2,
				'instructions' => '',
				'required' => 0,
				'conditional_logic' => 
				array (
					'status' => 0,
					'rules' => 
					array (
						0 => 
						array (
							'field' => 'field_18',
							'operator' => '==',
							'value' => 1,
						),
					),
					'allorany' => 'all',
				),
				'default_value' => '',
				'formatting' => 'none',
			),
			3 => 
			array (
				'key' => 'field_21',
				'label' => 'Kích thước',
				'name' => 'Size',
				'type' => 'text',
				'order_no' => 3,
				'instructions' => '',
				'required' => 0,
				'conditional_logic' => 
				array (
					'status' => 0,
					'rules' => 
					array (
						0 => 
						array (
							'field' => 'field_18',
							'operator' => '==',
							'value' => 1,
						),
					),
					'allorany' => 'all',
				),
				'default_value' => '',
				'formatting' => 'none',
			),
			4 => 
			array (
				'key' => 'field_23',
				'label' => 'Hiệu Xe',
				'name' => 'brand-vehicle',
				'type' => 'text',
				'order_no' => 4,
				'instructions' => '',
				'required' => 0,
				'conditional_logic' => 
				array (
					'status' => 0,
					'rules' => 
					array (
						0 => 
						array (
							'field' => 'field_18',
							'operator' => '==',
							'value' => 1,
						),
					),
					'allorany' => 'all',
				),
				'default_value' => '',
				'formatting' => 'none',
			),
			5 => 
			array (
				'key' => 'field_22',
				'label' => 'Hình xe',
				'name' => 'Image-vehicle',
				'type' => 'image',
				'order_no' => 5,
				'instructions' => '',
				'required' => 0,
				'conditional_logic' => 
				array (
					'status' => 0,
					'rules' => 
					array (
						0 => 
						array (
							'field' => 'field_18',
							'operator' => '==',
							'value' => 1,
						),
					),
					'allorany' => 'all',
				),
				'save_format' => 'url',
				'preview_size' => 'thumbnail',
			),
		),
		'location' => 
		array (
			'rules' => 
			array (
				0 => 
				array (
					'param' => 'post_category',
					'operator' => '==',
					'value' => '8',
					'order_no' => 0,
				),
			),
			'allorany' => 'any',
		),
		'options' => 
		array (
			'position' => 'normal',
			'layout' => 'default',
			'hide_on_screen' => 
			array (
			),
		),
		'menu_order' => 1,
	));
}

