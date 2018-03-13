
<?php
session_start();
include ('aut.php'); 
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><link media="all" href="../../WRL/admin/index.php_files/widget49.css" type="text/css" rel="stylesheet">
<style type="text/css">
.underlinemenu{
font-weight: bold;
width: 100%;
}

.underlinemenu ul{
padding: 6px 0 7px 0; /*6px should equal top padding of "ul li a" below, 7px should equal bottom padding + bottom border of "ul li a" below*/
margin: 0;
text-align: right; //set value to "left", "center", or "right"*/
}

.underlinemenu ul li{
display: inline;
}

.underlinemenu ul li a{
color: #494949;
padding: 6px 3px 4px 3px; /*top padding is 6px, bottom padding is 4px*/
margin-right: 20px; /*spacing between each menu link*/
text-decoration: none;
border-bottom: 3px solid gray; /*bottom border is 3px*/
}

.underlinemenu ul li a:hover, .underlinemenu ul li a.selected{
border-bottom-color: black;
}

</style>

	
<style type="text/css">
<!--
.style1 {font-size: 12px}
.style8 {font-size: 14px; color: #000000;}
.style9 {font-size: 12}
-->
    </style>
    
	
    </head><body style="margin: 0px;">

	    <form name="form1" method="post" action="index.php?page=set_answers.php">
	   
	  
	  <table width="100%" border="0" cellpadding="0" cellspacing="5">
	    <tbody>
	            <tr align="center">
	        <td colspan="2" class="style9 style2 style8"><div align="center"><strong><em>Select List of Questions Below</em></strong></div></td>
	        <tr>
            <tr>
            <td width="195"><span class="style1">Questions</span></td>
            <td width="695">
              <?php 
include 'opendb.php';

$sql="select * from questions where username = '$_SESSION[username]' and questions.id NOT IN(select qnid from tmp_001)";

$rez=mysql_query($sql);
echo "<select name='qnid' id='qnid' required>";
?>

<?php

while($row=mysql_fetch_array($rez,MYSQL_ASSOC)){

 echo "<option value='$row[id]'>{$row['question']}</option>"; 
}

?>
    <label>
      </label></td><td width="185"><input type="submit" name="button" id="button" value="Next"></td>
    <td width="0"></label><td width="0"></td> 
          </tr>
           <tr>          </tr>
           
	      
            
           
          </tr></td>                     
	          </tbody>
	    </table>
	 
	  </form>
	
	

</body></html>