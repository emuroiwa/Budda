<?php
	 include 'opendb.php';
	 $rs1 = mysql_query("UPDATE bookings SET status = '1' where code = '$_REQUEST[code]'");
	
	 $res = mysql_query("select * from questions");
	
	while($row = mysql_fetch_array($res))
	{	
	$answerid = $_POST['answerid'.$row['id']];
	 $rs = mysql_query("select * from answers where id ='$answerid' and status = '1'");
	 $rw += mysql_num_rows($rs);
	
	 $rs1 = mysql_query("select * from answers where id ='$answerid'");
	 $rw1 += mysql_num_rows($rs1);
	  }
	  $percentage = (($rw / 25) * 100);
	  
	  if($percentage > 50)
	  {
	  $msg = "Congradulations for passing our online exam you can login into your account and print you certificate";
	   $rs2 = mysql_query("insert into marks(id,code,mark) values(NULL,'$_REQUEST[code]','$percentage')");
	   $rs3 = mysql_query("insert into certificates(id,code,mark) values(NULL,'$_REQUEST[code]','$percentage')");
	  }
	  else
	  {
	  $rs3 = mysql_query("insert into marks(id,code,mark) values(NULL,'$_REQUEST[code]','$percentage')") or die(mysql_error());
	  $msg = "Sorry but your mark is too low, Thanks for taking our online exam";
	  }
?>
The Following are you results for the Online Exam  <br>
   
   <p style="color:red" align="center"><?php echo $msg; ?> </p>
   <p align="center" class="style7">Total Question Asked:  25
   <p align="center" class="style7">Mark Attatained :   <?php echo $rw; ?>
   <p align="center" class="style7">Percentage : <?php echo $percentage; ?>%
   
   <p align="center" class="style7">Thank you for writting our online exam.
   
