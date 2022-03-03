<div class="container">
    <h2><?php echo $title; ?></h2>
    
    <!-- Display status message -->
    <?php if(!empty($success_msg)){ ?>
    <div class="col-xs-12">
        <div class="alert alert-success"><?php echo $success_msg; ?></div>
    </div>
    <?php }elseif(!empty($error_msg)){ ?>
    <div class="col-xs-12">
        <div class="alert alert-danger"><?php echo $error_msg; ?></div>
    </div>
    <?php } ?>
    
    <div class="row">
        <div class="col-md-6">
            <form method="post">
                <div class="form-row">
                    <div class="col-md-6 mb-3">
                        <label>First name</label>
                        <input type="text" class="form-control" name="first_name" placeholder="Enter first name" value="<?php echo !empty($member['firstname'])?$member['firstname']:''; ?>" >
                        <?php echo form_error('first_name','<div class="invalid-feedback">','</div>'); ?>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label>Last name</label>
                        <input type="text" class="form-control" name="last_name" placeholder="Enter last name" value="<?php echo !empty($member['lastname'])?$member['lastname']:''; ?>" >
                        <?php echo form_error('last_name','<div class="invalid-feedback">','</div>'); ?>
                    </div>
                </div>
                <div class="form-row">
                    <div class="col-md-6 mb-3">
                        <label>Phone number</label>
                        <input type="text" class="form-control" name="phonenumber" placeholder="Enter phone number" value="<?php echo !empty($member['phonenumber'])?$member['phonenumber']:''; ?>" >
                        <?php echo form_error('phone_number','<div class="invalid-feedback">','</div>'); ?>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label>Date of birth</label>
                        <input type="text" class="form-control" name="dateofbirth" placeholder="MM/DD/YYYY" value="<?php echo !empty($member['dateofbirth'])?$member['dateofbirth']:''; ?>" >
                        <?php echo form_error('dateofbirth','<div class="invalid-feedback">','</div>'); ?>
                    </div>
                </div>
                <div class="form-group">
                    <label>Email</label>
                    <input type="text" class="form-control" disabled name="email" placeholder="Enter email" value="<?php echo !empty($member['email'])?$member['email']:''; ?>" >
                    <?php echo form_error('email','<div class="invalid-feedback">','</div>'); ?>
                </div>
                <div class="form-group">
                    <label>Country</label>
                    <input type="text" class="form-control" name="country" placeholder="Enter country" value="<?php echo !empty($member['country'])?$member['country']:''; ?>" >
                    <?php echo form_error('country','<div class="invalid-feedback">','</div>'); ?>
                </div>
                <div class="form-row">
                    <div class="col-md-6 mb-3">
                        <label>Subscription For</label>
                        <select class="form-control" id="rdbsubscription" name="rdbsubscription">
                        <option value="">--Select--</option>
                        <option value="story" <?php echo ($member['subscription']=='story')?'selected':''; ?> >story</option>
                        <option value="comment" <?php echo ($member['subscription']=='comment')?'selected':''; ?>>comment</option>
                        <option value="poll" <?php echo ($member['subscription']=='poll')?'selected':''; ?>>poll</option>
                    </select> 
                        <?php echo form_error('rdbsubscription','<div class="invalid-feedback">','</div>'); ?>
                    </div>
                    <div class="col-md-6 mb-3">
                        
                    </div>
                </div>
                
                <a href="<?php echo site_url('admin/members'); ?>" class="btn btn-secondary">Back</a>
                <input type="submit" name="memSubmit" class="btn btn-success" value="Submit">
            </form>
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