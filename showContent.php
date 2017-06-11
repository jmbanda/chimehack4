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

$sql = "SELECT * FROM user_content WHERE contentID = " . $_GET["cID"] . "";
//echo $sql;
$result = $conn->query($sql);

if ($result->num_rows == 0) {
    echo "<h1>.Error: " . $sql . "<br>" . $conn->error ."</h1>";
    $conn->close();
}
   else {
   	$row = $result->fetch_assoc()
?>
	<form class="form-horizontal" role="form">
	<fieldset>

	<!-- Form Name -->
	<legend>Learning Content</legend>

	<!-- Text input-->
	<div class="form-group">
	  <label class="col-md-4 control-label" for="txtLesson">Lesson Name</label>  
	  <div class="col-md-5">
	  <input id="txtLesson" name="txtLesson" placeholder="" class="form-control input-md" required="" type="text" <?php echo "value=\"" . $row['lesson_name'] . "\""; ?>>
	  </div>
	</div>

	<!-- Select Basic -->
	<div class="form-group">
	  <label class="col-md-4 control-label" for="slcCategory">Content Category</label>
	  <div class="col-md-4">
	    <select id="slcCategory" name="slcCategory" class="form-control">
	      <option value="1" <?php if ($row['category'] == 1) echo "selected=\"selected\"" ?> >History</option>
	      <option value="2" <?php if ($row['category'] == 2) echo "selected=\"selected\"" ?> >Geography</option>
	      <option value="3" <?php if ($row['category'] == 3) echo "selected=\"selected\"" ?> >Computer Science</option>
	      <option value="4" <?php if ($row['category'] == 4) echo "selected=\"selected\"" ?> >Mathematics</option>
	    </select>
	  </div>
	</div>

	<!-- Multiple Radios (inline) -->
	<div class="form-group">
	  <label class="col-md-4 control-label" for="rdDiff">Difficulty Level</label>
	  <div class="col-md-4"> 
	    <label class="radio-inline" for="rdDiff-0">
	      <input name="rdDiff" id="rdDiff-0" value="1" <?php if ($row['difficulty'] == 1) echo "checked=\"checked\"" ?> type="radio">
	      1
	    </label> 
	    <label class="radio-inline" for="rdDiff-1">
	      <input name="rdDiff" id="rdDiff-1" value="2" <?php if ($row['difficulty'] == 2) echo "checked=\"checked\"" ?> type="radio">
	      2
	    </label> 
	    <label class="radio-inline" for="rdDiff-2">
	      <input name="rdDiff" id="rdDiff-2" value="3" <?php if ($row['difficulty'] == 3) echo "checked=\"checked\"" ?> type="radio">
	      3
	    </label> 
	    <label class="radio-inline" for="rdDiff-3">
	      <input name="rdDiff" id="rdDiff-3" value="4" <?php if ($row['difficulty'] == 4) echo "checked=\"checked\"" ?> type="radio">
	      4
	    </label>
	  </div>
	</div>

	<textarea name='myTextArea' id="mytextarea">
	<?php echo $row['content'] ?>
	</textarea>
	<!-- Button -->
	<div class="form-group">
	  <label class="col-md-4 control-label" for="btnSave"></label>
	  <div class="col-md-4">
	    <button id="btnSave" name="btnSave" class="btn btn-primary" disabled>Download Content</button>
	  </div>
	</div>	
	</fieldset>
	</form>

<div class="row">
<div class="col-xs-12">
<?php
$cmtx_identifier = $_GET["cID"];
$cmtx_reference  = 'Content ' . $_GET["cID"];
$cmtx_folder     = '/chimehack4/commsystem/';
require($_SERVER['DOCUMENT_ROOT'] . $cmtx_folder . 'frontend/index.php');
?>
</div><!-- /.col -->
</div><!-- /.row -->

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