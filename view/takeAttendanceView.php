<?php
$session = "";
$coursecode = "";
$tbl_name = "";
if (isset($_GET['session']) and isset($_GET['coursecode'])) {
    $session = $_GET['session'];
    $coursecode = $_GET['coursecode'];
    $tbl_name = $_COOKIE['department'].$coursecode . $session.$_COOKIE['email'];
    $result = $obj->viewTableName($tbl_name);
    $result2 = $obj->viewTable($tbl_name);


    $cl_nm = array();
    while ($data = mysqli_fetch_assoc($result)) {
        $cl_nm[] = $data['cl_mn'];
    }
    $cl_nm_sz = count($cl_nm);
}

if (isset($_POST['save'])) {
    $dateString = $_POST['date'];
    $date = date("d/m/Y", strtotime($dateString));
    if(in_array($date, $cl_nm)) {
        $msg = 'Attendance Already Taken '.$date;
    }else{
        $msg = $obj->addColumn($tbl_name, $date);
        $rollNo = $_POST['rollNo'];
        $check = $_POST['check'];
        $N = count($rollNo);

        for ($i = 0; $i < $N; $i++) {
            $rollNo[$i];
            if (isset($check[$i])) {
                $msg = $obj->takeAttendance($tbl_name, $date, $check[$i]);
            }
        }
    }
}
?>
<div class="container-fluid" id="container-wrapper">
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Take Attendance (Today's Date :
            <?php echo $todaysDate = date("m-d-Y"); ?>)
        </h1>
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="./">Home</a></li>
            <li class="breadcrumb-item active" aria-current="page">All Student in Class</li>
        </ol>
    </div>
    <p class="text-success"><?php if(isset($msg)) echo $msg; ?></p>
    <div class="row">
        <div class="col-lg-12">
            <form action="" method="post">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card mb-4">
                            <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                <h6 class="m-0 font-weight-bold text-primary">All Student in <?php echo ""; ?> Class
                                </h6>
                                <h6 class="m-0 font-weight-bold text-danger">Note: <i>Click on the checkboxes besides
                                        each student to take attendance!</i></h6>
                            </div>
                            <div class="form-group row mb-3 p-2">
                                <div class="col-xl-6">
                                    <label class="form-control-label">Select Date<span
                                            class="text-danger ml-2">*</span></label>
                                    <input type="date" name="date" class="form-control"  id="" required>
                                </div>
                            </div>
                            <div class="table-responsive p-3">
                                <table class="table align-items-center table-flush table-hover">
                                    <thead class="thead-light">
                                        <tr>
                                            <?php for ($i = 1; $i < 3; $i++) { ?>
                                            <th>
                                                <?php echo $cl_nm[$i]; ?>
                                            </th>
                                            <?php } ?>
                                            <th>Check</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php while ($data = mysqli_fetch_assoc($result2)) { ?>
                                        <tr>
                                            <?php for ($i = 1; $i < 3; $i++) {
                                                echo '<td>' . $data[$cl_nm[$i]] . '</td>'; }
                                            ?>
                                            <td>
                                                <input name='check[]' type='checkbox' value="<?php echo $data['Roll']; ?>" class='form-control'>
                                            </td>
                                        </tr>
                                        <input name="rollNo[]" value="<?php echo $data['Roll']; ?>" type="hidden" class="form-control">
                                        <?php } ?>
                                    </tbody>
                                </table>
                            </div>
                            <input type="submit" class="form-control btn-primary" name="save" value="Take Attendance">
                        </div>
                    </div>
            </form>

        </div>