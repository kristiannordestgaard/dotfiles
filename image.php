<?php 
$pics = glob('Ceiling-Cat-Picture.jpg', GLOB_NOSORT); 
$pic = $pics[array_rand($pics)]; 
header("Content-type: image/jpeg"); 
header("Content-Disposition: filename=\"" . basename($pic) . "\""); 
readfile($pic); 
?>
