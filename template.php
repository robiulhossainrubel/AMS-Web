<?php
include("Class/function.php");
$obj = new DBHelper();
session_start();
    $name = $_COOKIE['admin_name'];
    if($name==NULL){
        header("location:index.php");
    }
if(isset($_GET['adminlogout'])){
    if($_GET['adminlogout']=='logout'){
        $obj->adminlogout();
    }
}
?>
<?php include_once("include/head.php"); ?>
    <body class="sb-nav-fixed">
    <?php include_once("include/topnav.php"); ?>
        <div id="layoutSidenav">
        <?php include_once("include/sidenav.php"); ?>
            <div id="layoutSidenav_content">
                <main>
                    <?php 
                        if(isset($view)){
                            include("view/".$view.".php");   
                        }
                    ?>
                </main>
                <?php include_once("include/footer.php"); ?>
            </div>
        </div>
        <?php include_once("include/script.php"); ?>
    </body>
</html>
