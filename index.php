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
