<?php
$cc = $obj->viewCourse($_COOKIE['department']);
$ss = $obj->viewSession($_COOKIE['department']);
if(isset($_POST['add_cls'])){
    $ct = $obj->getCourseTitle($_POST['coursecode']);
    $msg = $obj->addClass($_POST['coursecode'],$_POST['session'],$_COOKIE['email'],$_COOKIE['department'],$ct['ct']);
    $msg2 = $obj->createTable($_POST['coursecode'],$_POST['session'],$_COOKIE['email'],$_COOKIE['department']);
    $msg3 = $obj->transferStudent($_POST['coursecode'],$_POST['session'],$_COOKIE['email'],$_COOKIE['department']);
}
?>
<div class="container-fluid" id="container-wrapper">
    <h2 style="text-decoration: none;">Add Class</h2>

    <form class="form" action="" method="post">
        <label for="session">Session:</label><br>
        <select class="form-control" name="session" required>
            <option selected value="">Select Session</option>
            <?php while ($s = mysqli_fetch_assoc($ss)) { ?>
                <option value="<?php echo $s['session']; ?>">
                    <?php echo $s['session']; ?>
                </option>
            <?php } ?>
        </select><br>
        <label for="coursecode">Course Code:</label><br>
        <select class="form-control" name="coursecode" required>
            <option selected value="">Select Course Code</option>
            <?php while ($c = mysqli_fetch_assoc($cc)) { ?>
                <option value="<?php echo $c['cc']; ?>">
                    <?php echo $c['cc']; ?>
                </option>
            <?php } ?>
        </select><br>
        <input type="submit" class="form-control btn-primary" name="add_cls" value="Add Class">
    </form>
</div>