
<?php
session_start();
include ('aut.php'); 
?>
<?php
		if(isset($_POST['save']))
		{
		include 'opendb.php'; 
		
		$res = mysql_query("select * from symbol");
		while($row = mysql_fetch_array($res))
		{	
		$answer = $_POST['answer'.$row['id']];
		$symbol = $_POST['symbol'.$row['id']];
		mysql_query("UPDATE questions SET question = '$_POST[question]' where id = '$_POST[questionid]'");
		mysql_query("UPDATE answers SET answer = '$answer' where questionid = '12' and symbolid = 'A'") or die(mysql_error());
				?>
        <script language="javascript">
		alert("Question Update Sucessfull");
		window.location = 'index.php?page=editquestions.php'
		</script>
        <?php
		}
		
		}
		
?>
<?php
		if(isset($_POST['delete']))
		{
			include 'opendb.php';
		
		mysql_query("delete from questions where id = '$_POST[qnid]'") or die(mysql_error());
		mysql_query("delete from answers where questionid = '$_POST[qnid]'") or die(mysql_error());
		
		?>
        <script language="javascript">
		alert("Question Delete Sucessfull");
		window.location = 'index.php?page=editquestions.php'
		</script>
        <?php
		}
		
?>
<?php
		include 'opendb.php';
		$rs = mysql_query("select * from questions where id = '$_REQUEST[qnid]'");
		while($rw = mysql_fetch_array($rs))
		{
		$question = $rw['question'];
		$qnid = $rw['id'];
		}
		
?>
<style type="text/css">
<!--
.style1 {font-style: italic}
-->
</style>


<form method="post" action="">
<table width="100%" border="0">
  <tr>
    <td colspan="3" align="left"><strong>QUESTION: <input type="text" name="question" id="question" size="80" value="<?php echo $question ?>" />
     <input type="hidden" name="questionid" id="questionid" size="80" value="<?php echo $_POST['qnid']; ?>" />
      <input  type="submit" name="delete" value="delete" id="delete" /></td>
  </tr>
  <?php
		include 'opendb.php';
		
		$rs = mysql_query("select * from answers where questionid = '$_POST[qnid]'");
		while($row = mysql_fetch_array($rs))
		{
		
?>
  <tr>
    
    <td width="13%"><?php echo $row['symbol']; ?></td>
    <td width="87%"><label>
    <?php echo $row['symbolid']; ?>
     <input type="text" name="answer<?php echo $row['id']; ?>" id="answer<?php echo $row['id']; ?>" size="80" value="<?php echo $row['answer'] ?>" /><input type="hidden" name="symbol<?php echo $row['id']; ?>" id="symbol<?php echo $row['id']; ?>" size="80"  value="<?php echo $row['symbolid']; ?>"/> 
       
       <input type="hidden" name="qnid" id="qnid" size="80"  value="<?php echo $_REQUEST['qnid']; ?>"/>
     
    </label></td>
  </tr>
  <?php 
}
?>
<tr>
    <td colspan="2"><div align="center"><em>Correct Answer</em> 
      <?php 
include 'opendb.php';
 
$sql="select * from symbol";
$rez=mysql_query($sql);
echo "<select name='symbolid' id='symbolid'";
?>
        <option value="0">--- <span class="style2 style1">Select symbol</span><span class="style1">-</span>--</option>
        <?php
while($row=mysql_fetch_array($rez,MYSQL_ASSOC)){

 echo "<option>{$row['symbol']}</option>"; 
}

?>
    </div></td>
</tr>
  <tr>
    <td colspan="3" align="center"><input  type="submit" name="save" value="save" /></td>
  </tr>
</table>
</form>

