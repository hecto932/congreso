<div class="row wrapper border-bottom white-bg page-heading">
    <div class="col-lg-10">
        <h2>Participantes y Asistentes</h2>
        <ol class="breadcrumb">
            <li>
                <a href="backend">Backend</a>
            </li>
            <li class="active">
                <strong>Participantes y Asistentes</strong>
            </li>
        </ol>
    </div>
    <div class="col-lg-2">

    </div>
</div>

<div class="wrapper wrapper-content  animated fadeInRight">
            <div class="row">
                <div class="col-sm-12">
                    <div class="ibox">
                        <div class="ibox-content">
                            <span class="text-muted small pull-right">Last modification: <i class="fa fa-clock-o"></i> 2:10 pm - 12.06.2014</span>
                            <h2>Directorio</h2>
                            <p>
                                Puedes buscar por nombre o correo electronico...
                            </p>
                            <div class="input-group">
                                <input type="text" placeholder="Buscar participante o asistente... " class="input form-control">
                                <span class="input-group-btn">
                                        <button type="button" class="btn btn btn-primary"> <i class="fa fa-search"></i> Buscar</button>
                                </span>
                            </div>
                            <div class="clients-list">
                            <ul class="nav nav-tabs">
                                <span style="color:white; font-size: 16px;" class="pull-right small text-muted label label-info"><?php echo count($users); ?></span>
                                <li class="active"><a data-toggle="tab" href="#tab-1"><i class="fa fa-user"></i> Participantes</a></li>
                                <!-- <li class=""><a data-toggle="tab" href="#tab-2"><i class="fa fa-briefcase"></i> Asistentes</a></li> -->
                            </ul>
                            <div class="tab-content">
                                <div id="tab-1" class="tab-pane active">
                                    <div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 100%;"><div class="full-height-scroll" style="overflow: hidden; width: auto; height: 100%;">
                                        <div class="table-responsive">
                                            <table class="table table-striped table-hover">
                                                <tbody>
                                                    <?php if(!empty($users)): ?>
                                                        <?php foreach($users as $key => $value): ?>
                                                            <tr>
                                                                <?php $image = "uploads/avatars/".$value['image']; ?>
                                                                <?php if(file_exists($image) && $value['image'] != null ): ?>
                                                                    <td class="client-avatar"><img alt="image" src="uploads/avatars/<?php echo $value['image']; ?>"> </td>
                                                                <?php else: ?>
                                                                    <td class="client-avatar"><img alt="image" src="assets/app/img/profile2.jpg"> </td>
                                                                <?php endif; ?>
                                                                <td><a data-toggle="tab" href="backend/participante/<?php echo $value["id"]; ?>" class="client-link"><?php echo $value["lastName"].", ".$value["name"]; ?></a></td>
                                                                <td class="contact-type"><i class="fa fa-envelope"> </i></td>
                                                                <td><a href="mailto:<?php echo $value["email"]; ?>"><?php echo $value["email"]; ?></a></td>
                                                                <td class="contact-type"><i class="fa fa-phone"> </i></td>
                                                                <td><?php echo $value["phone"]; ?></td>
                                                            </tr>
                                                        <?php endforeach;?>
                                                    <?php else: ?>
                                                        <tr>
                                                            No hay participantes.
                                                        </tr>
                                                    <?php endif;?>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div><div class="slimScrollBar" style="width: 7px; position: absolute; top: 0px; opacity: 0.4; display: none; border-radius: 7px; z-index: 99; right: 1px; height: 365.112px; background: rgb(0, 0, 0);"></div><div class="slimScrollRail" style="width: 7px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; opacity: 0.2; z-index: 90; right: 1px; background: rgb(51, 51, 51);"></div></div>
                                </div>
                            </div>

                            </div>
                        </div>
                    </div>
                </div>
                
            </div>
        </div>