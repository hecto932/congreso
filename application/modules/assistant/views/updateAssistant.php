<div class="wrapper wrapper-content">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="">
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <h5>Datos de usuario</h5>
                        </div>
                        <div class="ibox-content">
                            <form class="form-horizontal" action="asistentes/actualizar-datos" method="POST" enctype="multipart/form-data">
                                <input type="hidden" name="<?php echo $this->security->get_csrf_token_name(); ?>" value="<?php echo $this->security->get_csrf_hash(); ?>">
                                <p>Los campos con asteriscos(*) son obligatorios.</p>
                                <div class="form-group"><label class="col-lg-2 control-label">Avatar</label>
                                    <div class="col-lg-10">
                                        <div class="profile-image">
                                            <?php if($userData['image'] == null): ?>
                                                <img src="assets/app/img/profile2.jpg" class="img-circle circle-border m-b-md" alt="profile">
                                            <?php else: ?>
                                                <img src="uploads/avatars/<?php echo $userData["image"]; ?>" class="img-circle circle-border m-b-md" alt="profile">
                                            <?php endif; ?>
                                        </div>
                                        <input type="file" class="form-control" name="image" accept="image/*" >
                                        <?php echo form_error("image"); ?>
                                    </div>
                                </div>
                                <div class="form-group"><label class="col-lg-2 control-label">Apellido(s) *</label>
                                    <div class="col-lg-10">
                                        <input type="text" name="lastName" placeholder="Ejemplo: Perez Pirela" class="form-control" value="<?php echo set_value("lastName", $userData["lastName"]); ?>">
                                        <?php echo form_error("lastName"); ?>
                                    </div>
                                </div>
                                <div class="form-group"><label class="col-lg-2 control-label">Nombre(s) *</label>
                                    <div class="col-lg-10">
                                        <input type="text" name="name" placeholder="Ejemplo: Juan Manuel" class="form-control" value="<?php echo set_value("name", $userData["name"]); ?>">
                                        <?php echo form_error("name"); ?>
                                    </div>
                                </div>
                                <div class="form-group"><label class="col-lg-2 control-label">Cédula *</label>
                                    <div class="col-lg-10">
                                        <input type="text" name="ci" class="form-control" placeholder="Ejemplo: 1222333" value="<?php echo set_value("ci", $userData["ci"]); ?>">
                                        <?php echo form_error("ci"); ?>
                                    </div>
                                </div>
                                <div class="form-group"><label class="col-lg-2 control-label">Teléfono *</label>
                                    <div class="col-lg-10">
                                        <input type="text" name="phone" class="form-control" placeholder="XXXX - XXXXXXX" value="<?php echo set_value("phone", $userData["phone"]); ?>">
                                        <?php echo form_error("phone"); ?>
                                    </div>
                                </div>
                                <div class="form-group"><label class="col-lg-2 control-label">Correo electrónico *</label>
                                    <div class="col-lg-10">
                                        <input type="text" name="email" class="form-control" placeholder="juancepillao@correo.com" value="<?php echo set_value("email", $userData["email"]); ?>">
                                        <?php echo form_error("email"); ?>
                                    </div>
                                </div>
                                <div class="form-group"><label class="col-lg-2 control-label">Universidad/organización</label>
                                    <div class="col-lg-10">
                                        <input type="text" name="university" class="form-control" placeholder="" value="<?php echo set_value("university", $userData["university"]); ?>">
                                        <?php echo form_error("university"); ?>
                                    </div>
                                </div>
                                <div class="form-group"><label class="col-lg-2 control-label">Escuela</label>
                                    <div class="col-lg-10">
                                        <input type="text" name="school" class="form-control" placeholder="Relaciones Industriales" value="<?php echo set_value("school", $userData["school"]); ?>">
                                        <?php echo form_error("school"); ?>
                                    </div>
                                </div>
                                <div class="form-group"><label class="col-lg-2 control-label">Contraseña</label>
                                    <div class="col-lg-10">
                                        <input type="password" name="password" class="form-control"  value="">
                                        <?php echo form_error("password"); ?>
                                    </div>
                                </div>
                                <div class="form-group"><label class="col-lg-2 control-label">Repita la contraseña</label>
                                    <div class="col-lg-10">
                                        <input type="password" name="repass" class="form-control"  value="">
                                        <?php echo form_error("repass"); ?>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-lg-offset-2 col-lg-10">
                                        <button class="btn btn-primary " type="submit"><i class="fa fa-check"></i>&nbsp;Actualizar datos</button>
                                        <a href="asistentes/app" class="btn btn-w-m btn-warning">Cancelar</a>
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


