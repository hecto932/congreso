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
                    <h5>Pagos</h5>
                    <div class="ibox-tools">
                        <a href="backend/pagos/conforme"class="btn btn-primary dim" ><i class="fa fa-check"></i> Conforme</a>
                        <a href="backend/pagos/no-conforme"class="btn btn-danger dim" ><i class="fa fa-warning"></i> No conforme</a>
                    </div>
                </div>
                <div class="ibox-content">
                    <div class="project-list">

                        <table class="table table-hover">
                            <tbody>
                                <?php if(!empty($payments)): ?>
                                    <?php foreach($payments as $key => $value): ?>
                                        <tr>
                                            <td>
                                                #<?php echo $value["id"]; ?>
                                            </td>
                                            <td>
                                                <?php echo $value["createdAt"]; ?>
                                            </td>
                                            <td>
                                                #REF <strong><?php echo $value["numberReference"]; ?></strong>
                                            </td>
                                            <td>
                                                <strong><?php echo $value["bank"]; ?></strong>
                                            </td>
                                            <td>
                                                <strong>Bs. <?php echo $value["amount"]; ?></strong>
                                            </td>
                                            <td>
                                                <?php echo $value["user"]; ?>
                                            </td>
                                            <td>
                                                <?php if($value["status"] == "Por verificar"): ?>
                                                    <p><span style="font-size: 16px;"class="label label-primary"><?php echo $value["status"]; ?></span></p>
                                                <?php else: ?>
                                                    <p><span style="font-size: 16px;"class="label label-info"><?php echo $value["status"]; ?></span></p>
                                                <?php endif; ?>
                                            </td>
                                            <?php if($value["status"] == "Por verificar"): ?>
                                                <td >
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
                                    <p>No hay existen pagos que mostrar en esta categoria.</p>
                                <?php endif; ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>