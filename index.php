<?php

if(file_exists("install/index.php")){
	//perform redirect if installer files exist
	//this if{} block may be deleted once installed
	header("Location: install/index.php");
}

require_once 'users/init.php';
require_once $abs_us_root.$us_url_root.'users/includes/header.php';
require_once $abs_us_root.$us_url_root.'users/includes/navigation.php';
?>

<div id="page-wrapper">
<div class="container">
<div class="row">
	<div class="col-xs-12">
		<div class="jumbotron">
			<h1>Welcome to lernante loko</h1>
			<p class="text-muted">An Open Source learning Platform. <?php //print_r($_SESSION);?></p>
			<p>
			<?php if($user->isLoggedIn()){$uid = $user->data()->id;?>
				<a class="btn btn-default" href="users/account.php" role="button">User Account &raquo;</a>
			<?php }else{?>
				<a class="btn btn-warning" href="users/login.php" role="button">Log In &raquo;</a>
				<a class="btn btn-info" href="users/join.php" role="button">Sign Up &raquo;</a>
			<?php } ?>
			</p>
		</div>
	</div>
</div>

<div class="row">
<div class="col-md-4">
	<div class="panel panel-default">
		<div class="panel-heading"><h2><strong>Learning Content</strong></h2></div>
		<div class="panel-body">You're going to login with the default username of <strong>admin</strong> and the default password of <strong>password</strong>.
		You can also login as a standard level user with the credentials of <strong>user</strong> and <strong>password</strong>.
		If you cannot login for some reason, edit the login.php file and uncomment out the lines<br> error_reporting(E_ALL);<br>
		ini_set('display_errors', 1);<br> to see if there are any errors in your server configuration.
		</div>
	</div><!-- /panel -->
</div><!-- /.col -->
<div class="col-md-4">
	<div class="panel panel-default">
		<div class="panel-heading"><h2><strong>Open questions</strong></h2></div>
		<div class="panel-body">You want to go to the Admin Dashboard. From there you can personalize your settings.
		You can decide whether or not you want to use reCaptcha, force SSL, or mess with some CSS.
		</div>
	</div><!-- /panel -->
</div><!-- /.col -->
<div class="col-md-4">
	<div class="panel panel-default">
		<div class="panel-heading"><h2><strong>Volunteers Needed!</strong></h2></div>
		<div class="panel-body">From the Admin Dashboard, you can go to Admin Permissions and add some new user levels.
		Then check out Admin Pages to decide which pages are private and which are public. Once you make a page private,
		you can decide how what level of access someone needs to access it.
		Any new pages you create in your site folder will automatically show up here.
		</div>
	</div><!-- /panel -->
</div><!-- /.col -->
</div><!-- /.row -->

<div class="row">
<div class="col-xs-12">
<!-- Insert Text editor -->

	<form class="form-horizontal" method="post">
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
	    <button id="btnSave" name="btnSave" class="btn btn-primary">Save Content</button>
	  </div>
	</div>

	</fieldset>
	</form>


</div><!-- /.col -->
</div><!-- /.row -->


<div class="row">
<div class="col-xs-12">
<?php
$cmtx_identifier = '1';
$cmtx_reference  = 'Main Page Test';
$cmtx_folder     = '/chimehack4/commsystem/';
require($_SERVER['DOCUMENT_ROOT'] . $cmtx_folder . 'frontend/index.php');
?>
</div><!-- /.col -->
</div><!-- /.row -->

</div> <!-- /container -->

</div> <!-- /#page-wrapper -->

<!-- footers -->
<?php require_once $abs_us_root.$us_url_root.'users/includes/page_footer.php'; // the final html footer copyright row + the external js calls ?>

<!-- Place any per-page javascript here -->


<?php require_once $abs_us_root.$us_url_root.'users/includes/html_footer.php'; // currently just the closing /body and /html ?>
