<div class="row wrapper border-bottom white-bg page-heading">
    <div class="col-lg-9">
        <h2>Arbitraje</h2>
        <ol class="breadcrumb">
            <li>
                <a href="/backend">Backend</a>
            </li>
            <li>
               <a href="backend/arbitraje">Arbitraje</a>s
            </li>
            <li class="active">
                <strong>Trabajos</strong>
            </li>
        </ol>
        <div class="pull-right">
        	<?php if($userData["role_id"] != 6 && $userData["role_id"] != 7): ?>
				<a style="color:white;" href="backend/arbitraje"class="btn btn-info" ><i class="fa fa-check"></i> En proceso de arbitraje</a>
	            <a style="color:white;" href="backend/arbitraje/aprobados"class="btn btn-success" ><i class="fa fa-check"></i> Aprobados</a>
	            <a style="color:white;" href="backend/arbitraje/rechazados"class="btn btn-danger" ><i class="fa fa-warning"></i> Rechazados</a>
	      	<?php else: ?>
	      		<a style="color:white;" href="backend/simposios"class="btn btn-info" ><i class="fa fa-check"></i> En proceso de arbitraje</a>
	            <a style="color:white;" href="backend/simposios/aprobados"class="btn btn-success" ><i class="fa fa-check"></i> Aprobados</a>
	            <a style="color:white;" href="backend/simposios/aprobados"class="btn btn-danger" ><i class="fa fa-warning"></i> Rechazados</a>
	      	<?php endif; ?>
        </div>
    </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
    <div class="row">
    	<?php if(!empty($works)): ?>
    		<div class="col-lg-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>Trabajos</h5>
                        <div class="ibox-tools">
                            <span class="label label-warning-light pull-right"><?php echo count($works); ?></span>
                           </div>
                    </div>
                    <div class="ibox-content">
						<?php foreach($works as $key => $value): ?>
	                        <div>
	                            <div class="feed-activity-list">
	                                <div class="feed-element">
	                                    <a href="backend/arbitraje/<?php echo $value["id"]; ?>" class="pull-left">
	                                    	<?php $image = "uploads/avatars/".$value['user']['image']; ?>
						                    <?php if(file_exists($image) && $value['user']['image'] != null ): ?>
						                    	<img alt="image" class="img-circle" src="uploads/avatars/<?php echo $value["user"]["image"]; ?>">
				                            <?php else: ?>
				                                <img alt="image" class="img-circle" src="assets/app/img/profile2.jpg">
				                            <?php endif; ?>
	                                    </a>
	                                    <div sytle="font-size:16px;" class="media-body ">
	                                        <small class="pull-right"><?php echo $value["createdAt"]; ?></small>
	                                        Campus: <strong><?php echo $value["campus"]; ?></strong><br>
	                                        Autor: <strong><?php echo $value["user"]["lastName"].", ".$value["user"]["name"]; ?></strong><br>
											Título: <a href="backend/arbitraje/<?php echo $value["id"]; ?>"><strong><?php echo $value["title"]; ?></strong><br></a>
		                        			Area: <strong><?php echo $value["area"]; ?></strong><br>
		                        			Modalidad: <strong><?php echo $value["modality"]; ?></strong><br>
		    
	                                        <small class="text-muted"></small><br/>
	                                        <?php if($value["status"] == "Aprobado"): ?>
	                                        	Estatus: <span class="label label-success"><?php echo $value["status"]; ?></span>
	                                        <?php elseif($value["status"] == "Rechazado"): ?>
	                                        	Estatus: <span class="label label-danger"><?php echo $value["status"]; ?></span>
	                                        <?php else: ?>
												Estatus: <span class="label label-info"><?php echo $value["status"]; ?></span>
	                                        <?php endif; ?>
	                                    </div>
	                                </div>
	                            </div>
                            	<br>
                        	</div>
						<?php endforeach; ?>
                    </div>
                </div>
            </div>

       	<?php else: ?>
       		<p>No hay trabajos que mostrar en esta categoria.</p>
       	<?php endif; ?>
    </div>
</div>