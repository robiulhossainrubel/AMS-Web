<?php
$session = "";
$coursecode = "";
$tbl_name = "";
if (isset($_GET['session']) and isset($_GET['coursecode'])) {
    $session = $_GET['session'];
    $coursecode = $_GET['coursecode'];
    $tbl_name = $coursecode . $session;
    $result = $obj->viewTableName($tbl_name);
    $info = $obj->viewTable($tbl_name);
    $cl_nm = array();
    while ($data = mysqli_fetch_assoc($result)) {
        $cl_nm[] = $data['cl_mn'];
    }
    $cl_nm_sz = count($cl_nm);
}

?>


<div class="container-fluid" id="container-wrapper">
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Edit Report (Today's Date :
            <?php echo $todaysDate = date("m-d-Y"); ?>)
        </h1>
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="./">Home</a></li>
            <li class="breadcrumb-item active" aria-current="page">Edit Report</li>
        </ol>
    </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card mb-4">
                            <div class="table-responsive p-3">
                                <table class="table align-items-center table-flush table-hover">
                                    <thead class="thead-light">
                                        <tr>
                                            <?php for ($i = 1; $i < 3; $i++) {
                                                echo '<th>'.$cl_nm[$i].'</th>';}
                                             ?>
                                             <?php for ($i = 11; $i < $cl_nm_sz; $i++) {
                                                echo '<th>'.$cl_nm[$i].'</th>';}
                                             ?>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <?php while ($data = mysqli_fetch_assoc($info)) { ?>
                                        <tr>
                                            <?php for ($i = 1; $i < 3; $i++) {
                                                echo '<td>' . $data[$cl_nm[$i]] . '</td>'; }
                                            ?>
                                            <?php for ($i = 11; $i < $cl_nm_sz; $i++) {
                                                //echo '<td>' . $data[$cl_nm[$i]] . '</td>'; 

                                               /* echo '<td><select class="form-control" name="check[]" required>
                                                        <option selected value="'.$data[$cl_nm[$i]].'">'.$data[$cl_nm[$i]].'</option>
                                                        <option value="A">A</option>
                                                        <option value="P">P</option>
                                                      </select></td>'; */
                                                 
                                                echo '<td>'.$data[$cl_nm[$i]].'<a href="'.'editData.php?tablename='.$tbl_name.'&colname='.$cl_nm[$i].'&id='.$data['id'].'"> Change</a></td>';
                                            }
                                            ?>
                                            
                                        </tr>
                                        <?php } ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
    </div>