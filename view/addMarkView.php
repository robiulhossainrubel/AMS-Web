<?php

$tbl_name = "";
$id;
if (isset($_GET['tablename']) and isset($_GET['id'])) {
    $tbl_name = $_GET['tablename'];
    $id = $_GET['id'];
    $result = $obj->DataViewById($tbl_name,$id);
}

if(isset($_POST['save'])){
    $ct1 = $_POST['ct1'];
    $ct2 = $_POST['ct2'];
    $ct3 = $_POST['ct3'];
    $msg = $obj->updateCtMark($tbl_name,$ct1,$ct2,$ct3,$id);
    echo $msg;
}

?>

<div class="container-fluid" id="container-wrapper">
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Edit CT Mark
        </h1><br>

        
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="./">Home</a></li>
            <li class="breadcrumb-item active" aria-current="page">Edit CT Mark</li>
        </ol>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="card mb-4 p-2">
            <span><?php echo 'Roll: '.$result['Roll']; ?></span><br>
                    <span><?php echo 'Name: '.$result['Name']; ?></span><br>
<form class="form" action="" method="post">
    <input class="form-control mb-2" type="number" name="ct1" value="<?php echo $result['CT1']; ?>" placeholder="Mark For CT 1" required>
    <input class="form-control mb-2" type="number" name="ct2" value="<?php echo $result['CT2']; ?>" placeholder="Mark For CT 2" required>
    <input class="form-control mb-2" type="number" name="ct3" value="<?php echo $result['CT3']; ?>" placeholder="Mark For CT 3" required>
    <input type="submit" class="form-control btn-primary" name="save" value="Add Mark">
</form>
</div>
        </div>
    </div>
</div>