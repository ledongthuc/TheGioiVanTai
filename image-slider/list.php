<?php
function loadListImage() {
	$directory = dirname(__FILE__) . '/images/';
	//get all image files with a .jpg extension.
	$images = glob($directory . "*.jpg");
	
	echo '<table>';
	foreach($images as $image)
	{
		echo '<tr>';
		echo '<td><img src="' . plugins_url( 'images/' . basename($image) , __FILE__ ) .'" width="150px" /></td>';
		echo '<td><a href="'. plugins_url('/list.php?action=delete&filename='. basename($image), __FILE__) .'" >Delete</a></td>';
		echo '</tr>';
	}
	echo '</table>';
	
	echo '<div style="float:left;">';
	echo '<form action="'. plugins_url('/upload.php', __FILE__) .'" method="post" enctype="multipart/form-data">';
	echo '<label for="file">Filename:</label>';
	echo '<input type="file" name="file" id="file"><br>';
	echo '<input type="submit" name="submit" value="Submit">';
	echo '</form>';
	echo '</div>';
}

if (isset($_GET["action"]) && isset($_GET["filename"])) 
{
	$action = $_GET["action"];
	$filename = $_GET["filename"];
	if ($action == "delete")
	{
		$filePath = dirname(__FILE__) . '/images/' . $filename;
		if(file_exists($filePath)){
			unlink($filePath);
		}
	}
	
	header('Location: ../../../wp-admin/admin.php?page=images-slider');
}
?>