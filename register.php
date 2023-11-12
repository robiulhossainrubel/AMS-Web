<?php include_once("include/head.php"); ?>

<body class="bg-primary">
    <div id="layoutAuthentication">
        <div id="layoutAuthentication_content">
            <main>
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-lg-7">
                            <div class="card shadow-lg border-0 rounded-lg mt-5">
                                <div class="card-header">
                                    <h3 class="text-center font-weight-light my-4">Create Account</h3>
                                </div>
                                <div class="card-body">
                                    <form>
                                        <div class="form-row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="small mb-1" for="name">Name</label>
                                                    <input class="form-control py-4" name="name" type="text"
                                                        placeholder="Enter Name" required/>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="small mb-1" for="dept">Department</label><br>
                                                    <select class="form-control" name="dept" required>
                                                        <option selected value="">Select Department</option>
                                                        <option value="CSE">CSE</option>
                                                        <option value="EEE">EEE</option>
                                                        <option value="ICE">ICE</option>
                                                        <option value="EECE">EECE</option>
                                                        <option value="Civil">Civil</option>
                                                        <option value="Architecture">Architecture</option>
                                                        <option value="URP">URP</option>
                                                        <option value="Math">Math</option>
                                                        <option value="STAT">STAT</option>
                                                        <option value="Physics">Physics</option>
                                                        <option value="Chemestry">Chemestry</option>
                                                        <option value="Pharmacy">Pharmacy</option>
                                                        <option value="GE">GE</option>
                                                        <option value="BBA">BBA</option>
                                                        <option value="THM">THM</option>
                                                        <option value="ECO">ECO</option>
                                                        <option value="Bangla">Bangla</option>
                                                        <option value="English">English</option>
                                                        <option value="HBS">HBS</option>
                                                        <option value="PAd">PAd</option>
                                                        <option value="SW">SW</option>
                                                    </select><br>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="small mb-1" for="email">Email</label>
                                            <input class="form-control py-4" name="email" type="email"
                                                aria-describedby="emailHelp" placeholder="Enter email address" required />
                                        </div>
                                        <div class="form-row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="small mb-1" for="inputPassword">Password</label>
                                                    <input class="form-control py-4" id="inputPassword" type="password"
                                                        placeholder="Enter password" required/>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label class="small mb-1" for="inputConfirmPassword">Confirm
                                                        Password</label>
                                                    <input class="form-control py-4" id="inputConfirmPassword"
                                                        type="password" placeholder="Confirm password" required/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group mt-4 mb-0"><input type="submit" class="btn btn-primary btn-block" value="Create Account"></div>
                                    </form>
                                </div>
                                <div class="card-footer text-center">
                                    <div class="small"><a href="index.php">Have an account? Go to login</a></div>
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
                        <div class="text-muted">Copyright &copy; Your Website 2023</div>
                        <div>
                            <a href="#">Privacy Policy</a>
                            &middot;
                            <a href="#">Terms &amp; Conditions</a>
                        </div>
                    </div>
                </div>
            </footer>
        </div>
    </div>
    <?php include_once("include/script.php"); ?>
</body>

</html>