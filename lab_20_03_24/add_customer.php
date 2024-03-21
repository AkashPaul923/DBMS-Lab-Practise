<center>
	
	<h2 style="padding-top:28px">
		Add record for Customer table
	</h2>
	<form action="add_process.php" method="post"> 
		<table style="border:1px solid #CCCCCC" width="39%" height="83" border="0" cellpadding="0" cellspacing="4">
		  <tr>
			 <td width="42%">Customer Name </td>
			 <td width="2%">:</td>
			 <td width="56%"><input type="text" name="customer_name" /></td>
		  </tr>
		  <tr>
			 <td>Customer Street </td>
			 <td>:</td>
			 <td><input type="text" name="customer_street" /></td>
		  </tr>
		  <tr>
			 <td>Customer city</td>
			 <td>:</td>
			 <td><input type="text" name="customer_city" /></td>
		  </tr>
		  <tr>
			<td><input type="reset" value="Clear"/></td>
			<td></td>
			<td><input type="submit" name="button" id="button" value="Add Customer" /></td>
		</tr>
		  
	   </table>
		
	</form>
	<p><a href="report.php">Report Page</a></p>
	
</center>