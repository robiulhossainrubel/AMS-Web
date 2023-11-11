<?php
require_once '../include/DBOperation.php';
$db = new DBOperation();
$response = array();
$response['data'] = array();
if($_SERVER['REQUEST_METHOD']=='POST'){
    if(isset($_POST['tblname'])){
        $result = $db->viewTable($_POST['tblname']);
        while($row = mysqli_fetch_array($result)){
            $index['id'] = $row[0];
            $index['Roll'] = $row[1];
            $index['Name'] = $row[2];
            array_push($response['data'], $index);
        }
        $response['error'] = false;
        echo json_encode($response);
    }
}

?>