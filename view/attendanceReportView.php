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

    $std_info = array();
    while ($data = mysqli_fetch_assoc($result2)) {
        $std_info[] = $data;
    }

    if($cl_nm_sz>11){
    foreach($std_info as $datas){
        $cnt =0;
        for ($i = 11; $i < $cl_nm_sz; $i++) {
            if($datas[$cl_nm[$i]]==='P'){
                $cnt++;
            }
        }
        $best = array();
        $best[] = $datas['CT1'];
        $best[] = $datas['CT2'];
        $best[] = $datas['CT3'];
        rsort($best);
        $mark = 0;
        $percentage = ($cnt/($cl_nm_sz-11))*100;
        if($percentage>=90){
            $mark = 10;
        }elseif($percentage>=85 and $percentage<90){
            $mark = 9;
        }elseif($percentage>= 80 and $percentage< 85){
            $mark = 8;
        }elseif($percentage>= 75 and $percentage< 80){
            $mark = 7;
        }elseif($percentage>= 70 and $percentage< 75){
            $mark = 6;
        }elseif($percentage>= 60 and $percentage< 70){
            $mark = 5;
        }elseif($percentage< 60){
            $mark = 0;
        }
        $total = $best[0]+$best[1]+$mark;
        
        $obj->updateBest($tbl_name,$percentage,$mark,$best[0],$best[1],$total,$datas["Roll"]);
    }
}
    //print_r($std_info);
}

?>
<div class="container-fluid" id="container-wrapper">
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">View Report (Today's Date :
            <?php echo $todaysDate = date("m-d-Y"); ?>)
        </h1>
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="./">Home</a></li>
            <li class="breadcrumb-item active" aria-current="page">View Report</li>
        </ol>
    </div>

    <div class="col-xl-3 col-md-6 mb-4">
        <div class="card h-100">
            <div class="card-body">
                <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                        <a href="generatePDF.php?session=<?php echo $session; ?>&coursecode=<?php echo $coursecode; ?>">
                            <div class="text-xs font-weight-bold text mb-1">Generate PDF</div>
                        </a>
                        <div class="h5 mb-0 font-weight-bold text-gray-800">
                            <?php echo ""; ?>
                        </div>
                        <div class="mt-2 mb-0 text-muted text-xs">
                            <!-- <span class="text-danger mr-2"><i class="fas fa-arrow-down"></i> 1.10%</span>
                        <span>Since yesterday</span> -->
                        </div>
                    </div>
                    <div class="col-auto">
                        <i class="fas fa-file-pdf fa-3x text-danger"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="card mb-4">
        <div class="card-header">
            <i class="fas fa-table mr-1"></i>
            All Students From Session
            <?php echo $session ?>
        </div>

        <div class="card-body">
            <div class="table-responsive">

                <table class="table align-items-center table-flush table-hover" id="tableID" width="100%"
                    cellspacing="0">
                    <thead class="thead-light">
                        <tr>
                            <?php for ($i = 1; $i < $cl_nm_sz; $i++) { ?>
                                <th>
                                    <?php echo $cl_nm[$i]; ?>
                                </th>
                            <?php } ?>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($std_info as $dataa) { ?>
                            <tr>
                                <?php for ($i = 1; $i < $cl_nm_sz; $i++) {
                                    echo '<td>' . $dataa[$cl_nm[$i]] . '</td>';
                                    //echo '<td>'.$dataa[$cl_nm[$i]].'<a href="'.'editAttendance.php?tablename='.$tbl_name.'&colname='.$cl_nm[$i].'">Update</a>';
                                }
                                ?>
                                <td>
                            </tr>
                        <?php } ?>
                    </tbody>
                </table>

            </div>
        </div>
    </div>