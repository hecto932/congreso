<div class="wrapper wrapper-content">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="">
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <h5>Nuevo trabajo</h5>
                        </div>
                        <div class="ibox-content">
                            <form class="form-horizontal" action="participantes/agregando-trabajo" method="POST" enctype="multipart/form-data">
                                <input type="hidden" name="<?php echo $this->security->get_csrf_token_name(); ?>" value="<?php echo $this->security->get_csrf_hash(); ?>">
                                <p>Todos los campos son absolutamente obligatorios.</p>
                                <p>Solo se permitirá cargar un máximo de tres(3) archivos.</p>
                                <div class="form-group"><label class="col-lg-2 control-label">Campus</label>
                                    <div class="col-lg-10">
                                        <select class="form-control m-b" name="campus">
                                            <option value="">Seleccione</option>
                                            <option value="Bárbula">Bárbula</option>
                                            <option value="La Morita">La Morita</option>
                                        </select>
                                        <span class="help-block m-b-none">Por favor seleccione el Campus en donde participa.</span>
                                        <?php echo form_error("campus"); ?>
                                    </div>
                                </div>
                                <div class="form-group"><label class="col-lg-2 control-label">Area temática</label>
                                    <div class="col-lg-10">
                                        <select class="form-control m-b" name="area_id">
                                            <option value="">Seleccione</option>
                                            <?php foreach($areas as $key => $value): ?>
                                                <?php if(set_value("area_id") == $value["id"]): ?>
                                                    <option value="<?php echo $value["id"]; ?>" selected><?php echo $value["name"]; ?></option>
                                                <?php else: ?>
                                                    <option value="<?php echo $value["id"]; ?>"><?php echo $value["name"]; ?></option>
                                                <?php endif; ?> 
                                            <?php endforeach; ?>
                                        </select>
                                        <span class="help-block m-b-none">Seleccione el area tematica a participar.</span>
                                        <?php echo form_error("area_id"); ?>
                                    </div>

                                </div>
                                <div class="form-group"><label class="col-lg-2 control-label">Modalidad de presentación</label>
                                    <div class="col-lg-10">
                                        <select class="form-control m-b" name="modality">
                                            <option value="">Seleccione</option>
                                            <option value="Presentación oral">Presentación oral</option>
                                            <option value="Carteles">Carteles</option>
                                            <option value="Simposios">Simposios</option>
                                        </select>
                                        <span class="help-block m-b-none">Escoja la modalidad de presentación</span>
                                        <?php echo form_error("modality"); ?>
                                    </div>
                                </div>
                                <div class="form-group"><label class="col-lg-2 control-label">Título del trabajo</label>
                                    <div class="col-lg-10">
                                        <input type="text" class="form-control" placeholder="Título"name="title" required="required" value="<?php echo set_value("title"); ?>">
                                        <span class="help-block m-b-none">Escriba el título exacto del trabajo presentado.</span>
                                        <?php echo form_error("title"); ?>
                                    </div>
                                </div>
                                <div class="form-group"><label class="col-lg-2 control-label">Archivos</label>
                                    <div class="col-lg-10">
                                        <input type="file" class="form-control" name="files[]" required="required" accept="application/msword,application/vnd.openxmlformats-officedocument.wordprocessingml.document" multiple >
                                        <span class="help-block m-b-none">Por favor seleccione los archivos correspondientes al trabajo.
                                        <br>
                                        <strong style="font-size: 14px;"class="badge badge-info">Solo se permiten cargar archivos Microsoft Word</strong></span>
                                        <strong style="font-size: 14px;"class="badge badge-warning">El nombre del documento no puede tener mas de 140 caracteres.</strong></span>
                                        <?php echo form_error("files"); ?>
                                        <?php echo $this->session->flashdata('message'); ?>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-lg-offset-2 col-lg-10">
                                        <button class="btn btn-primary " type="submit"><i class="fa fa-check"></i>&nbsp;Cargar</button>
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


