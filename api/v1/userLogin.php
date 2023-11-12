<?php
    require_once '../include/DBOperation.php';
    $response = array();
    if($_SERVER['REQUEST_METHOD']=='POST'){
        if(isset($_POST['email']) and isset( $_POST['password'])){
            $db = new DBOperation();
            $user = $db->adminLogin($_POST['email'], $_POST['password']);
            if($user){
                $response['error'] = false;
                $response['email'] = $user['email'];
                $response['name'] = $user['name'];
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