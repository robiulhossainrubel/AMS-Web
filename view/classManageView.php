<?php
$session = "";
$coursecode = "";
$tbl_name = "";
if (isset($_GET['session']) and isset($_GET['coursecode'])) {
    $session = $_GET['session'];
    $coursecode = $_GET['coursecode'];
}
?>


<div class="container-fluid" id="container-wrapper">
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Class Dashboard</h1>
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="./">Home</a></li>
              <li class="breadcrumb-item active" aria-current="page">Manage Class</li>
            </ol>
          </div>

          <div class="row mb-3">
          <!-- New User Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card h-100">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <a href="takeAttendance.php?session=<?php echo $session; ?>&coursecode=<?php echo $coursecode; ?>">
                      <div class="text-xs font-weight-bold text mb-1">Take Attendance</div>
                      </a>
                      <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800"><?php echo "";?></div>
                      <div class="mt-2 mb-0 text-muted text-xs">
                        <!-- <span class="text-success mr-2"><i class="fas fa-arrow-up"></i> 20.4%</span>
                        <span>Since last month</span> -->
                      </div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-check fa-3x text-info"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <!-- Earnings (Monthly) Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card h-100">
                <div class="card-body">
                  <div class="row align-items-center">
                    <div class="col mr-2">
                      <a href="attendanceReport.php?session=<?php echo $session; ?>&coursecode=<?php echo $coursecode; ?>">
                      <div class="text-xs font-weight-bold text mb-1">View Report</div>
                      </a>
                      <div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo "";?></div>
                      <div class="mt-2 mb-0 text-muted text-xs">
                        <!-- <span class="text-success mr-2"><i class="fa fa-arrow-up"></i> 3.48%</span>
                        <span>Since last month</span> -->
                      </div>
                    </div>
                    <div class="col-auto">
                      

                      <i class="fas fa-chart-area fa-3x text-primary"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- Earnings (Annual) Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card h-100">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                    <a href="editAttendance.php?session=<?php echo $session; ?>&coursecode=<?php echo $coursecode; ?>">
                      <div class="text-xs font-weight-bold text mb-1">Edit Attendance</div>
                    </a>
                      <div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo "";?></div>
                      <div class="mt-2 mb-0 text-muted text-xs">
                        <!-- <span class="text-success mr-2"><i class="fas fa-arrow-up"></i> 12%</span>
                        <span>Since last years</span> -->
                      </div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-edit fa-3x text-success"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            
            <!-- Pending Requests Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card h-100">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <a href="ctMark.php?session=<?php echo $session; ?>&coursecode=<?php echo $coursecode; ?>">
                      <div class="text-xs font-weight-bold text mb-1">Add Class Test Mark</div></a>
                      <div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo "";?></div>
                      <div class="mt-2 mb-0 text-muted text-xs">
                        <!-- <span class="text-danger mr-2"><i class="fas fa-arrow-down"></i> 1.10%</span>
                        <span>Since yesterday</span> -->
                      </div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-calendar fa-3x text-warning"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card h-100">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <a href="editStudent.php?session=<?php echo $session; ?>&coursecode=<?php echo $coursecode; ?>">
                      <div class="text-xs font-weight-bold text mb-1">Edit Students</div></a>
                      <div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo "";?></div>
                      <div class="mt-2 mb-0 text-muted text-xs">
                        <!-- <span class="text-danger mr-2"><i class="fas fa-arrow-down"></i> 1.10%</span>
                        <span>Since yesterday</span> -->
                      </div>
                    </div>
                    <div class="col-auto">
                      <i class="fas fa-users fa-3x text-primary"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            
        </div>
      </div>