
<?php
session_start();
include ('aut.php'); 
?>
<?php
include 'opendb.php';
$result = mysql_query("SELECT * FROM bookings,users where bookings.code = '$_REQUEST[testcode]' and bookings.studentid = users.id and bookings.code NOT IN (select code from cancel_bookings)") or die(mysql_query());
$rw = mysql_num_rows($result);
if($rw == 0)
{
?>
<script language="javascript">
alert("This code is invalid or have already canceled");
location = 'index.php?page=cancel.php'
</script>
<?php
}
else
{

while($row = mysql_fetch_array($result)){
$name = $row['name'];
$surname = $row['surname'];

$bookdate = $row['bookdate'];
}
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<style type="text/css">
<!--

.style3 {font-size: 12px}
.style6 {
	font-size: 16px;
	color: #000000;
	font-weight: bold;
}
-->
</style>
</head>

<body>
<p align="center" class="style1 style6"><em>Main cancel booking main page</em></p>
    <p align="center" class="style3"><?php echo $name." ".$surname; ?> are  you sure you want to cancel your online examination scheduled on <?php echo $bookdate; ?></p>
    <form action="index.php?page=cancelbooking.php&code=<?php echo $_REQUEST['testcode']; ?>" method="post"><table width="100%" border="0">
  <tr align="center">
  
  
    <td><input type="submit"  class="form_submit_button" align="middle" name="button" id="button" value="Confirm" />      
       <input type="submit"  class="form_submit_button" align="middle" name="button1" id="button" value="Cancel" /></td>
    </tr>
</table>
</form>
    <p align="center" class="style3">&nbsp;</p>
    <p align="center">&nbsp;</p>
    <p align="center">&nbsp;</p>   
</body>
</html>
