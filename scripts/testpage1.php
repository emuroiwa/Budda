<script type="text/javascript">
window.onload=WindowLoad;
function WindowLoad(event) {
ActivateCountDown("CountDownPanel", 100);
}
</script>
<script language="javascript">
var _countDowncontainer=0;
var _currentSeconds=0;

function ActivateCountDown(strContainerID, initialValue) {
_countDowncontainer = document.getElementById(strContainerID);

if (!_countDowncontainer) {
alert("count down error: container does not exist: "+strContainerID+
"\nmake sure html element with this ID exists");
return;
}

SetCountdownText(initialValue);
window.setTimeout("CountDownTick()", 1000);
}

function CountDownTick() {
if (_currentSeconds <= 0) {
alert("your time has expired!");
document.forms["myform"].submit();
}

SetCountdownText(_currentSeconds-1);
window.setTimeout("CountDownTick()", 1000);
}

function SetCountdownText(seconds) {
//store:
_currentSeconds = seconds;

//get minutes:
var minutes=parseInt(seconds/60);

//shrink:
seconds = (seconds%60);

//get hours:
var hours=parseInt(minutes/60);

//shrink:
minutes = (minutes%60);

//build text:
var strText = AddZero(hours) + ":" + AddZero(minutes) + ":" + AddZero(seconds);

//apply:
_countDowncontainer.innerHTML = strText;
}

function AddZero(num) {
return ((num >= 0)&&(num < 10))?"0"+num:num+"";
}

</script>
<p>Time Left for the examination: <span id='CountDownPanel' style="background-color: #FFFF00"></span>  
<?php
	
	if($_GET['type']=="full"){
	$rs = mysql_query("SELECT 	*,questions.id qid FROM `questions` INNER JOIN studentclass INNER JOIN users on studentclass.classname=users.studentclass and questions.username= users.username where classname='$_SESSION[class]' and examtype='$_GET[type]'  ORDER BY RAND() limit  ".getLimit("1"));
	}
	else{
	$rs = mysql_query("SELECT 	*,questions.id qid FROM `questions` INNER JOIN studentclass INNER JOIN users on studentclass.classname=users.studentclass and questions.username= users.username where classname='$_SESSION[class]' and examtype='$_GET[type]' ORDER BY RAND() ");
	}
	$rz = mysql_num_rows($rs);
	$counter = 0; 
	while ($counter < $rz) 
	{
	while($rw = mysql_fetch_array($rs))
	{	
	 $counter++;
	 ?> 
  
    <table width="100%" border="0" align="center" style="border-top:3px solid #000">
    <tr><td width="50%"><strong><?php echo $counter." ".$rw['question']; ?>
    </strong></td></tr> </table>
     <?php
	// echo "select * from answers where questionid = '$rw[qid]'";
//	echo $rw['qid'];
	$res = mysql_query("select * from answers where questionid = '$rw[qid]'");
	
	while($row = mysql_fetch_array($res))
	 {

	  ?>
     
<form method="post" id="myform" name="myform" action="index.php?page=results.php&code=<?php echo $_REQUEST['code']; ?>&type=<?php echo $_REQUEST['type']; ?>" >
   <table width="100%" border="0" align="center">
      <tr><td width="4%"><input type="radio" name="answerid<?php echo $rw['qid']; ?>" id="answerid<?php echo $rw['qid']; ?>" value="<?php echo $row['id']; ?>" /><?php echo $row['symbolid'].": ".$row['answer']; ?></td></tr> <?php
		 }
		 
		 
		   }
		   ?>
          <tr align="center">
    <td align="center"><input type="submit" name="Submit" value="Results" class="btn" /></td>
</tr></form>
  <?php
		   }
		  
		   ?>
      