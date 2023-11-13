<?php

$cls = $obj->viewClass($_COOKIE['email']);

if(isset($_GET['id']) and isset( $_GET['session']) and isset($_GET['coursecode'])) {
    $id = $_GET['id'];
    $session = $_GET['session'];
    $coursecode = $_GET['coursecode'];
    $msg = $obj->deleteClass($id);
    $msg2 = $obj->dropTable($coursecode,$session,$_COOKIE['email'],$_COOKIE['department']);
}

?>
<div class="container-fluid p-4">
<?php while($row = mysqli_fetch_assoc($cls)) {?>
    <div class="card p-1">
              <div class="card h-100">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                    <p><a href="classManage.php?session=<?php echo $row['session']; ?>&coursecode=<?php echo $row['coursecode']; ?>">
                    <span style="font-size: 40px;"><?php echo $row['session'] ?></span><br>
                    <span style="font-size: 20px;"><?php echo $row['coursecode'] ?></span><br>
                </a></p>
            <div>
                <a href="#">Edit</a>
                <a href="?id=<?php echo $row['id']; ?>&session=<?php echo $row['session']; ?>&coursecode=<?php echo $row['coursecode']; ?>">Delete</a>
            </div>
                      
                    </div>
                  </div>
                </div>
              </div>
    </div>

<?php  } ?>
</div>