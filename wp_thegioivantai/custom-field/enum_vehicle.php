<?php
    $enum_vehicle = array (
        1 => 'Xe tải',
    	2 => 'Xe ben',
    	3 => 'Xe Container',
    	4 => 'Chuyên dụng',
    	5 => 'Siêu trường - Siêu trọng',
    	6 => 'Xe bồn',
    	7 => 'Xe cẩu',
    	8 => 'Loại khác'
    );
    function vehicle_dropdownlist($id, $name, $is_add_all, $selected_value) {
        global $enum_vehicle;
        
        $result = '<select name="' . $id . '" id="' . $name . '">';
        
        if($is_add_all == true) {
             $result = $result . '<option value="-1">-Chọn-</option>';
        }
         
        foreach($enum_vehicle as $key => $value) {
            if($selected_value == $key) {
                $result = $result . '<option value="' . $key . '" selected="">' . $value . '</option>';
            } else {
                $result = $result . '<option value="' . $key . '">' . $value . '</option>';
            }
        }
		$result = $result . '</select>';
		
		return $result;
    }
	
	function get_vehicle_from_id($id) {
		global $enum_vehicle;
		
		if($id == null) {
			return "";
		}
		
		if(array_key_exists($id, $enum_vehicle) == false) {
			return "";
		}
		return $enum_vehicle[$id];
	}
	
	function get_vehicles_from_id($idArray) {
		global $enum_vehicle;
		
		if($idArray == null) {
			return "";
		}
		
		if(count($idArray) == 0) {
			return "";
		}
		
		foreach($idArray as $id) {
			if(array_key_exists($id, $enum_vehicle) == false) {
				continue;
			}
			
			$result .= $enum_vehicle[$id] . "; ";
		}
		return $result;
	}
?>