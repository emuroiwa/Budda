
<?php
session_start();
include ('aut.php'); 
?>
<style type="text/css">
<!--
.style1 {font-size: 12px}
.style2 {
	font-size: 16;
	font-weight: bold;
}
.style3 {color: #000000}
.style4 {color: #000000; font-size: 16; }
-->
</style>
<table width="90%" cellpadding="1" cellspacing="1" bgcolor="#FFFFFF" style="border-top:3px solid #009933;"><form action="index.php?page=cancel1.php" method="post">
                    <tr><td colspan="2"><div align="center" class="style1">
                      <p class="style2 style3">CANCEL ONLINE EXAMINATION BOOKING</p>
                      <p class="style4">Inorder to cancel your booking please enter your test code below and follow the next instructions</p>
                    </div></td></tr>
                    <tr valign="baseline">
                      <td width="44%" align="right" valign="top" nowrap ><div align="left" >Enter Test Code</div></td>
                      <td width="56%" valign="top">
                      <input name="testcode" type="text" id="testcode" value="" size="32" />                  </td>
                    </tr>
                    <tr valign="baseline">
                      <td nowrap align="right">&nbsp;</td>
                      <td><input name="Submit" type="submit" value="Submit"></td>
                    </tr></form>
                  </table>
