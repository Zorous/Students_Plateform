<?php
 session_start();
     $now = time();
	
	if(!isset($_SESSION['admin_name']) || $now > $_SESSION['expire'] )
	{
		session_destroy();
		
		header( "Location:identifier.php");
		exit;
		 
	}
	 
	
?>