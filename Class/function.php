<?php

class DBHelper {
    private $con;
    public function __construct() {
        $host = 'localhost';
		$user = 'root';
		$pass = "";
		$dbname = 'attendanceapp';

		$this->con = mysqli_connect($host,$user,$pass,$dbname);
		if (!$this->con) {
			die("Erron");
		}
    }
    public function teacherLogin($data) {
        $email = $data["email"];
        $password = $data["pass"];
        $sql = "SELECT * FROM teacher_info WHERE email='$email' && pass='$password'";
        if(mysqli_query($this->con,$sql)){
			$info = mysqli_query($this->con,$sql);
			if($info){
				header("location:DashBoard.php");
				$teacher_data = mysqli_fetch_assoc($info);
				session_start();
				$_SESSION['name']=$teacher_data['name'];
                $_SESSION['email']=$teacher_data['email'];
                $_SESSION['department']=$teacher_data['department'];
                setcookie('name',$teacher_data['name'],time()+60*60*24*30);
                setcookie('email',$teacher_data['email'],time()+60*60*24*30);
                setcookie('department',$teacher_data['department'],time()+60*60*24*30);
			}
		}
    }
    public function isUserExist($email){
        $sql = "SELECT * FROM teacher_info WHERE email='$email'";
        if(mysqli_query($this->con,$sql)){
            $info = mysqli_query($this->con,$sql);
            return $info;
        }
    }
    public function registerTeacher($data){
        $name = $data["name"];
        $department = $data["dept"];
        $email = $data["email"];
        $password = $data["pass"];
        $cpass = $data["cpass"];
        if($cpass!=$password){
            return "Password Not Match";
        }elseif($this->isUserExist($email)){
            return "Email Already Used";
        }else{
            //$password = md5($password);
            $sql = "INSERT INTO teacher_info(email,name,department,pass) VALUES('$email','$name','$department','$password')";
            if(mysqli_query($this->con,$sql)){
                header("location:DashBoard.php");
				session_start();
				$_SESSION['name']=$name;
                $_SESSION['email']=$email;
                $_SESSION['department']=$department;
                setcookie('name',$name,time()+60*60*24*30);
                setcookie('email',$email,time()+60*60*24*30);
                setcookie('department',$department,time()+60*60*24*30);
            }
        }
    }
    public function teacherLogout(){
		unset($_SESSION['name']);
        unset($_SESSION['email']);
        unset($_SESSION['department']);
        setcookie('name',$_SESSION['name'],30);
        setcookie('email',$_SESSION['email'],30);
        setcookie('department',$_SESSION['department'],30);
		header("location: index.php");
	}
    public function addClass($coursecode,$session,$email,$department) {
        $sql = "INSERT INTO classes(session,coursecode,email,department) VALUE('$session','$coursecode','$email','$department')";
        if(mysqli_query($this->con,$sql)) {
            return "Class Added Successfully";
        }
    }
    public function viewClass($email) {
        $sql = "SELECT * FROM classes WHERE email='$email'";
        if(mysqli_query($this->con,$sql)) {
            $cls = mysqli_query($this->con,$sql);
            return $cls;
        }
    }
    public function transferStudent($coursecode,$session,$department) {
        $tbl_name = $coursecode.$session;
        $sql = "INSERT INTO `$tbl_name` (roll,name) SELECT roll,name FROM `students` WHERE department='$department' && session='$session'";
        if(mysqli_query($this->con,$sql)) {
            return "Datas transfer Successfully";
        }

    }
    
