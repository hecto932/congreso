<div class="wrapper wrapper-content">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5><?php echo $work["title"]; ?></h5>
                    </div>
                    <div>
                         <div class="ibox-content no-padding border-left-right">
                             <?php if($userData["image"] == null): ?>
                                <img src="assets/app/img/profile2.jpg" class="img-responsive" alt="profile">
                            <?php else: ?>
                                <img width="100%" src="uploads/avatars/<?php echo $userData["image"]; ?>" class="img-responsive" alt="profile">
                            <?php endif; ?>
                        </div> 
                        <div class="ibox-content profile-content">
                            <h4><strong><?php echo $userData["lastName"].", ".$userData["name"]; ?></strong></h4>
                            <p><i class="fa fa-map-marker"></i> <strong>Campus <?php echo $work["campus"]; ?></strong></p>
                            <p>
                                <strong>Area Temática:</strong> <?php echo $work["area"]; ?>
                            </p>
                            <p>
                                <strong>Modalidad:</strong> <?php echo $work["modality"]; ?>
                            </p>
                            <?php if(!empty($work["files"])): ?>
                                <h5>Archivos: </h5>
                                <hr>
                                <ul class="folder-list" style="padding: 0">
                                    <?php foreach($work["files"] as $key => $value): ?>
                                        <li><a href="uploads/files/<?php echo $value["name"]; ?>"><i class="fa fa-file"></i> <?php echo $value["name"]; ?></a></li>
                                    <?php endforeach; ?>
                                </ul>
                            <?php endif; ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>