<?php
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
		<div class="panel-body">
			<p>Go and see and download any of our available content</p>
			<p> Go to content </p>
		</div>
	</div><!-- /panel -->
</div><!-- /.col -->
<div class="col-md-4">
	<div class="panel panel-default">
		<div class="panel-heading"><h2><strong>Open questions</strong></h2></div>
		<div class="panel-body">
				<p>Want to post a question? Want to browse other user's questions? </p>
				<p><a href="viewQA.php">Visit our fun questions and answers section</a></p>
		</div>
	</div><!-- /panel -->
</div><!-- /.col -->
<div class="col-md-4">
	<div class="panel panel-default">
		<div class="panel-heading"><h2><strong>Volunteers Needed!</strong></h2></div>
		<div class="panel-body">
			<p>Want to upload and volunteer any content as a teacher? </p>
			<p><a href="users/join.php">Register here</a></p>
			<p><a href="insertContent.php">Already registered? add content here </a></p>
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
