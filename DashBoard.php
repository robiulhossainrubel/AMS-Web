<?php 
ob_start();
    $view = "DashView";
    include("template.php");
ob_end_flush();
?>