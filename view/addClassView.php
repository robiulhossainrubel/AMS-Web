<?php
$cc = $obj->viewCourse($_COOKIE['department']);
if(isset($_POST['add_cls'])){
    $msg = $obj->addClass($_POST['coursecode'],$_POST['session'],$_COOKIE['email'],$_COOKIE['department']);
    $msg2 = $obj->createTable($_POST['coursecode'],$_POST['session']);
    $msg3 = $obj->transferStudent($_POST['coursecode'],$_POST['session']);
}
?>

<h2 style="text-decoration: none;">Add Class</h2>

<form class="form" action="" method="post">
    <label for="session">Session:</label><br>
    <select class="form-control" name="session" required>
        <option selected value="">Select Session</option>
        <option value="2018-2019">2018-2019</option>
        <option value="2019-2020">2019-2020</option>
        <option value="2020-2021">2020-2021</option>
        <option value="2021-2022">2021-2022</option>
    </select><br>
    <label for="coursecode">Course Code:</label><br>
    <select class="form-control" name="coursecode" required>
        <option selected value="">Select Course Code</option>
        <?php while($c = mysqli_fetch_assoc($cc)) { ?>
		<option value="<?php echo $c['cc']; ?>"><?php echo $c['cc']; ?></option>
		<?php } ?>
    </select><br>
    <input type="submit" class="form-control btn-primary" name="add_cls" value="Add Class">
</form>