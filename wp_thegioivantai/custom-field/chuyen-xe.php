/**
 * Register field groups
 * The register_field_group function accepts 1 array which holds the relevant data to register a field group
 * You may edit the array as you see fit. However, this may result in errors if the array is not compatible with ACF
 * This code must run every time the functions.php file is read
 */

if(function_exists("register_field_group"))
{
	register_field_group(array (
		'id' => '51048070e8d8b',
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
				'choices' => 
				array (
					1 => 'Xe đi',
					2 => 'Xe quay về',
					3 => 'Xe thường ngày',
				),
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
				'choices' => 
				array (
					'An giang' => 'An giang',
					'Bà Rịa Vũng Tàu' => 'Bà Rịa Vũng Tàu',
					'Bạc Liêu' => 'Bạc Liêu',
					'Bắc Kạn' => 'Bắc Kạn',
					'Bắc Giang' => 'Bắc Giang',
					'Bắc Ninh' => 'Bắc Ninh',
					'Bến Tre' => 'Bến Tre',
					'Bình Dương' => 'Bình Dương',
					'Bình Định' => 'Bình Định',
					'Bình Phước' => 'Bình Phước',
					'Bình Thuận' => 'Bình Thuận',
					'Cà Mau' => 'Cà Mau',
					'Cao Bằng' => 'Cao Bằng',
					'Cần Thơ' => 'Cần Thơ',
					'Đà Nẵng' => 'Đà Nẵng',
					'Đắc Lắk' => 'Đắc Lắk',
					'Đắc Nông' => 'Đắc Nông',
					'Điện Biên' => 'Điện Biên',
					'Đồng Nai' => 'Đồng Nai',
					'Đồng Tháp' => 'Đồng Tháp',
					'Gia Lai' => 'Gia Lai',
					'Hà Giang' => 'Hà Giang',
					'Hà Nam' => 'Hà Nam',
					'Hà Nội' => 'Hà Nội',
					'Hà Tĩnh' => 'Hà Tĩnh',
					'Hải Dương' => 'Hải Dương',
					'Hải Phòng' => 'Hải Phòng',
					'Hậu Giang' => 'Hậu Giang',
					'Hoà Bình' => 'Hoà Bình',
					'Hưng Yên' => 'Hưng Yên',
					'Khánh Hoà' => 'Khánh Hoà',
					'Kiên Giang' => 'Kiên Giang',
					'Kon Tum' => 'Kon Tum',
					'Lai Châu' => 'Lai Châu',
					'Lâm Đồng' => 'Lâm Đồng',
					'Lạng Sơn' => 'Lạng Sơn',
					'Lào Cai' => 'Lào Cai',
					'Long An' => 'Long An',
					'Nam Định' => 'Nam Định',
					'Nghệ An' => 'Nghệ An',
					'Ninh Bình' => 'Ninh Bình',
					'Ninh Thuận' => 'Ninh Thuận',
					'Phú Thọ' => 'Phú Thọ',
					'Phú Yên' => 'Phú Yên',
					'Quảng Bình' => 'Quảng Bình',
					'Quảng Nam' => 'Quảng Nam',
					'Quảng Ngãi' => 'Quảng Ngãi',
					'Quảng Ninh' => 'Quảng Ninh',
					'Quảng Trị' => 'Quảng Trị',
					'Sóc Trăng' => 'Sóc Trăng',
					'Sơn La' => 'Sơn La',
					'Tây Ninh' => 'Tây Ninh',
					'Thái Bình' => 'Thái Bình',
					'Thái Nguyên' => 'Thái Nguyên',
					'Thanh Hoá' => 'Thanh Hoá',
					'Thừa Thiên Huế' => 'Thừa Thiên Huế',
					'Tiền Giang' => 'Tiền Giang',
					'TP. Hồ Chí Minh' => 'TP. Hồ Chí Minh',
					'Trà Vinh' => 'Trà Vinh',
					'Tuyên Quang' => 'Tuyên Quang',
					'Vĩnh Long' => 'Vĩnh Long',
					'Vĩnh Phúc' => 'Vĩnh Phúc',
					'Yên Bái' => 'Yên Bái',
					'Hà Tây' => 'Hà Tây',
					'Ngoài Việt Nam' => 'Ngoài Việt Nam',
				),
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
				'choices' => 
				array (
				),
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
				'date_format' => 'yymmdd',
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
				'choices' => 
				array (
					'An giang' => 'An giang',
					'Bà Rịa Vũng Tàu' => 'Bà Rịa Vũng Tàu',
					'Bạc Liêu' => 'Bạc Liêu',
					'Bắc Kạn' => 'Bắc Kạn',
					'Bắc Giang' => 'Bắc Giang',
					'Bắc Ninh' => 'Bắc Ninh',
					'Bến Tre' => 'Bến Tre',
					'Bình Dương' => 'Bình Dương',
					'Bình Định' => 'Bình Định',
					'Bình Phước' => 'Bình Phước',
					'Bình Thuận' => 'Bình Thuận',
					'Cà Mau' => 'Cà Mau',
					'Cao Bằng' => 'Cao Bằng',
					'Cần Thơ' => 'Cần Thơ',
					'Đà Nẵng' => 'Đà Nẵng',
					'Đắc Lắk' => 'Đắc Lắk',
					'Đắc Nông' => 'Đắc Nông',
					'Điện Biên' => 'Điện Biên',
					'Đồng Nai' => 'Đồng Nai',
					'Đồng Tháp' => 'Đồng Tháp',
					'Gia Lai' => 'Gia Lai',
					'Hà Giang' => 'Hà Giang',
					'Hà Nam' => 'Hà Nam',
					'Hà Nội' => 'Hà Nội',
					'Hà Tĩnh' => 'Hà Tĩnh',
					'Hải Dương' => 'Hải Dương',
					'Hải Phòng' => 'Hải Phòng',
					'Hậu Giang' => 'Hậu Giang',
					'Hoà Bình' => 'Hoà Bình',
					'Hưng Yên' => 'Hưng Yên',
					'Khánh Hoà' => 'Khánh Hoà',
					'Kiên Giang' => 'Kiên Giang',
					'Kon Tum' => 'Kon Tum',
					'Lai Châu' => 'Lai Châu',
					'Lâm Đồng' => 'Lâm Đồng',
					'Lạng Sơn' => 'Lạng Sơn',
					'Lào Cai' => 'Lào Cai',
					'Long An' => 'Long An',
					'Nam Định' => 'Nam Định',
					'Nghệ An' => 'Nghệ An',
					'Ninh Bình' => 'Ninh Bình',
					'Ninh Thuận' => 'Ninh Thuận',
					'Phú Thọ' => 'Phú Thọ',
					'Phú Yên' => 'Phú Yên',
					'Quảng Bình' => 'Quảng Bình',
					'Quảng Nam' => 'Quảng Nam',
					'Quảng Ngãi' => 'Quảng Ngãi',
					'Quảng Ninh' => 'Quảng Ninh',
					'Quảng Trị' => 'Quảng Trị',
					'Sóc Trăng' => 'Sóc Trăng',
					'Sơn La' => 'Sơn La',
					'Tây Ninh' => 'Tây Ninh',
					'Thái Bình' => 'Thái Bình',
					'Thái Nguyên' => 'Thái Nguyên',
					'Thanh Hoá' => 'Thanh Hoá',
					'Thừa Thiên Huế' => 'Thừa Thiên Huế',
					'Tiền Giang' => 'Tiền Giang',
					'TP. Hồ Chí Minh' => 'TP. Hồ Chí Minh',
					'Trà Vinh' => 'Trà Vinh',
					'Tuyên Quang' => 'Tuyên Quang',
					'Vĩnh Long' => 'Vĩnh Long',
					'Vĩnh Phúc' => 'Vĩnh Phúc',
					'Yên Bái' => 'Yên Bái',
					'Hà Tây' => 'Hà Tây',
					'Ngoài Việt Nam' => 'Ngoài Việt Nam',
				),
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
		'menu_order' => 0,
	));
}

