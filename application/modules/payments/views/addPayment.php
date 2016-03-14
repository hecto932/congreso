<div class="wrapper wrapper-content">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="">
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <h5>Agregar nuevo pago</h5>
                        </div>
                        <div class="ibox-content">
                            <form class="form-horizontal" action="participantes/agregando-pago" method="POST" enctype="multipart/form-data">
                                <input type="hidden" name="<?php echo $this->security->get_csrf_token_name(); ?>" value="<?php echo $this->security->get_csrf_hash(); ?>">
                                <p>Todos los campos son absolutamente obligatorios.</p>
                                <p>Recuerde que solo se aceptara un pago UNICO por trabajo.</p>
                                <p>Todos los campos son absolutamente obligatorios.</p>
                                <div class="form-group"><label class="col-lg-2 control-label">Banco</label>
                                    <div class="col-lg-10">
                                        <input type="text" name="bank" placeholder="Ejemplo: Banco Mercantil" class="form-control" value="<?php echo set_value("bank"); ?>">
                                        <span class="help-block m-b-none">Nombre del banco en donde deposito o de donde realizo la transferencia.</span>
                                        <?php echo form_error("bank"); ?>
                                    </div>
                                </div>
                                <div class="form-group"><label class="col-lg-2 control-label">Numero de referencia</label>
                                    <div class="col-lg-10">
                                        <input type="text" name="numberReference" placeholder="Ejemplo: 87484184" class="form-control" value="<?php echo set_value("numberReference"); ?>">
                                        <span class="help-block m-b-none">Coloque cuidadosamente el numero de referencia de su deposito o transferencia.</span>
                                        <?php echo form_error("numberReference"); ?>
                                    </div>

                                </div>
                                <div class="form-group"><label class="col-lg-2 control-label">Monto</label>
                                    <div class="col-lg-10">
                                        <input type="text" name="amount" class="form-control" placeholder="Expresado en Bolivares" value="<?php echo set_value("amount", "1950"); ?>">
                                        <span class="help-block m-b-none">El monto despositado o transferido. </span>
                                        <?php echo form_error("amount"); ?>
                                    </div>
                                </div>
                                <div class="form-group"><label class="col-lg-2 control-label">Trabajo</label>
                                    <div class="col-lg-10">
                                        <select name="work_id" class="form-control m-b">
                                            <option value="">Seleccione</option>
                                            <?php foreach($MyWorks as $key => $value): ?>
                                                <?php if(set_value("work_id") == $value["id"]): ?>
                                                    <option value="<?php echo $value["id"]; ?>" selected><?php echo $value["title"]; ?></option>
                                                <?php else: ?>
                                                    <option value="<?php echo $value["id"]; ?>"><?php echo $value["title"]; ?></option>
                                                <?php endif; ?>
                                            <?php endforeach; ?>
                                        </select>
                                        <span class="help-block m-b-none">Seleccione el trabajo sobre el cual desea realizar el pago.</span>
                                        <?php echo form_error("title"); ?>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-lg-offset-2 col-lg-10">
                                        <button class="btn btn-primary " type="submit"><i class="fa fa-check"></i>&nbsp;Cargar pago</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