    public function deleteClass($id) {
        $sql = "DELETE FROM classes WHERE id = $id";
        if(mysqli_query($this->con,$sql)) {
            return "Class Deleted Successfully";
        }
    }
    public function createTable($coursecode,$session) {
        $tbl_name = $coursecode.$session;
        $sql = "CREATE TABLE `$tbl_name` (
            `id` INT(100) NOT NULL AUTO_INCREMENT , 
            `Roll` INT(100) NOT NULL , 
            `Name` TEXT NOT NULL , 
            `CT1` INT(2) NOT NULL , 
            `CT2` INT(2) NOT NULL , 
            `CT3` INT(2) NOT NULL , 
            `Percentage` INT(3) NOT NULL ,
            `Mark` INT(2) NOT NULL ,
            `Best1` INT(2) NOT NULL ,
            `Best2` INT(2) NOT NULL ,
            `Total` INT(2) NOT NULL ,
            PRIMARY KEY (`id`))";
        if(mysqli_query($this->con,$sql)) {
            return "Table Added Successfully";
        }
    }
    public function dropTable($coursescode,$session) {
        $tbl_name = $coursescode.$session;
        $sql = "DROP TABLE `$tbl_name`";
        if(mysqli_query($this->con,$sql)) {
            return "Class Deleted Successfully";
        }
    }
    public function addColumn($tbl_name,$date) {
        $sql = "ALTER TABLE `$tbl_name` ADD `$date` TEXT DEFAULT 'A'";
        if(mysqli_query($this->con,$sql)) {
            return "Table Added Successfully";
        }else{
            return "Table Added UnSuccessfully";
        }
    }
    public function viewTable($tbl_name) {
        $sql = "SELECT * FROM `$tbl_name`";
        if(mysqli_query($this->con,$sql)) {
            $data = mysqli_query($this->con,$sql);
            return $data;
        }
    }
    public function viewTableName($tbl_name) {
        $sql = "SELECT column_name AS cl_mn
        FROM information_schema.columns 
        WHERE table_name = '$tbl_name'";
        if(mysqli_query($this->con,$sql)) {
            $data = mysqli_query($this->con,$sql);
            return $data;
        }
    }
    public function viewCourse($department){
        $sql = "SELECT * FROM course WHERE department = '$department'";
        if(mysqli_query($this->con,$sql)){
            $cc = mysqli_query($this->con,$sql);
            return $cc;
        }
    }
    public function takeAttendance($tbl_name,$date,$roll){
        $sql = "UPDATE `$tbl_name` SET `$date` = 'P' WHERE Roll = $roll";
        if(mysqli_query($this->con,$sql)){
            return "Attendance Take Successfuly";
        }
    }
    public function updateBest($tbl_name,$per,$mark,$b1,$b2,$total,$roll){
        $sql = "UPDATE `$tbl_name` SET `Percentage` = $per,`Mark` = $mark,`Best1` = $b1,`Best2` = $b2,`Total` = $total WHERE Roll = $roll";
        if(mysqli_query($this->con,$sql)){
            return "Best Mark Update Successfuy";
        }
    }
    public function DataViewById($tbl_name,$id){
        $sql = "SELECT * FROM `$tbl_name` WHERE id=$id";
        if(mysqli_query($this->con,$sql)){
            $data = mysqli_query($this->con,$sql);
            $datas = mysqli_fetch_assoc($data);
            return $datas;
        }
    }
    public function deleteById($tbl_name,$id){
        $sql = "DELETE FROM `$tbl_name` WHERE id=$id";
        if(mysqli_query($this->con,$sql)){
            return "Delete Successfully";
        }
    }
    public function addStudent($tbl_name,$roll,$name){
        $sql = "INSERT INTO `$tbl_name`(Roll,Name) VALUES($roll,'$name')";
        if(mysqli_query($this->con,$sql)){
            return "Student Add Successfully";
        }
    }
    public function UpdateStudent($tbl_name,$roll,$name,$id){
        $sql = "UPDATE `$tbl_name` SET `Roll` = $roll,`Name` = '$name' WHERE id = $id";
        if(mysqli_query($this->con,$sql)){
            return "Student Update Successfully";
        }
    }

    public function updateAttendanceData($tbl_name,$col,$cd,$id){
        $sql = "UPDATE `$tbl_name` SET `$col` = '$cd' WHERE id = $id";
        if(mysqli_query($this->con,$sql)){
            return "Update Successfuy";
        }
    }

    public function updateCtMark($tbl_name,$ct1,$ct2,$ct3,$id){
        $sql = "UPDATE `$tbl_name` SET `CT1` = $ct1,`CT2` = $ct2,`CT3` = $ct3 WHERE id = $id";
        if(mysqli_query($this->con,$sql)){
            return "Update Successfuy";
        }
    }
    public function getCourseTitle($cc){
        $sql = "SELECT ct FROM course WHERE cc = '$cc'";
        if(mysqli_query($this->con,$sql)){
            $data = mysqli_query($this->con,$sql);
            $datas = mysqli_fetch_assoc($data);
            return $datas;
        }
    }
}

?>