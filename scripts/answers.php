
	    <form name="form1" method="post" action="index.php?page=set_answers.php&type=<?php echo $_GET['type'];?> ">
	   
	  
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

$sql="select * from questions where username = '$_SESSION[username]' and examtype='$_GET[type]' and questions.id NOT IN(select qnid from tmp_001)";

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
	
	

