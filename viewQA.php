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

<div class="embed-responsive embed-responsive-16by9">
  <iframe height="600" class="embed-responsive-item" src="qa/index.php"></iframe>
</div>

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
