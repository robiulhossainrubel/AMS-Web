<?php
    class DBConnect{
        private $con;
        function __construct(){

        }
        function connect(){
            $this->con = new mysqli('localhost','root','','attendanceapp');
            if(mysqli_connect_errno()){
                echo 'Failed to connect';
            }
            return $this->con;
        }
    }
?>