<div class="row wrapper border-bottom white-bg page-heading">
    <div class="col-lg-10">
        <h2>Perfil de Usuario</h2>
        <ol class="breadcrumb">
            <li>
                <a href="/backend">Backend</a>
            </li>
            <li>
                <a href="backend/participantes">Asistentes</a>
            </li>
            <li class="active">
                <strong><?php echo $assistant["lastName"].", ".$assistant["name"]; ?></strong>
            </li>
        </ol>
    </div>
    <div class="col-lg-2">

    </div>
</div>

<div class="wrapper wrapper-content">
            <div class="row animated fadeInRight">
                <div class="col-md-4">
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <h5>Detalle de perfil</h5>
                        </div>
                        <div>
                            <div class="ibox-content no-padding border-left-right">
                                <?php $image = "uploads/avatars/".$assistant['image']; ?>
                                <?php if(file_exists($image) && $assistant['image'] != null ): ?>
                                    <img alt="image" class="img-responsive" src="uploads/avatars/<?php echo $assistant["image"]; ?>">
                                <?php else: ?>
                                    <img alt="image" class="img-responsive" src="assets/app/img/profile2.jpg">
                                <?php endif; ?>
                            </div>
                            <div class="ibox-content profile-content">
                                <h4><strong><?php echo $assistant["lastName"].", ".$assistant["name"]; ?></strong></h4>
                                <h5><i class="fa fa-info"></i> Cédula: <?php echo $assistant["ci"]; ?></h5>
                                <?php if($assistant["university"] != null && $assistant["university"] != ""): ?>
                                	<h5><i class="fa fa-map-marker"></i> <?php echo $assistant["university"]; ?></h5>
                                <?php else: ?>
                                	<h5><i class="fa fa-map-marker"></i> N/A.</h5>
                                <?php endif; ?>
                                <?php if($assistant["school"] != null && $assistant["school"] != ""): ?>
                                	<h5><i class="fa fa-map-marker"></i> <?php echo $assistant["school"]; ?></h5>
                                <?php else: ?>
                                	<h5><i class="fa fa-map-marker"></i> N/A.</h5>
                                <?php endif; ?>
                                <h5>
                                    <i class="fa fa-envelope"> </i> <a href="mailto:<?php echo $assistant["email"]; ?>"><?php echo $assistant["email"]; ?></a>
                                </h5>
                                <h5>
                                    <i class="fa fa-phone"> </i> <a href="tel:<?php echo $assistant["phone"]; ?>"><?php echo $assistant["phone"]; ?></a>
                                </h5>
                            </div>
                    	</div>
                	</div>
               	</div>
                <div class="col-md-8">
                    <div class="col-md-12">
                    	<div class="ibox float-e-margins">
	                        <div class="ibox-title">
	                            <h5>Pagos</h5>
	                            <div class="ibox-tools">
	                                <a class="collapse-link">
	                                    <i class="fa fa-chevron-up"></i>
	                                </a>   
	                            </div>
	                        </div>
	                        <div class="ibox-content">
	                            <div>
	                               <?php if(!empty($assistant["payments"])): ?>
	                                	<?php foreach($assistant["payments"] as $key => $value): ?>
	                                		
	                                		<div class="feed-activity-list">
			                                    <div class="feed-element">
			                                        <a href="#" class="pull-left">
			                                            <?php $image = "uploads/avatars/".$assistant['image']; ?>
						                                <?php if(file_exists($image) && $assistant['image'] != null ): ?>
						                                    <img alt="image" class="img-circle" src="uploads/avatars/<?php echo $assistant["image"]; ?>">
						                                <?php else: ?>
						                                    <img alt="image" class="img-circle" src="assets/app/img/profile2.jpg">
						                                <?php endif; ?>
			                                        </a>
			                                        <div class="media-body ">
			                                        	Realizo un pago en fecha <strong><?php echo $value["createdAt"]; ?></strong><strong><?php $value["bank"]; ?></small></strong> de #<strong><?php echo $value["numberReference"]; ?></strong>
			                                        	por Bsf <strong><?php echo $value["amount"]; ?></strong>
			                                        </div>
			                                    </div>
			                                </div>
			                                <br>
	                                	<?php endforeach; ?>
	                                <?php else: ?>
										<div class="feed-activity-list">
		                                    <div class="feed-element">
		                                        <p>No ha realizado pagos.</p>
		                                    </div>
		                                </div>	
	                                <?php endif; ?>
	                            </div>

	                        </div>
	                    </div>
                    </div>
                </div>
            </div>
        </div>