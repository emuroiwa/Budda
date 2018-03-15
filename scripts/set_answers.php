
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
		if($answer == "")
		{
		?>
        <script language="javascript">
		alert("Error !!! Please Make sure that all fields are filled");
		window.location = 'index.php?page=set_answers.php&qnid=<?php echo $_REQUEST['qnid']; ?>'
		</script>
        <?php
		exit(0);
		}
		if($symbol == $_POST['symbolid'])
		{
		$status = '1';
		}
		else
		{
		$status = '0';
		}
		mysql_query("INSERT into answers(id,questionid,symbolid,answer,status,examtype) values(NULL,'$_REQUEST[qnid]','$symbol','$answer','$status','$_GET[type]')");
		
		?>
        <script language="javascript">
		alert("Answers successfully entered into the database");
		window.location = 'index.php?page=answers.php&type=<?php echo $_GET['type']?>'
		</script>
        <?php
		}
		mysql_query("INSERT into tmp_001(id,qnid) values(NULL,'$_REQUEST[qnid]')");
		}
		
?>
<?php
		include 'opendb.php';
		$rs = mysql_query("select * from questions where id = '$_REQUEST[qnid]' and examtype='$_GET[type]'");
		while($rw = mysql_fetch_array($rs))
		{
		$question = $rw['question'];
		$qnid = $rw['id'];
		}
		
?>



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
<form action="" method="post" onsubmit="MM_validateForm('answer<?php echo $row['id']; ?>','','R');return document.MM_returnValue">
<table width="100%" border="0">
  <tr>
    <td colspan="3" align="center"><strong>QUESTION: </strong><u><?php echo $question; ?></u></td>
  </tr>
  <?php
		include 'opendb.php';
		$rs = mysql_query("select * from symbol");
		while($row = mysql_fetch_array($rs))
		{
?>
  <tr>
    
    <td width="13%"><?php echo $row['symbol']; ?></td>
    <td width="87%"><label>
      <input type="text" name="answer<?php echo $row['id']; ?>" id="answer<?php echo $row['id']; ?>" size="80" />
       <input type="hidden" name="symbol<?php echo $row['id']; ?>" id="symbol<?php echo $row['id']; ?>" size="80"  value="<?php echo $row['symbol']; ?>"/>
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

