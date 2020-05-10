<?php
session_start();
include("includes/config.php");
$_SESSION['login']=="";
date_default_timezone_set('Asia/Dhaka');
$ldate=date( 'd-m-Y h:i:s A', time () );
$useremail=$_SESSION['login'];
mysqli_query($con,"UPDATE tbl_userlog  SET logoutime = '$ldate' WHERE useremail = '$useremail' ORDER BY id DESC LIMIT 1");
session_unset();
$_SESSION['errmsg']="You have successfully logout";
?>
<script language="javascript">
	document.location="index.php";
</script>
