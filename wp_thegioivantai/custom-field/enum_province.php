<?php
    $enum_province = array(
        1 => 'An giang',
		2 => 'Bà Rịa Vũng Tàu',
		3 => 'Bạc Liêu',
		4 => 'Bắc Kạn',
		5 => 'Bắc Giang',
		6 => 'Bắc Ninh',
		7 => 'Bến Tre',
		7 => 'Bình Dương',
		8 => 'Bình Định',
		9 => 'Bình Phước',
		10 => 'Bình Thuận',
		11 => 'Cà Mau',
		12 => 'Cao Bằng',
		13 => 'Cần Thơ',
		14 => 'Đà Nẵng',
		15 => 'Đắc Lắk',
		16 => 'Đắc Nông',
		17 => 'Điện Biên',
		18 => 'Đồng Nai',
		19 => 'Đồng Tháp',
		20 => 'Gia Lai',
		21 => 'Hà Giang',
		22 => 'Hà Nam',
		23 => 'Hà Nội',
		24 => 'Hà Tĩnh',
		25 => 'Hải Dương',
		26 => 'Hải Phòng',
		27 => 'Hậu Giang',
		28 => 'Hoà Bình',
		29 => 'Hưng Yên',
		30 => 'Khánh Hoà',
		31 => 'Kiên Giang',
		32 => 'Kon Tum',
		33 => 'Lai Châu',
		34 => 'Lâm Đồng',
		35 => 'Lạng Sơn',
		36 => 'Lào Cai',
		37 => 'Long An',
		38 => 'Nam Định',
		39 => 'Nghệ An',
		40 => 'Ninh Bình',
		41 => 'Ninh Thuận',
		42 => 'Phú Thọ',
		43 => 'Phú Yên',
		44 => 'Quảng Bình',
		45 => 'Quảng Nam',
		46 => 'Quảng Ngãi',
		47 => 'Quảng Ninh',
		48 => 'Quảng Trị',
		49 => 'Sóc Trăng',
		50 => 'Sơn La',
		51 => 'Tây Ninh',
		52 => 'Thái Bình',
		53 => 'Thái Nguyên',
		54 => 'Thanh Hoá',
		55 => 'Thừa Thiên Huế',
		56 => 'Tiền Giang',
		57 => 'TP. Hồ Chí Minh',
		58 => 'Trà Vinh',
		59 => 'Tuyên Quang',
		60 => 'Vĩnh Long',
		61 => 'Vĩnh Phúc',
		62 => 'Yên Bái',
		64 => 'Hà Tây',
		65 => 'Ngoài Việt Nam',
    );
    
    function province_dropdownlist($id, $name, $is_add_all, $selected_value) {
        global $enum_province;
        
        $result = '<select name="' . $id . '" id="' . $name . '">';
        
        if($is_add_all == true) {
             $result = $result . '<option value="-1">-Chọn-</option>';
        }
         
        foreach($enum_province as $key => $value) {
            if($selected_value == $key) {
                $result = $result . '<option value="' . $key . '" selected="">' . $value . '</option>';
            } else {
                $result = $result . '<option value="' . $key . '">' . $value . '</option>';
            }
        }
		$result = $result . '</select>';
		
		return $result;
    }
?>