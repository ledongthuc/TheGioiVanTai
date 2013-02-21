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
		'id' => '510c73c2f0780',
		'title' => 'Hàng hóa',
		'fields' => 
		array (
			0 => 
			array (
				'key' => 'field_28',
				'label' => 'Mã số',
				'name' => 'code',
				'type' => 'text',
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
							'field' => 'field_30',
							'operator' => '==',
							'value' => 1,
						),
					),
					'allorany' => 'all',
				),
				'default_value' => '',
				'formatting' => 'none',
			),
			1 => 
			array (
				'key' => 'field_29',
				'label' => 'Loại hàng',
				'name' => 'kind',
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
							'field' => 'null',
							'operator' => '==',
							'value' => '',
						),
					),
					'allorany' => 'all',
				),
				'default_value' => '',
				'formatting' => 'none',
			),
			2 => 
			array (
				'key' => 'field_30',
				'label' => 'Loại xe',
				'name' => 'vehicle',
				'type' => 'checkbox',
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
							'field' => 'field_30',
							'operator' => '==',
							'value' => 1,
						),
					),
					'allorany' => 'all',
				),
				'choices' => $enum_vehicle,
			),
			3 => 
			array (
				'key' => 'field_31',
				'label' => 'Đi từ',
				'name' => 'from',
				'type' => 'select',
				'order_no' => 3,
				'instructions' => '',
				'required' => 1,
				'conditional_logic' => 
				array (
					'status' => 0,
					'rules' => 
					array (
						0 => 
						array (
							'field' => 'field_30',
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
			4 => 
			array (
				'key' => 'field_32',
				'label' => 'Đến',
				'name' => 'to',
				'type' => 'select',
				'order_no' => 4,
				'instructions' => '',
				'required' => 1,
				'conditional_logic' => 
				array (
					'status' => 0,
					'rules' => 
					array (
						0 => 
						array (
							'field' => 'field_30',
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
			5 => 
			array (
				'key' => 'field_33',
				'label' => 'Giá',
				'name' => 'price',
				'type' => 'text',
				'order_no' => 5,
				'instructions' => '',
				'required' => 1,
				'conditional_logic' => 
				array (
					'status' => 0,
					'rules' => 
					array (
						0 => 
						array (
							'field' => 'field_30',
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
				'key' => 'field_34',
				'label' => 'Ngày nhận',
				'name' => 'receive-date',
				'type' => 'date_picker',
				'order_no' => 6,
				'instructions' => '',
				'required' => 1,
				'conditional_logic' => 
				array (
					'status' => 0,
					'rules' => 
					array (
						0 => 
						array (
							'field' => 'field_30',
							'operator' => '==',
							'value' => 1,
						),
					),
					'allorany' => 'all',
				),
				'date_format' => 'yymmdd',
				'display_format' => 'dd/mm/yy',
			),
			7 => 
			array (
				'key' => 'field_35',
				'label' => 'Ngày giao',
				'name' => 'delivery-date',
				'type' => 'date_picker',
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
							'field' => 'field_30',
							'operator' => '==',
							'value' => 1,
						),
					),
					'allorany' => 'all',
				),
				'date_format' => 'yymmdd',
				'display_format' => 'dd/mm/yy',
			),
			8 => 
			array (
				'key' => 'field_36',
				'label' => 'Số lượng',
				'name' => 'quantity',
				'type' => 'text',
				'order_no' => 8,
				'instructions' => '',
				'required' => 1,
				'conditional_logic' => 
				array (
					'status' => 0,
					'rules' => 
					array (
						0 => 
						array (
							'field' => 'field_30',
							'operator' => '==',
							'value' => 1,
						),
					),
					'allorany' => 'all',
				),
				'default_value' => '',
				'formatting' => 'html',
			),
			9 => 
			array (
				'key' => 'field_37',
				'label' => 'Quận/Huyện',
				'name' => 'province',
				'type' => 'select',
				'order_no' => 9,
				'instructions' => '',
				'required' => 0,
				'conditional_logic' => 
				array (
					'status' => 0,
					'rules' => 
					array (
						0 => 
						array (
							'field' => 'field_30',
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
			10 => 
			array (
				'key' => 'field_38',
				'label' => 'Hình ảnh',
				'name' => 'image',
				'type' => 'file',
				'order_no' => 10,
				'instructions' => '',
				'required' => 0,
				'conditional_logic' => 
				array (
					'status' => 0,
					'rules' => 
					array (
						0 => 
						array (
							'field' => 'field_30',
							'operator' => '==',
							'value' => 1,
						),
					),
					'allorany' => 'all',
				),
				'save_format' => 'url',
			),
			11 => 
			array (
				'key' => 'field_39',
				'label' => 'Ngày hết hạn',
				'name' => 'expire-date',
				'type' => 'date_picker',
				'order_no' => 11,
				'instructions' => '',
				'required' => 0,
				'conditional_logic' => 
				array (
					'status' => 0,
					'rules' => 
					array (
						0 => 
						array (
							'field' => 'field_30',
							'operator' => '==',
							'value' => 1,
						),
					),
					'allorany' => 'all',
				),
				'date_format' => 'yymmdd',
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
					'value' => 'chuyen_hang',
					'order_no' => 0,
				),
			),
			'allorany' => 'all',
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
