
<?php
session_start();
include ('aut.php'); 
?>
<?php
		if(isset($_POST['button']))
		{
			include 'opendb.php';	
		$rs1 = mysql_query("INSERT into cancel_bookings(id,code) values (NULL,'$_REQUEST[code]')") or die(mysql_error());
		$rs = mysql_query("UPDATE bookings SET status = '3' where code ='$_REQUEST[code]'");
		
		?>
        <script language="javascript">
		alert("Your booking has been cancelled");
		location = 'index.php'
		</script>
        <?php
		
		}
		else
		{
		?>
        <script language="javascript">
		alert("You have abborted the cancel booking process");
		location = 'index.php'
		</script>
        <?php
		}
		?>