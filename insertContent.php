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
	<form class="form-horizontal" action="insertC.php" method="POST" role="form">
	<fieldset>

	<!-- Form Name -->
	<legend>Add Content</legend>

	<!-- Text input-->
	<div class="form-group">
	  <label class="col-md-4 control-label" for="txtLesson">Lesson Name</label>  
	  <div class="col-md-5">
	  <input id="txtLesson" name="txtLesson" placeholder="" class="form-control input-md" required="" type="text">
	  <span class="help-block">Lesson name</span>  
	  </div>
	</div>

	<!-- Select Basic -->
	<div class="form-group">
	  <label class="col-md-4 control-label" for="slcCategory">Content Category</label>
	  <div class="col-md-4">
	    <select id="slcCategory" name="slcCategory" class="form-control">
	      <option value="1">History</option>
	      <option value="2">Geography</option>
	      <option value="3">Computer Science</option>
	      <option value="4">Mathematics</option>
	    </select>
	  </div>
	</div>

	<!-- Multiple Radios (inline) -->
	<div class="form-group">
	  <label class="col-md-4 control-label" for="rdDiff">Difficulty Level</label>
	  <div class="col-md-4"> 
	    <label class="radio-inline" for="rdDiff-0">
	      <input name="rdDiff" id="rdDiff-0" value="1" checked="checked" type="radio">
	      1
	    </label> 
	    <label class="radio-inline" for="rdDiff-1">
	      <input name="rdDiff" id="rdDiff-1" value="2" type="radio">
	      2
	    </label> 
	    <label class="radio-inline" for="rdDiff-2">
	      <input name="rdDiff" id="rdDiff-2" value="3" type="radio">
	      3
	    </label> 
	    <label class="radio-inline" for="rdDiff-3">
	      <input name="rdDiff" id="rdDiff-3" value="4" type="radio">
	      4
	    </label>
	  </div>
	</div>

	<textarea id="mytextarea"></textarea>
	<!-- Button -->
	<div class="form-group">
	  <label class="col-md-4 control-label" for="btnSave"></label>
	  <div class="col-md-4">
	    <button type="submit" id="btnSave" name="btnSave" class="btn btn-primary">Save Content</button>
	  </div>
	</div>

	</fieldset>
	</form>

<?php }else{?>
	<h1> You need to be logged in to be able to add content </h1>
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
