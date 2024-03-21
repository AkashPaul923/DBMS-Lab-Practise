<?php 
	include 'dbconn.php';
	
	if($_POST["query"]){
		$query = $_POST["query"]; //echo $query;
		
		$result = mysqli_query($conn,$query); //or die( "Error in: ".mysql_error());
		$result2 = mysqli_query($conn,$query); //or die( "Error in: ".mysql_error());
		
		$num = mysqli_num_rows($result); //echo $num;
	}
?>
<html>
<head>
    <title>ABC Bank Ltd</title>
	<link rel="stylesheet" type="text/css" href="style.css" />
	<style>
	.list-table{width:70%;}
	.list-table td{border:1px solid #000;}
	.list-table th{border:2px solid #000;}
	</style>
</head>
<body>

<div align="left" style="width:960px; height: auto; border:1px solid #999; padding:8 20px; margin:5 auto;">
<form style="float:right">

<input type="button" value="Print" onClick="window.print()"/>

</form>
<div>
	
	<h2 style="padding-top:28px;">
		Query report <br/>
	</h2> 
	<h4>
		Query: <?php echo $query;?><br/><br/>
		Result:
	</h4>

		<table class="list-table" border="1" cellspacing="0">
		<?php $j=0; ?>
		<?php while($row = mysqli_fetch_array($result2)){ ?>
		<tr>
			<?php foreach($row as $k => $v){ if($j++%2) echo "<th>".$k."</th>";}?>
		</tr>
		<?php break; ?>
		<?php } ?>
		<?php while($row = mysqli_fetch_row($result)){ ?>
		<tr>
			<?php for ($i=0;$i<count($row);$i++) echo "<td>".$row[$i]."</td>";?>
		</tr>
		
		<?php } ?>
		
		</table>
		<br/>
		<hr/>
	
	
</div>
</div>
<p><a href="add_customer.php">Add Customer</a></p>
</body>
</html>
