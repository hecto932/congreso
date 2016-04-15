<div class="row wrapper border-bottom white-bg page-heading">
    <div class="col-lg-9">
        <h2>Arbitraje</h2>
        <ol class="breadcrumb">
            <li>
                <a href="/backend">Backend</a>
            </li>
            <li>
            	<a href="backend/arbitraje">Arbitraje</a>
            </li>
            <li class="active">
                <strong><?php echo $work["title"]; ?></strong>
            </li>
        </ol>
    </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
    <div class="row">
    	<div class="col-md-12">
            <div class="profile-image">
                <?php if($work["user"]["image"] == null): ?>
                    <img src="assets/app/img/profile2.jpg" class="img-circle circle-border m-b-md" alt="profile">
                <?php else: ?>
                    <img src="uploads/avatars/<?php echo $work["user"]["image"]; ?>" class="img-circle circle-border m-b-md" alt="profile">
                <?php endif; ?>
            </div>
            <div class="profile-info">
                <div class="">
                    <div>
                        <h2 class="no-margins">
                            <?php echo $work["user"]["lastName"].", ".$work["user"]["name"]; ?>
                        </h2>
                        <h4><?php echo $work["user"]["university"]; ?></h4>
                        <h4>
                            <?php echo $work["user"]["school"]; ?>
                        </h4>
                         <h4>
                            <i class="fa fa-envelope-o"></i> <?php echo $work["user"]["email"]; ?>
                        </h4>
                         <h4>
                            <i class="fa fa-comment"></i> <?php echo $work["user"]["ci"]; ?>
                        </h4>
                    </div>
                </div>
            </div>
        </div>
    	<div class="col-md-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5><?php echo $work["title"]; ?></h5>
                </div>
                <div> 
                    <div class="ibox-content profile-content">
                        <h4><strong><?php echo $work["user"]["lastName"].", ".$work["user"]["name"]; ?></strong></h4>
                        <p><i class="fa fa-map-marker"></i> <strong>Campus <?php echo $work["campus"]; ?></strong></p>
                        <p>
                            <strong>Area Temática:</strong> <?php echo $work["area"]; ?>
                        </p>
                        <p>
                            <strong>Modalidad:</strong> <?php echo $work["modality"]; ?>
                        </p>
                        <p>
                            <?php if($work["status"] == "En proceso de arbitraje"): ?>
                                <p><span style="font-size: 16px;"class="label label-info"><?php echo $work["status"]; ?></span></p>
                            <?php elseif($work["status"] == "Aprobado"): ?>
                                <p><span style="font-size: 16px;"class="label label-success"><?php echo $work["status"]; ?></span></p>
                            <?php else: ?>
                                <p><span style="font-size: 16px;"class="label label-danger"><?php echo $work["status"]; ?></span></p>
                            <?php endif; ?>
                        </p>
                        <?php if(!empty($work["files"])): ?>
                            <h4>Adjuntos del trabajo: </h4>
                            <hr>
                            <ul class="list-unstyled file-list" style="padding: 0">
                                <?php foreach($work["files"] as $key => $value): ?>
                                    <li class=""></i><a target="_blank" href="uploads/files/<?php echo $value["name"]; ?>"><i class="fa fa-file"></i> <?php echo $value["name"]; ?></a></li>
                                <?php endforeach; ?>
                            </ul>
                        <?php else: ?>
                        	<p><strong>Este trabajo no posee archivos.</strong></p>
                        <?php endif; ?>
                    </div>
                        <?php if($work["status"] == "En proceso de arbitraje"): ?>
                            <form action="backend/arbitraje/evaluar" method="post">
                                 <input type="hidden" name="<?php echo $this->security->get_csrf_token_name(); ?>" value="<?php echo $this->security->get_csrf_hash(); ?>">
                                <input type="hidden" name="workId" value="<?php echo $work["id"]; ?>">
                                <div class="form-group">
                                    <div class="col-sm-9">
                                        <select class="form-control m-b" name="status">
                                            <option value="En proceso de arbitraje"><?php echo $work["status"]; ?></option>
                                            <option value="Aprobado">Aprobado</option>
                                            <option value="Rechazado">Rechazado</option>
                                        </select>
                                    </div>
                                    <button class="col-sm-3 btn btn-sm btn-primary pull-right m-t-n-xs" type="submit"><strong>Aceptar</strong></button>
                                </div>
                            </form>
                        <?php endif; ?>
                    
                </div>
                
            </div>
        </div>
    </div>
</div>