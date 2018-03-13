<?php
		include 'opendb.php';
		$date = date('m/d/Y');
		$rs = mysql_query("select * from bookings where code = '$_REQUEST[testcode]' and status = '0' and code NOT IN(select code from marks)");
		$rw = mysql_num_rows($rs);
		if($rw == 0)
		{
		?>
        <script language="javascript">
		alert("This code did not book for any exam");
		location = 'index.php?page=testcode.php'
		</script>
        <?php
		exit;
		}
		else
		{
		while($row = mysql_fetch_array($rs))
		{
		$bookdate = $row['bookdate'];
		}
		if($bookdate != $date)
		{
		?>
        <script language="javascript">
		alert("Sorry but your exam date is not scheduled for today");
		location = 'index.php?page=testcode.php'
		</script>
        <?php
		exit;
		}
		else
		{
		$rs1 = mysql_query("select * from bookings,users,modules where bookings.code = '$_REQUEST[testcode]' and bookings.studentid = users.id and bookings.moduleid = modules.id") or die(mysql_error());
		while($rw1 = mysql_fetch_array($rs1))
		{
		$names = $rw1['name']." ".$rw1['surname'];
		
		
		echo "Hi $names you can click on the following link to start your online examination <a href='index.php?page=testpage1.php&moduleid=$rw1[id]&code=$_REQUEST[testcode]'>START EXAM</a>";
		}
		}
}
?>
