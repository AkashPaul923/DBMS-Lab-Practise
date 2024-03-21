<?php
//-------- DB Connect --------------

$thishost="localhost";	$dbuser="root";		$dbpassword="";		
//$database="abbank";
$database="bankucb";

$conn=mysqli_connect($thishost,$dbuser,$dbpassword,$database);

//mysql_select_db($database) or die( "Unable to select database".mysql_error());

//----------------------------------
?>