<!DOCTYPE html>
<html lang="en">
  <head>
	<meta charset="utf-8">
	<title><?php echo $title; ?></title>
    
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="dev" >

	<link href="<?php echo base_url(); ?>assets/admin/css/bootstrap.css" rel="stylesheet">
	<link href="<?php echo base_url(); ?>assets/admin/css/custom.css" rel="stylesheet">
	<link href="<?php echo base_url(); ?>assets/admin/css/bootstrap-responsive.css" rel="stylesheet">
	
	<script type="text/javascript" src="<?php echo base_url(); ?>assets/admin/js/jquery.latest.js"></script>
	
	<script type="text/javascript" src="<?php echo base_url(); ?>assets/admin/js/bootstrap.min.js"></script>
	<script language="javascript" type="text/javascript" src="<?php echo base_url(); ?>assets/admin/chartsPlugin/flot/jquery.flot.js"></script>
	<script language="javascript" type="text/javascript" src="<?php echo base_url(); ?>assets/admin/chartsPlugin/flot/jquery.flot.resize.min.js"></script>
	<script src="<?php echo base_url(); ?>assets/admin/js/blockUI.js"></script>
 <script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>

<!-- Isolated Version of Bootstrap, not needed if your site already uses Bootstrap -->
<link rel="stylesheet" href="https://formden.com/static/cdn/bootstrap-iso.css" />

<!-- Bootstrap Date-Picker Plugin -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>


	<!--[if lt IE 9]>
	  <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
	<script type="text/javascript">
		$(document).ready(function() {
		$('.dropdown-menu li a').hover(
		function() {
		$(this).children('i').addClass('icon-white');
		},
		function() {
		$(this).children('i').removeClass('icon-white');
		});
		$('.icon-remove').click(function(){
			$(this).closest('#charts_main').remove();
		});
		
		}); 
	</script>
	
	
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
		  
		  <a class="brand" href="<?=base_url()?>admin/home">DASHBOARD</a>
		  
		  
		  
		  <div class="btn-group pull-right">
			<a class="btn" href="#"><i class="icon-user"></i> <?php echo $_SESSION['firstname'];?></a>
			<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
			  <span class="caret"></span>
			</a>
			<ul class="dropdown-menu">
			  
			  <li class="divider"></li>
			  <li><a href="<?=base_url().'user/logout'?>">Logout</a></li>
			</ul>
		  </div>
		<div class="nav-collapse">
			<ul class="nav">
			<!--<li><a href="index.html">Home</a></li>-->
			  <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Subscriptions <b class="caret"></b></a>
				<!--<ul class="dropdown-menu">
					<li><a href="add-users.html">New User</a></li>
					<li class="divider"></li>
					<li><a href="users.html">Manage Users</a></li>
				</ul>-->
			  </li>
			  <!--<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Roles <b class="caret"></b></a>
				<ul class="dropdown-menu">
					<li><a href="add-roles.html">New Role</a></li>
					<li class="divider"></li>
					<li><a href="roles.html">Manage Roles</a></li>
				</ul>
			  </li>
			  <li><a href="graphs.html">Stats</a></li>-->
			</ul>
		  </div>
		</div>
	  </div>
	</div>

	<div class="container-fluid">
	  <div class="row-fluid">