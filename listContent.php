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
<!-- Insert Text editor -->
<?php if($user->isLoggedIn()){$uid = $user->data()->id;?>
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

$sql = "SELECT * FROM user_content";
//echo $sql;
$result = $conn->query($sql);

if ($result->num_rows == 0) {
    echo "<h1> No content found in the database </h1>";
    $conn->close();
}
   else {
   	 echo '<h2> Lessons found in the database </h2>';
	 echo '<table class="table">';
	 echo '<thead><tr><th>ContentID</th><th>Lesson Name</th><th>Difficulty</th></tr></thead>';
 	   while($row = $result->fetch_assoc()) {
    	echo '<tbody><tr>';
        echo "<td>" . $row["contentID"]. "</td><td><a href=\"showContent.php?cID=". $row["contentID"]."\">" . $row["lesson_name"]. "</a></td><td>" . $row["difficulty"]. "</td>";
        echo '</tr></tbody>';
       }
    echo '	  </table>';
?>
<?php } ?>
<?php } else{?>
	<h1> You need to be logged in to be able to access the learning content </h1>
	<a class="btn btn-warning" href="users/login.php" role="button">Log In &raquo;</a>
	<a class="btn btn-info" href="users/join.php" role="button">Sign Up &raquo;</a>
<?php } ?>
<h2></h2>
</div><!-- /.col -->
</div><!-- /.row -->

</div> <!-- /container -->
</div> <!-- /#page-wrapper -->

<!-- footers -->
<?php require_once $abs_us_root.$us_url_root.'users/includes/page_footer.php'; // the final html footer copyright row + the external js calls ?>
<!-- Place any per-page javascript here -->


<?php require_once $abs_us_root.$us_url_root.'users/includes/html_footer.php'; // currently just the closing /body and /html ?> 