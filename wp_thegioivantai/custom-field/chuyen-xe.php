<?php
/**
 * Register field groups
 * The register_field_group function accepts 1 array which holds the relevant data to register a field group
 * You may edit the array as you see fit. However, this may result in errors if the array is not compatible with ACF
 * This code must run every time the functions.php file is read
 */

if(function_exists("register_field_group"))
{
	register_field_group(array (
		'id' => '510c73357c4ff',
		'title' => 'Chuyến xe',
		'fields' => 
		array (
			0 => 
			array (
				'key' => 'field_4',
				'label' => 'Chiều đi',
				'name' => 'type',
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
				'choices' => $enum_chuyenxe_type,
				'default_value' => 1,
				'allow_null' => 0,
				'multiple' => 0,
			),
			1 => 
			array (
				'key' => 'field_5',
				'label' => 'Mã số',
				'name' => 'code',
				'type' => 'text',
				'order_no' => 1,
				'instructions' => '',
				'required' => 1,
				'conditional_logic' => 
				array (
					'status' => 0,
					'rules' => 
					array (
						0 => 
						array (
							'field' => 'field_4',
							'operator' => '==',
							'value' => 1,
						),
					),
					'allorany' => 'all',
				),
				'default_value' => 'X00001',
				'formatting' => 'none',
			),
			2 => 
			array (
				'key' => 'field_6',
				'label' => 'Đi từ',
				'name' => 'from',
				'type' => 'select',
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
							'field' => 'field_4',
							'operator' => '==',
							'value' => 1,
						),
					),
					'allorany' => 'all',
				),
				'choices' => $enum_province,
				'default_value' => '',
				'allow_null' => 0,
				'multiple' => 0,
			),
			3 => 
			array (
				'key' => 'field_7',
				'label' => 'Nơi đến',
				'name' => 'to',
				'type' => 'select',
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
							'field' => 'field_4',
							'operator' => '==',
							'value' => 1,
						),
					),
					'allorany' => 'all',
				),
				'choices' => $enum_province,
				'default_value' => '',
				'allow_null' => 1,
				'multiple' => 0,
			),
			4 => 
			array (
				'key' => 'field_8',
				'label' => 'Ngày khởi hành',
				'name' => 'start-date',
				'type' => 'date_picker',
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
							'field' => 'field_4',
							'operator' => '==',
							'value' => 1,
						),
					),
					'allorany' => 'all',
				),
				'date_format' => 'dd/mm/yy',
				'display_format' => 'dd/mm/yy',
			),
			5 => 
			array (
				'key' => 'field_9',
				'label' => 'Giá',
				'name' => 'price',
				'type' => 'text',
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
							'field' => 'field_4',
							'operator' => '==',
							'value' => 1,
						),
					),
					'allorany' => 'all',
				),
				'default_value' => '',
				'formatting' => 'none',
			),
			6 => 
			array (
				'key' => 'field_14',
				'label' => 'Số lượng xe',
				'name' => 'quantity',
				'type' => 'text',
				'order_no' => 6,
				'instructions' => '',
				'required' => 0,
				'conditional_logic' => 
				array (
					'status' => 0,
					'rules' => 
					array (
						0 => 
						array (
							'field' => 'field_4',
							'operator' => '==',
							'value' => 1,
						),
					),
					'allorany' => 'all',
				),
				'default_value' => '',
				'formatting' => 'none',
			),
			7 => 
			array (
				'key' => 'field_24',
				'label' => 'Quận/huyện',
				'name' => 'province',
				'type' => 'select',
				'order_no' => 7,
				'instructions' => '',
				'required' => 0,
				'conditional_logic' => 
				array (
					'status' => 0,
					'rules' => 
					array (
						0 => 
						array (
							'field' => 'field_4',
							'operator' => '==',
							'value' => 1,
						),
					),
					'allorany' => 'all',
				),
				'choices' => $enum_province,
				'default_value' => '',
				'allow_null' => 0,
				'multiple' => 0,
			),
			8 => 
			array (
				'key' => 'field_25',
				'label' => 'Ngày hết hạn đăng tin',
				'name' => 'expire-date',
				'type' => 'date_picker',
				'order_no' => 8,
				'instructions' => '',
				'required' => 0,
				'conditional_logic' => 
				array (
					'status' => 0,
					'rules' => 
					array (
						0 => 
						array (
							'field' => 'field_4',
							'operator' => '==',
							'value' => 1,
						),
					),
					'allorany' => 'all',
				),
				'date_format' => 'dd/mm/yy',
				'display_format' => 'dd/mm/yy',
			),
		),
		'location' => 
		array (
			'rules' => 
			array (
				0 => 
				array (
					'param' => 'post_type',
					'operator' => '==',
					'value' => 'chuyen_xe',
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
		'menu_order' => 0,
	));
}
?>
