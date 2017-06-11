<?php
require_once 'users/init.php';
require_once $abs_us_root.$us_url_root.'users/includes/header.php';
require_once $abs_us_root.$us_url_root.'users/includes/navigation.php';
?>
<div id="page-wrapper">
<div class="container">
<!-- Insert Content page -->
<div class="row">
<div class="col-xs-12">


 <?php
$servername = "localhost";
$username = "chime2";
$password = "chime2";
$dbname = "chime";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "INSERT INTO user_content (userID, lesson_name, category, difficulty, content)
VALUES (1,'" . $_POST["txtLesson"] . "'," . $_POST["slcCategory"] . "," . $_POST["rdDiff"] . ",'" . addslashes($_POST["myTextArea"]) . "' )";
//echo $sql;
if ($conn->query($sql) === TRUE) {
    echo "<h2> New learning content created successfully </h2>";
} else {
    echo "<h3> Error: " . $sql . "<br>" . $conn->error . "</h3>";
}

$conn->close();
?>
</div><!-- /.col -->
</div><!-- /.row -->

</div> <!-- /container -->
</div> <!-- /#page-wrapper -->

<!-- footers -->
<?php require_once $abs_us_root.$us_url_root.'users/includes/page_footer.php'; // the final html footer copyright row + the external js calls ?>
<!-- Place any per-page javascript here -->


<?php require_once $abs_us_root.$us_url_root.'users/includes/html_footer.php'; // currently just the closing /body and /html ?>
