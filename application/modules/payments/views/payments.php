<div class="row wrapper border-bottom white-bg page-heading">
    <div class="col-sm-4">
        <h2>Lista de pagos</h2>
        <ol class="breadcrumb">
            <li>
                <a href="backend">Backend</a>
            </li>
            <li class="active">
                <strong>Lista de pagos</strong>
            </li>
        </ol>
    </div>
</div>

<div class="row">
    <div class="col-lg-12">
        <div class="wrapper wrapper-content animated fadeInUp">

            <div class="ibox">
                <div class="ibox-title">
                    <h5><span class="pull-left label label-primary"><?php echo count($payments); ?></span> Pagos</h5>
                    <div class="ibox-tools">
                        <a style="color:white;"href="backend/pagos"class="btn btn-info dim" ><i class="fa fa-check"></i> Por verificar</a>
                        <a style="color:white;"href="backend/pagos/conforme"class="btn btn-primary dim" ><i class="fa fa-check"></i> Conforme</a>
                        <a style="color:white;"href="backend/pagos/no-conforme"class="btn btn-danger dim" ><i class="fa fa-warning"></i> No conforme</a>
                    </div>
                </div>
                <div class="ibox-content">

                    <div class="project-list">

                        <table class="table table-hover">
                            <tbody>
                            <?php if(!empty($payments)): ?>
                                <?php foreach($payments as $key => $value): ?>
                                    <tr>
                                        <td class="project-status">
                                            <?php if($value["status"] == "Por verificar"): ?>
                                                <span style="font-size: 14px;"class="label label-primary"><?php echo $value["status"]; ?></span>
                                            <?php else: ?>
                                                <span style="font-size: 14px;"class="label label-info"><?php echo $value["status"]; ?></span>
                                            <?php endif; ?>
                                        </td>
                                        <td class="project-title">
                                            <a href="backend/participantes/<?php echo $value["user_id"]; ?>"><?php echo $value["user"]; ?></a>
                                            <br>
                                            <small>Realizado el <?php echo $value["createdAt"]; ?></small>
                                        </td>
                                        <td class="project-completion">
                                                <small><?php echo $value["bank"]; ?></small><br>
                                                <small>#REF <?php echo $value["numberReference"]; ?></small>
                                        </td>
                                        <td class="project-title">
                                            <a href="javascript:void(0);">Bs. <?php echo $value["amount"]; ?></a>
                                        </td>
                                        <?php if($value["status"] == "Por verificar"): ?>
                                            <td class="project-actions">
                                                <form action="backend/pagos/verificar" method="post">
                                                    <input type="hidden" name="<?php echo $this->security->get_csrf_token_name(); ?>" value="<?php echo $this->security->get_csrf_hash(); ?>">
                                                    <input type="hidden" name="paymentId" value="<?php echo $value["id"]; ?>">
                                                    <div class="form-group">
                                                        <div class="col-sm-9">
                                                            <select class="form-control m-b" name="status">
                                                                <option value="Por verificar"><?php echo $value["status"]; ?></option>
                                                                <option value="Conforme">Conforme</option>
                                                                <option value="No conforme">No conforme</option>
                                                            </select>
                                                        </div>
                                                        <button class="col-sm-3 btn btn-sm btn-primary pull-right m-t-n-xs" type="submit"><strong>Aceptar</strong></button>
                                                    </div>
                                                </form>
                                            </td>
                                        <?php endif; ?>
                                    </tr>
                                <?php endforeach; ?>
                            <?php else: ?>
                                <tr>
                                     <p>No hay existen pagos que mostrar en esta categoria.</p>
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