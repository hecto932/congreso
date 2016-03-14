<div class="wrapper wrapper-content">
    <div class="container">
        <div class="row">
            <?php if($this->session->flashdata("message")): ?>
                 <div class="col-lg-12">
                    <div class="alert alert-success">
                        <?php echo $this->session->flashdata('message'); ?>
                    </div>
                </div>
            <?php endif; ?>
            <div class="col-lg-12">
                <div class="row m-b-lg m-t-lg">
                    <div class="col-md-6">
                        <div class="profile-image">
                            <?php if($userData["image"] == null): ?>
                                <img src="assets/app/img/profile2.jpg" class="img-circle circle-border m-b-md" alt="profile">
                            <?php else: ?>
                                <img src="uploads/avatars/<?php echo $userData["image"]; ?>" class="img-circle circle-border m-b-md" alt="profile">
                            <?php endif; ?>
                        </div>
                        <div class="profile-info">
                            <div class="">
                                <div>
                                    <h2 class="no-margins">
                                        <?php echo $userData["lastName"].", ".$userData["name"]; ?>
                                    </h2>
                                    <h4><?php echo $userData["university"]; ?></h4>
                                    <small>
                                        <?php echo $userData["school"]; ?>
                                    </small>
                                </div>
                            </div>
                        </div>
                    </div>
<!--                     <div class="col-md-6">
                        <table class="table small m-b-xs">
                            <tbody>
                            <tr>
                                <td>
                                    <strong>Pagos</strong> <?php echo $numberPayments; ?>
                                </td>
                                <td>
                                    <strong>Trabajos</strong> <?php echo $numberWorks; ?>
                                </td>

                            </tr>
                            </tbody>
                        </table>
                    </div> -->
                </div>
            </div>
            <div class="col-lg-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-content">
                        <div class="row">
                            <div class="col-sm-12 m-b-xs">
                                <h3>Trabajos</h3>
                            </div>
                        </div>
                        <div class="table-responsive">
                            <table class="table table-striped">
                                <?php if(!empty($MyWorks)): ?>
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Título </th>
                                            <th>Area temática </th>
                                            <th>Campus </th>
                                            <th>Modailidad</th>
                                            <th>Estatus </th>
                                        </tr>
                                    </thead>
                                    <?php foreach($MyWorks as $key => $value): ?>
                                        <tbody>
                                            <tr>
                                                <td><?php echo $value["id"]; ?></td>
                                                <td><a href="participantes/trabajos/<?php echo $value["id"]; ?>"><strong><?php echo $value["title"]; ?></strong></a></td>
                                                <td><?php echo $value["area"]; ?></td>
                                                <td><?php echo $value["campus"]; ?></td>
                                                <td><?php echo $value["modality"]; ?></td>
                                                <td><span class="label label-info"><?php echo $value["status"]; ?></span></td>
                                            </tr>
                                        </tbody>
                                    <?php endforeach; ?>
                                <?php else: ?>
                                    <p>No se han cargado trabajos.</p>
                                <?php endif; ?>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-content">
                        <div class="row">
                            <div class="col-sm-12 m-b-xs">
                                <h3>Pagos</h3>
                            </div>
                        </div>
                        <div class="table-responsive">
                            <table class="table table-striped">
                                <?php if(!empty($MyPayments)): ?>
                                    <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>Banco </th>
                                            <th>Numero de Referencia </th>
                                            <th>Monto</th>
                                            <th>Trabajo </th>
                                            <th>Realizada </th>
                                            <th>Estatus </th>
                                        </tr>
                                    </thead>
                                    <?php foreach($MyPayments as $key => $value): ?>
                                        
                                        <tbody>
                                            <tr>
                                                <td><?php echo $value["id"]; ?></td>
                                                <td><?php echo $value["bank"]; ?></td>
                                                <td><?php echo $value["numberReference"]; ?></td>
                                                <td>Bs. <?php echo $value["amount"]; ?></td>
                                                <td><?php echo $value["work"]; ?></td>
                                                <td><?php echo $value["createdAt"]; ?></td>
                                                <td><span class="label label-info"><?php echo $value["status"]; ?></span></td>
                                            </tr>
                                        </tbody>
                                    <?php endforeach; ?>
                                <?php else: ?>
                                    <p>No se han realizado pagos.</p>
                                <?php endif; ?>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>