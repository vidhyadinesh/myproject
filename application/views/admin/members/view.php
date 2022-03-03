<div class="container">
    <h2><?php echo $title; ?></h2>
    <div class="col-md-6">
        <div class="card" style="width:400px">
            <div class="card-body">
                <h4 class="card-title"><?php echo $member['firstname'].' '.$member['lastname']; ?></h4>
                <p class="card-text"><b>Phone number:</b> <?php echo $member['phonenumber']; ?></p>
                <p class="card-text"><b>Date of birth:</b> <?php echo $member['dateofbirth']; ?></p>
                <p class="card-text"><b>Email:</b> <?php echo $member['email']; ?></p>               
                <p class="card-text"><b>Country:</b> <?php echo $member['country']; ?></p>
                 <p class="card-text"><b>Subscription:</b> <?php echo $member['subscription']; ?></p>
                <p class="card-text"><b>Created:</b> <?php echo $member['created']; ?></p>
                <a href="<?php echo site_url('admin/members'); ?>" class="btn btn-primary">Back To List</a>
            </div>
        </div>
    </div>
</div>