<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>User Signup with Email Verification</title>
	<!--  jQuery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>

<!-- Isolated Version of Bootstrap, not needed if your site already uses Bootstrap -->
<link rel="stylesheet" href="https://formden.com/static/cdn/bootstrap-iso.css" />

<!-- Bootstrap Date-Picker Plugin -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>
	<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>bootstrap/css/bootstrap.min.css">
</head>
<body>
<div class="container">
	<h1 class="page-header text-center">User Signup with Email Verification</h1>
	<h3 class="page-header text-center">Already registered please  <a href="<?php echo base_url();?>user/login">click here to login</a></h3>
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
			<h3 class="text-center">Signup Form</h3>
			<form method="POST" action="<?php echo base_url().'user/register'; ?>">
				<div class="form-group">
					<label for="firstname">First name:</label>
					<input type="text" class="form-control" id="firstname" name="firstname" value="<?php echo set_value('firstname'); ?>" required>
				</div>
				<div class="form-group">
					<label for="lastname">Last name:</label>
					<input type="text" class="form-control" id="lastname" name="lastname" value="<?php echo set_value('lastname'); ?>" required>
				</div>
				<div class="form-group">
					<label for="phonenumber">Phone number:</label>
					<input type="text" class="form-control" id="phonenumber" name="phonenumber" value="<?php echo set_value('phonenumber'); ?>" required pattern="^\s*(([+]\s?\d[-\s]?\d|0)?\s?\d([-\s]?\d){9}|[(]\s?\d([-\s]?\d)+\s*[)]([-\s]?\d)+)\s*$" list="phones_pattern2_datalist">
				</div>
				<div class="form-group">
					<label for="dateofbirth">Date of birth:</label>
					<input type="text" class="form-control" id="dateofbirth" name="dateofbirth" value="<?php echo set_value('dateofbirth'); ?>" placeholder="MM-DD-YYYY" required>
				</div>
				<div class="form-group">
					<label for="email">Email:</label>
					<input type="text" class="form-control" id="email" name="email" value="<?php echo set_value('email'); ?>" required>
				</div>
				<div class="form-group">
					<label for="password">Password:</label>
					<input type="password" class="form-control" id="password" name="password" value="<?php echo set_value('password'); ?>" required>
				</div>
				<div class="form-group">
					<label for="password_confirm">Password:</label>
					<input type="password" class="form-control" id="password_confirm" name="password_confirm" value="<?php echo set_value('password_confirm'); ?>" required>
				</div>
				<div class="form-group">
					<label for="country">Country:</label>
					<select class="form-control" id="country" name="country" required>
						<option value="UK">UK</option>
					</select>
				</div>
				<div class="form-group">
					<label for="rdbsubscription">Subscription For (either of type: story, comment, poll) :</label>
					<select class="form-control" id="rdbsubscription" name="rdbsubscription" required>
						<option value="">--Select--</option>
						<option value="story" <?php echo (set_value('rdbsubscription')=='story')?'selected':'';?> >story</option>
						<option value="comment" <?php echo (set_value('rdbsubscription')=='comment')?'selected':'';?> >comment</option>
						<option value="poll" <?php echo (set_value('rdbsubscription')=='poll')?'selected':'';?>>poll</option>
					</select> 
				</div>
				<div class="form-group">
					<label for="rdbsubscription">Submit the word you see below:</label>
					<?php echo $cap['image'];?>
				</div>
				<div class="form-group">
					<label for="rdbsubscription"></label>					
					<input type="text" name="captcha" value="" class="form-control"/>
				</div>
				<button type="submit" class="btn btn-primary">Register</button>
			</form>
		</div>
		<div class="col-sm-8">
			
		</div>
	</div>
</div>
<script>
    $(document).ready(function(){
      var date_input=$('input[name="dateofbirth"]'); //our date input has the name "date"
      var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
      var options={
        format: 'mm-dd-yyyy',
        container: container,
        todayHighlight: true,
        autoclose: true,
        endDate: '+0d',
      };
      date_input.datepicker(options);
    })
</script>
</body>
</html>