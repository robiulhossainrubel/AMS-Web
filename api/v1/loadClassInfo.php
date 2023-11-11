<?php
require_once '../include/DBOperation.php';
$db = new DBOperation();
$response = array();
$response['data'] = array();
$result = $db->viewClass();
if($_SERVER['REQUEST_METHOD']=='POST'){
    while($row = mysqli_fetch_array($result)){
        $index['id'] = $row[0];
        $index['session'] = $row[1];
        $index['coursecode'] = $row[2];
        array_push($response['data'], $index);
    }
    $response['error'] = false;
    echo json_encode($response);
}
?>