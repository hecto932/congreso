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
        <div class="ibox-tools">
            <a href="backend/arbitraje/aprobados"class="btn btn-primary dim" ><i class="fa fa-check"></i> Aprobados</a>
            <a href="backend/arbitraje/rechazados"class="btn btn-danger dim" ><i class="fa fa-warning"></i> Rechazados</a>
        </div>
    </div>
</div>
<div class="wrapper wrapper-content animated fadeInRight">
    <div class="row">
    	<?php if(!empty($works)): ?>
			<?php foreach($works as $key => $value): ?>
				 <div class="col-lg-12">
		            <div class="contact-box">
		                <a href="backend/arbitraje/<?php echo $value["id"]; ?>">
		                <div class="col-sm-3">
		                    <div class="text-center">
		                    <?php $image = "uploads/avatars/".$value['user']['image']; ?>
		                    <?php if(file_exists($image) && $value['user']['image'] != null ): ?>
		                    	<img alt="image" class="img-circle m-t-xs img-responsive" src="uploads/avatars/<?php echo $value["user"]["image"]; ?>">
                            <?php else: ?>
                                <img alt="image" class="img-circle m-t-xs img-responsive" src="assets/app/img/profile2.jpg">
                            <?php endif; ?>
		                    <div class="m-t-xs font-bold"><?php echo $value["user"]["university"]; ?></div>
		                    </div>
		                </div>
		                <div class="col-sm-9">
		                    <h3><strong><?php echo $value["user"]["lastName"].", ".$value["user"]["name"]; ?></strong></h3>
		                    <p><i class="fa fa-map-marker"></i> <?php echo $value["campus"]; ?></p>
		                    <address>
		                        <strong><?php echo $value["title"]; ?></strong><br>
		                        <strong><?php echo $value["area"]; ?></strong><br>
		                        <a href="mailto:<?php echo $value["user"]["email"]; ?>"><?php echo $value["user"]["email"]; ?>"</a>
		                    </address>
		                </div>
		                <div class="clearfix"></div>
		                   </a>
		            </div>
		        </div>
			<?php endforeach; ?>
		<?php else: ?>
			<p>No hay trabajos que arbitrar.</p>
    	<?php endif; ?>
    </div>
</div>