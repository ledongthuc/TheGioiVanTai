<?php
    $enum_chuyenxe_type = array (
		1 => 'Xe đi',
		2 => 'Xe quay về',
		3 => 'Xe thường ngày',
	);
	
	function get_chuyenxe_type_from_id($id) {
		global $enum_chuyenxe_type;
		
		if($id == null) {
			return "";
		}
		
		if(array_key_exists($id, $enum_chuyenxe_type) == false) {
			return "";
		}
		return $enum_chuyenxe_type[$id];
	}
?>