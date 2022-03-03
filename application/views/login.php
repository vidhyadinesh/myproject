<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>User Signup with Email Verification</title>
	
	<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>bootstrap/css/bootstrap.min.css">
</head>
<body>
<div class="container">
	<h1 class="page-header text-center">Login</h1>
	<h3 class="page-header text-center">Not registered please  <a href="<?php echo base_url();?>register">click here to register</a></h3>
	<div class="row">
		<div class="col-sm-4">
			<?php
		    	if(validation_errors()){
		    		?>
		    		<div class="alert alert-info text-center">
		    			<?php echo validation_errors(); ?>
		    		</div>
		    		<?php
		    	}
 
				if($this->session->flashdata('message')){
					?>
					<div class="alert alert-info text-center">
						<?php echo $this->session->flashdata('message'); ?>
					</div>
					<?php
					unset($_SESSION['message']);
				}
		    ?>
			<h3 class="text-center">Login Form</h3>
			<form method="POST" action="<?php echo base_url().'user/login'; ?>">
				
				<div class="form-group">
					<label for="email">Email:</label>
					<input type="text" class="form-control" id="email" name="email" value="<?php echo set_value('email'); ?>">
				</div>
				<div class="form-group">
					<label for="password">Password:</label>
					<input type="password" class="form-control" id="password" name="password" value="<?php echo set_value('password'); ?>">
				</div>				
				<button type="submit" class="btn btn-primary">Login</button>
			</form>
		</div>
		<div class="col-sm-8">
			
		</div>
	</div>
</div>
</body>
</html>