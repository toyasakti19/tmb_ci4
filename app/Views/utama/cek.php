<?php
   session_start();
	 // Script PHP untuk mengetahui Resolusi Layar Monitor
	if(!isset($_SESSION['lebarlayar'])){
      echo "<script language=\"JavaScript\">document.location=\"$PHP_SELF?r=1&width=\"+screen.width+\"&Height=\"+screen.height;</script>";
        if(isset($_GET['width']) && isset($_GET['Height'])){
            $_SESSION['lebarlayar'] = $_GET['width'];
            $_SESSION['tinggilayar'] = $_GET['Height'];
        }
   	  }
$lebar = $_SESSION['lebarlayar'];
if ($lebar > 360){$img = "1.jpg";} else {$img = "2.jpg"; }
echo $img;
echo $lebar;
?>