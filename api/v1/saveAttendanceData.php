<?php
require_once '../include/DBOperation.php';
$db = new DBOperation();
$respose = array();
if($_SERVER['REQUEST_METHOD']=='POST'){
    if(isset($_POST['tblname']) && isset($_POST['colname'])&& isset($_POST['data'])){
        $msg = $db->addColumn($_POST['tblname'],$_POST['colname']);
        if($msg =='1'){
            $data = json_decode($_POST['data'],true);
            $len = count($data);
            for($i = 0; $i < $len; $i++){
                $db->takeAttendance($_POST['tblname'],$_POST['colname'],$data[$i]['roll'],$data[$i]['status']);
            }
            $respose['error']= false;
            $respose['message']='Attendance Taken Successfully';
        }else{
            $respose['error']= true;
            $respose['message']= 'Failed';
        }
    }else{
        $respose['error']= true;
        $respose['message']= 'no Data Found';
    }
    echo json_encode($respose);
}
?>