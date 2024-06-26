<?php
include("Class/function.php");
$obj = new DBHelper();
if(isset($_POST['login'])){
    $obj->teacherLogin($_POST);
}
    session_start();
    if(isset($_SESSION['name']) || isset($_COOKIE['name'])){
        $name = $_COOKIE['name'];
        if($name){
            header("location:DashBoard.php");
        }
    }

?>


<?php include_once("include/head.php"); ?>

    <body>
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-5">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header">
                                        <div class="text-center"><img src="./image/tick.png" height="100px" width="100px"></div>
                                        <h2 class="text-center font-weight-bold my-1" style="color:#008577;">Welcome To AMS</h2>
                                        <p class="text-center font-weight-light my-1">Login To Continue</p>
                                    </div>
                                    <div class="card-body">
                                        <form action="" method="post">
                                            <div class="form-group">
                                                <label class="small mb-1" for="inputEmailAddress">Email</label>
                                                <input class="form-control py-4" id="inputEmailAddress" type="email" placeholder="Enter email address" name="email" />
                                            </div>
                                            <div class="form-group">
                                                <label class="small mb-1" for="inputPassword">Password</label>
                                                <input class="form-control py-4" id="inputPassword" type="password" placeholder="Enter password" name="pass"/>
                                            </div>
                                            <div class="form-group">
                                                <div class="custom-control custom-checkbox">
                                                    <input class="custom-control-input" id="rememberPasswordCheck" type="checkbox" />
                                                    <label class="custom-control-label" for="rememberPasswordCheck">Remember password</label>
                                                </div>
                                            </div>
                                            <div class="form-group d-flex align-items-center justify-content-between mt-4 mb-0">
                                                <a class="small" href="#">Forgot Password?</a>
                                                <button class="btn btn-primary" name="login">Login</button>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="card-footer text-center">
                                        <div ><a class="small" href="register.php">Need an account? Sign up!</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
            <div id="layoutAuthentication_footer">
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-center">Copyright &copy; AMS <?php echo $todaysDate = date("Y"); ?></div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <?php include_once("include/script.php"); ?>
    </body>
</html>