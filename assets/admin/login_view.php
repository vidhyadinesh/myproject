<!DOCTYPE html>
<html lang="en">
  <head>
	<meta charset="utf-8">
	<title>Login</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="Admin panel developed with the Bootstrap from Twitter.">
	<meta name="author" content="dev" >

	<link href="<?php echo APPPATH.'views/'; ?>admin/css/bootstrap.css" rel="stylesheet">
	<link href="<?php echo APPPATH.'views/'; ?>admin/css/custom.css" rel="stylesheet">
	<link href="<?php echo APPPATH.'views/'; ?>admin/css/bootstrap-responsive.css" rel="stylesheet">
	<script type="text/javascript" src="<?php echo APPPATH.'views/'; ?>admin/js/jquery.latest.js"></script>
	<script type="text/javascript" src="<?php echo APPPATH.'views/'; ?>admin/js/bootstrap.min.js"></script>
	<!--[if lt IE 9]>
	  <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
  </head>
  <body>
	<div class="navbar navbar-fixed-top">
	  <div class="navbar-inner">
			<div class="container-fluid">
				  <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				  </a>
			  <a class="brand" href="#">Admin Management</a>
			</div>
		</div>
	</div><!-- end -->

	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span4">
			</div>
			<div class="span4" id="login_form_wrapper">
				<div class="login">
					<div class="login-header">
						<h1>LOGIN</h1>
					</div>

					<form class="form-horizontal" action="<?php echo base_url();?>admin/login/process" method="POST" name="process">
						<fieldset>
							 <?php echo $msg;?>
							<div class="control-group">								
								<label for="name">Email</label>
								<div>
									<input id="email" class="input-xlarge" type="text" name="user_email">
								</div>
							</div><!-- end control-group -->
	
							<div class="control-group">
								<label for="name">Password</label>
								<div>
									<input id="password" class="input-xlarge" type="password" name="user_pass">
									
								</div>
							</div><!-- end control-group -->
							<input class="btn btn-success btn-large" type="submit" value="Login">
							
							<!--
							<p class="other_options">
								Don't have an account ? <a href="register.html"> Register Here </a>
							</p>  -->
	
						</fieldset>
					</form>
				</div>
			</div><!-- end well -->
			<div class="span4">
			</div>
		</div><!-- end row-fuild -->
	</div>
	<hr>
	<footer class="well">
		Copyright &copy; Perth Nepal. All Rights Reserved. Powered By: <a href="http://99-websites.com" target="_blank">99-websites</a>
	</footer>
	</div>
  </body>
</html>
