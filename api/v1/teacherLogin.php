<?php
    require_once '../include/DBOperation.php';
    $response = array();
    if($_SERVER['REQUEST_METHOD']=='POST'){
        if(isset($_POST['email']) and isset( $_POST['password'])){
            $db = new DBOperation();
            $teacher = $db->teacherLogin($_POST['email'], $_POST['password']);
            if($teacher){
                $response['error'] = false;
                $response['name'] = $teacher['name'];
                $response['email'] = $teacher['email'];
                $response['department'] = $teacher['department'];
            }else{
                $response['error'] = true;
                $response['message'] = 'Invaid Username or Password';
            }
        }else{
            $response['error'] = true;
            $response['message'] = 'Required fields are missing';
        }
    }
    echo json_encode($response);
?>