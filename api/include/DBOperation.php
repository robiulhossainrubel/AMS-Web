<?php
    class DBOperation{
        private $con;
        function __construct(){
            require_once dirname(__FILE__) .'/DBConnect.php';
            $db=new DBConnect();
            $this->con = $db->connect();
        }
        public function adminLogin($email,$password) {
            $sql = "SELECT * FROM admin_info WHERE email='$email' && pass='$password'";
            if(mysqli_query($this->con,$sql)){
                $data = mysqli_query($this->con,$sql);
                $info = mysqli_fetch_assoc($data);
                return $info;
            }
        }
        public function viewClass() {
            $sql = "SELECT * FROM classes";
            if(mysqli_query($this->con,$sql)) {
                $cls = mysqli_query($this->con,$sql);
                return $cls;
            }
        }
        public function viewTable($tbl_name) {
            $sql = "SELECT * FROM `$tbl_name`";
            if(mysqli_query($this->con,$sql)) {
                $data = mysqli_query($this->con,$sql);
                return $data;
            }
        }
        public function addColumn($tbl_name,$date) {
            $sql = "ALTER TABLE `$tbl_name` ADD `$date` TEXT DEFAULT 'A'";
            if(mysqli_query($this->con,$sql)) {
                return "1";
            }else{
                return "Failed";
            }
        }
        public function takeAttendance($tbl_name,$date,$roll,$status){
            $sql = "UPDATE `$tbl_name` SET `$date` = '$status' WHERE Roll = $roll";
            if(mysqli_query($this->con,$sql)){
                return "Attendance Take Successfuly";
            }
        }
    }
    
?>