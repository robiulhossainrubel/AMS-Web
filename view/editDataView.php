<?php

$tbl_name = "";
if (isset($_GET['tablename']) and isset($_GET['colname']) and isset($_GET['id'])) {
    $tbl_name = $_GET['tablename'];
    $col = $_GET['colname'];
    $id = $_GET['id'];
    $result = $obj->DataViewById($tbl_name,$id);
}

if(isset($_POST['change'])){
    $cd = $_POST['data'];
    $msg = $obj->updateAttendanceData($tbl_name,$col,$cd,$id);
    echo $msg;
}

?>
<div class="container-fluid" id="container-wrapper">
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Edit Data (For Date :
            <?php echo $col; ?>)
        </h1><br>

        
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="./">Home</a></li>
            <li class="breadcrumb-item active" aria-current="page">Edit Data</li>
        </ol>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="card mb-4">
            <span><?php echo 'Roll: '.$result['Roll']; ?></span><br>
                    <span><?php echo 'Name: '.$result['Name']; ?></span><br>
                <form class="form" method="post">
                    <label for="change">Change:</label><br>
                    <select class="form-control" name="data" required>
                        <option selected value="<?php echo $result[$col]  ?>"><?php echo $result[$col]  ?></option>
                        <option value="P">P</option>
                        <option value="A">A</option>
                    </select><br>
                    <input type="submit" class="form-control btn-primary" name="change" value="Change">
                </form>
            </div>
        </div>
    </div>
</div>