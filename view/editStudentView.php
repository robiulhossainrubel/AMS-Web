<?php
$session = "";
$coursecode = "";
$tbl_name = "";
if (isset($_GET['session']) and isset($_GET['coursecode'])) {
    $session = $_GET['session'];
    $coursecode = $_GET['coursecode'];
    $tbl_name = $_COOKIE['department'].$coursecode . $session.$_COOKIE['email'];
    $result = $obj->viewTable($tbl_name);
}
if(isset($_GET['status'])){
    if($_GET['status']=='delete'){
        $id = $_GET['id'];
        $msg = $obj->deleteById($tbl_name,$id);
        echo $msg;
    }
}
if(isset($_GET['status'])){
    if($_GET['status']=='edit'){
        $id = $_GET['id'];
        $edata = $obj->DataViewById($tbl_name,$id);
    }
}
if(isset($_POST['save'])){
    $roll = $_POST['roll'];
    $name = $_POST['name'];
    $msg = $obj->addStudent($tbl_name,$roll,$name);
    echo $msg;
}
if(isset($_POST['update'])){
    $id = $_POST['id'];
    $roll = $_POST['roll'];
    $name = $_POST['name'];
    $msg = $obj->UpdateStudent($tbl_name,$roll,$name,$id);
    echo $msg;
}
?>

<div class="container-fluid" id="container-wrapper">
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Edit Student (Today's Date :
            <?php echo $todaysDate = date("m-d-Y"); ?>)
        </h1>
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="./">Home</a></li>
            <li class="breadcrumb-item active" aria-current="page">Edit Student</li>
        </ol>
    </div>
    <div class="card mb-4">
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">Create Students</h6>
                    <?php echo ''; ?>
                </div>
                <div class="card-body">
                  <form method="post">
                   <div class="form-group row mb-3">
                        <div class="col-xl-6">
                        <input type="hidden" name="id" value="<?php if(isset($edata['id'])) echo $edata['id'];?>">
                        <label class="form-control-label">Roll<span class="text-danger ml-2">*</span></label>
                        <input type="number" class="form-control" name="roll" value="<?php if(isset($edata['Roll'])) echo $edata['Roll'];?>" id="exampleInputFirstName" >
                        </div>
                        <div class="col-xl-6">
                        <label class="form-control-label">Name<span class="text-danger ml-2">*</span></label>
                      <input type="text" class="form-control" name="name" value="<?php if(isset($edata['Roll'])) echo $edata['Name'];?>" id="exampleInputFirstName" >
                        </div>
                    </div>
                      <?php
                    if (isset($_GET['id']))
                    {
                        if($_GET['status']== 'edit'){
                    ?>
                    <button type="submit" name="update" class="btn btn-warning">Update</button>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <?php
                        }
                    } else {           
                    ?>
                    <button type="submit" name="save" class="btn btn-primary">Save</button>
                    <?php
                    }         
                    ?>
                  </form>
                </div>
              </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card mb-4">
                            <div class="table-responsive p-3">
                                <table class="table align-items-center table-flush table-hover">
                                    <thead class="thead-light">
                                        <tr>
                                            <th>Roll</th>
                                            <th>Name</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <?php while ($data = mysqli_fetch_assoc($result)) { ?>
                                        <tr>
                                            <td><?php echo $data['Roll'] ?></td>
                                            <td><?php echo $data['Name'] ?></td>

                                            <td>
                                            <a class="btn btn-success" href="?status=edit&&session=<?php echo $session; ?>&coursecode=<?php echo $coursecode; ?>&id=<?php echo $data['id']; ?>">Edit</a>
                                                <a class="btn btn-danger" href="?status=delete&&session=<?php echo $session; ?>&coursecode=<?php echo $coursecode; ?>&id=<?php echo $data['id']; ?>">Delete</a>
                                            </td>
                                            
                                        </tr>
                                        <?php } ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
    </div>