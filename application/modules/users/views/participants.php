<div class="row wrapper border-bottom white-bg page-heading">
    <div class="col-lg-10">
        <h2>Participantes</h2>
        <ol class="breadcrumb">
            <li>
                <a href="backend">Backend</a>
            </li>
            <li class="active">
                <strong>Participantes</strong>
            </li>
        </ol>
    </div>
    <div class="col-lg-2">

    </div>
</div>

<div class="wrapper wrapper-content animated fadeInRight">
    <div class="row">
        <div class="col-lg-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>Participantes </h5>
                    <div class="ibox-tools">
                        <a class="collapse-link">
                            <i class="fa fa-chevron-up"></i>
                        </a>
                    </div>
                </div>
                <div class="ibox-content">
                    <div class="row">
                        <div class="col-sm-6 offset-3-sm">
                            <div class="input-group">
                                <input type="text" placeholder="Buscador..." class="input-sm form-control"> 
                                <span class="input-group-btn">
                                <button type="button" class="btn btn-sm btn-primary"> Buscar</button> </span></div>
                                <br>
                                <span class="pull-right label label-primary"><?php echo count($users); ?></span>
                        </div>
                    </div>
                    <div class="table-responsive">
                        <table class="table table-striped">
                            <thead>
                            <tr>

                                <th></th>
                                <th>Nombre (A-Z)</th>
                                <th></th>
                                <th>Email </th>
                                <th></th>
                                <th>Teléfono</th>
                            </tr>
                            </thead>
                            <tbody>
                            <?php if(!empty($users)): ?>
                               <?php foreach ($users as $key => $value): ?>
                                   <tr>
                                    <?php $image = "uploads/avatars/".$value['image']; ?>
                                    <?php if(file_exists($image) && $value['image'] != null ): ?>
                                        <td class="client-avatar"><img alt="image" src="uploads/avatars/<?php echo $value['image']; ?>"> </td>
                                    <?php else: ?>
                                        <td class="client-avatar"><img alt="image" src="assets/app/img/profile2.jpg"> </td>
                                    <?php endif; ?>
                                    <td><a href="backend/participantes/<?php echo $value["id"]; ?>" class="client-link"><?php echo $value["lastName"].", ".$value["name"]; ?></a></td>
                                    <td class="contact-type"><i class="fa fa-envelope"> </i></td>
                                    <td><a href="mailto:<?php echo $value["email"]; ?>"><?php echo $value["email"]; ?></a></td>
                                    <td class="contact-type"><i class="fa fa-phone"> </i></td>
                                    <td><?php echo $value["phone"]; ?></td>
                                </tr>
                               <?php endforeach ?>
                            <?php else: ?>
                                <tr>
                                    <p>No hay usuarios registrados.</p>
                                </tr>
                            <?php endif; ?>
                            </tbody>
                        </table>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>