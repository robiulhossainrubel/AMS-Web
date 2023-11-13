<?php
require_once '../include/DBOperation.php';
$db = new DBOperation();
$response = array();
$response['data'] = array();
if($_SERVER['REQUEST_METHOD']=='POST'){
    if(isset($_POST['email'])){
        $result = $db->viewClass($_POST['email']);
        while($row = mysqli_fetch_array($result)){
            $index['id'] = $row[0];
            $index['session'] = $row[1];
            $index['coursecode'] = $row[2];
            $index['ct'] = $row[3];
            array_push($response['data'], $index);
        }
    }
    $response['error'] = false;
    $response['message'] = 'Load Successfully';
    echo json_encode($response);
}
?>