
<?php
session_start();
include ('aut.php'); 
?>
<?php
include 'opendb.php';
if(isset($_POST['Submit'])){


$rs = mysql_query("select * from users where username = '$_SESSION[username]'");
while($row = mysql_fetch_array($rs))
{
$dept = $row['department'];
}
$question = $_POST['question']; 
$rs1 = mysql_query("select * from questions where question = '$_POST[question]' and examtype='$_GET[type]'");
   $rw = mysql_num_rows($rs1);
   if($rw == 1){
   ?>
  <script language="javascript">
 alert("Question already in use");
 location = 'index.php?page=questions.php'
  </script>
  <?php
  exit;
   }
$result = mysql_query("INSERT INTO questions(question,dept,moduleid,username,examtype)VALUES('$question','$dept','$_POST[skill]','$_SESSION[username]','$_GET[type]')") or die (mysql_error());
if ($result )
{
 ?>
<script language="javascript">
 alert("Question Successfully Saved");
</script>
<?php
				 }
			 else
			  {
			      $msg= "Error Occured";
		}	   
}

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link href="staff_infor.css" rel="stylesheet" type="text/css" />
<title>Untitled Document</title>
<style type="text/css">
<!--
.style1 {font-size: 12px}
-->
</style>
<script language="JavaScript" src="../../mail/scripts/gen_validatorv31.js" type="text/javascript"></script>
<link href="../../SpryAssets/SpryValidationTextField.css" rel="stylesheet" type="text/css" />

<script type="text/javascript">
<!--
function MM_validateForm() { //v4.0
  if (document.getElementById){
    var i,p,q,nm,test,num,min,max,errors='',args=MM_validateForm.arguments;
    for (i=0; i<(args.length-2); i+=3) { test=args[i+2]; val=document.getElementById(args[i]);
      if (val) { nm=val.name; if ((val=val.value)!="") {
        if (test.indexOf('isEmail')!=-1) { p=val.indexOf('@');
          if (p<1 || p==(val.length-1)) errors+='- '+nm+' must contain an e-mail address.\n';
        } else if (test!='R') { num = parseFloat(val);
          if (isNaN(val)) errors+='- '+nm+' must contain a number.\n';
          if (test.indexOf('inRange') != -1) { p=test.indexOf(':');
            min=test.substring(8,p); max=test.substring(p+1);
            if (num<min || max<num) errors+='- '+nm+' must contain a number between '+min+' and '+max+'.\n';
      } } } else if (test.charAt(0) == 'R') errors += '- '+nm+' is required.\n'; }
    } if (errors) alert('The following error(s) occurred:\n'+errors);
    document.MM_returnValue = (errors == '');
} }
//-->
</script>
<style type="text/css">
<!--
.style9 {font-size: 14px}
-->
</style>
</head>
<style type="text/css">
table.cool {
	border-width: 1px;
	border-spacing: ;
	border-style: solid;
	border-color: #FF9239;
	border-collapse: collapse;
	background-color: #fff5ee;
}
table.cool th {
	border-width: 1px;
	padding: 1px;
	border-style: outset;
	border-color: #FF9239;
	background-color: ;
	-moz-border-radius: ;
}
.errr
{
	font-family : Verdana, Helvetica, sans-serif;
	font-size : 12px;
	color: #0066FF;
	
}
.err
{
	font-family : Verdana, Helvetica, sans-serif;
	font-size : 12px;
	color: red;
}
table.cool td {
	border-width: 1px;
	padding: 1px;
	border-style: outset;
	border-color: #FF9239;
	background-color: ;
	-moz-border-radius: ;
}
</style>

<style type="text/css">
<!--
.style7 {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 18px;
	color: #000000;
	font-weight: bold;
	font-style: italic;
}
-->

.errstyle {
	color: #FF0000;
	font-size: 12px;

}
#response {
	color: #000;
	font-size: 12px;

}
</style>
<body>

<form action="" method="post" name="qualification_form" onSubmit="MM_validateForm('question','','R');return document.MM_returnValue">
<table width="100%" border="0" align="center" style="border-bottom:3px solid #000000;">
 
 
      <tr>
        <td colspan="2" align="center"><div align="center"><span class="style7">Add New Question</span></div></td>
      </tr>
  
<tr>
  <td width="39%"> <span class="style1 style9">Questions</span></td>
  <td width="61%">
    <input type="text" name="question" id="question" size="50"  /></td>
</tr>
 <tr>
            <td width="140"><span class="style12 style1">Question Skill Level</span></td>
            <td width="412">
			<select name="skill">
<option value="1">Beginner</option>
<option value="2"> Intermidate</option>
<option value="3">Expert</option>
</select>
              <input type="submit" name="Submit" size="30"  value="Save"/></td>
    </tr></table>
</form>
          


</body>

</html>
