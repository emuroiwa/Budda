<?php
	 include 'opendb.php';
	// $rs1 = mysql_query("UPDATE bookings SET status = '1' where code = '$_REQUEST[code]'");
	// echo $_POST['answerid'.'46'];
	//exit;
	 $res = mysql_query("select * from questions");
	
	while($row = mysql_fetch_array($res))
	{	
	$answerid = $_POST['answerid'.$row['id']];
	// echo $answerid; 
	// exit;
	 $rs = mysql_query("select * from answers where id ='$answerid' and status = '1'");
	 $rw += mysql_num_rows($rs);
	 while($rowrs = mysql_fetch_array($rs))
	{	
$CorrectQuestions=$rowrs['questionid'];
$rs2 = mysql_query("INSERT INTO `correctQuestions` (`questionid`, `student`, `code`) VALUES ('$CorrectQuestions', '$_SESSION[username]', '$_REQUEST[code]')");

	}
	
	 $rs1 = mysql_query("select * from answers where id ='$answerid'");
	 $rw1 += mysql_num_rows($rs1);
	  }
	  $percentage = (($rw / countTable("select * from questions INNER JOIN users on questions.username=users.username and users.studentclass='$_SESSION[class]'")) * 100);
	//   echo "select * from questions INNER JOIN users on questions.username=users.username and users.studentclass='$_SESSION[grade]'";
	//   exit;
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


 $a='The Following are '. $_SESSION['name'] .' results for the Online Exam  <br>
   
  <p style="color:red" align="center"> '.$msg.';  </p>
   <p align="center" class="style7">Total Question Asked:  '.countTable("select * from questions INNER JOIN users on questions.username=users.username and users.studentclass='$_SESSION[class]'").'
   <p align="center" class="style7">Mark Attatained :  '. $rw .'
   <p align="center" class="style7">Percentage : '.$percentage .'%
   
   <p align="center" class="style7">Thank you for writting our online exam.';
   echo $a;
   //SendEmail($a,"$_SESSION[email]");
   ?>
