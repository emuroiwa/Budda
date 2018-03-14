
<?php

include ('aut.php'); 
?>

<div align="center">
  <p><em>Hello 
    <?php  include 'opendb.php'; $rs = mysql_query("select * from users,modules where users.username = '$_SESSION[username]' and users.department = modules.departmentid");
while($row = mysql_fetch_array($rs))
{
echo $row['name']." ".$row['surname'];
$id = $row['id'];

?> 
    Are you sure you want to book for our online examination. Select Module to write below</em> </p>
      <p><font size="1" face="Arial, Helvetica, sans-serif"><a href="index.php?page=booksave.php&moduleid=<?php echo $id; ?>"><?php echo $row['modulecode']."</br>"; ?></a></font></p>
 
 <?php
 }
 ?>
</div>
