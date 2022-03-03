
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
        <div class="col-md-12 search-panel">
            
        </div>
        
        <!-- Data list table --> 
        <table class="table table-striped table-bordered">
            
            <tbody>
                <?php if(!empty($subscriptioncontent)){ foreach($subscriptioncontent->hits as $row){ ?>
                <tr>
                    <td><?php print_r($row->title); ?></td>
                    
                </tr>
                <?php } }else{ ?>
                <tr><td colspan="7">No subscription(s) found...</td></tr>
                <?php } ?>
            </tbody>
        </table>
    
        <!-- Display pagination links -->
        <div class="pagination pull-right">
            <?php //echo $this->pagination->create_links(); ?>
        </div>
    </div>
</div>
