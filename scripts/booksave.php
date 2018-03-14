
<?php
session_start();
include ('aut.php'); 
?>
<?php
		
		session_start();
		include 'opendb.php';
		function getRandomString($length = 6)
		{
		$validCharacters = "0123456789";
		$validCharNumber = strlen($validCharacters);
		
		for ($i = 0; $i < $length; $i++)
		{
		$index = mt_rand(0, $validCharNumber - 1);
		$result .= $validCharacters[$index];

		}

		return $result;

		}


		$code=getRandomString();
		$rs8 = mysql_query("select * from users where username = '$_SESSION[username]'");
		while($row1 = mysql_fetch_array($rs8))
		{
		$idx = $row1['id'];
		}
		$date = date('m/d/Y');
		$dt = strtotime("$date + 2days");
		$bookdate = date('m/d/Y',$dt);
		$rs = mysql_query("select * from bookings where studentid = '$idx' and status = '0'");
		$row = mysql_num_rows($rs);
		if($row == 1)
		{
		echo "You have already booked for an exam";
		exit;
		}
		else
		{
		$rs1 = mysql_query("INSERT into bookings(id,code,studentid,bookdate,date,status,moduleid) values (NULL,'$code','$idx','$bookdate','$date','0','$_REQUEST[moduleid]')") or die(mysql_error());
		
		echo "Thank You for your booking, your code is $code and your exam will be wriiten on $bookdate";
		}
		
		
		?>