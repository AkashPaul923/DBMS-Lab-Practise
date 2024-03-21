<?php
	include 'dbconn.php';



/**************************************  Add Customer  ***************************************/
	if($_POST['button']=='Add Customer')
	{
		$customer_name = $_POST["customer_name"];
		$customer_street = $_POST["customer_street"];
		$customer_city = $_POST["customer_city"]; //echo $branch_name; exit;
	
		if(!empty($customer_name) && !empty($customer_street)){
			$query = "INSERT INTO customer 
					  SET customer_name = '{$customer_name}',
					  	  customer_street = '{$customer_street}',
					  	  customer_city = '{$customer_city}'";
		
			$result = mysqli_query($conn,$query) or die( "Error in insertion: ".mysql_error());
			echo "<script>window.alert('Added succsessfully');</script>";
			echo "<script>window.location='add_customer.php';</script>";
		}
		echo "<script>window.location='add_customer';</script>";
	}



		?>