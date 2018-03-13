<?php
		include 'opendb.php';
		$rs = mysql_query("select * from bookings,marks where booking.studentid= '3' and bookings.code = marks.code");
		while($rw = mysql_fetch_array($rs))
		{
		echo "On $rw['bookdate'] you attained $rw['mark']";
		}
?>