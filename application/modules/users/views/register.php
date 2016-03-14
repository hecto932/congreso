<!DOCTYPE html>
<html>

<head>
    <base href="<?php echo 'http://'.$_SERVER['SERVER_NAME'].'/';?>"/>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title><?php echo $title; ?></title>

    <link href="assets/app/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/app/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="assets/app/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="assets/app/css/animate.css" rel="stylesheet">
    <link href="assets/app/css/style.css" rel="stylesheet">

</head>

<body class="gray-bg">

    <div class="middle-box text-center loginscreen   animated fadeInDown">
        <div>
            <h3>Registro</h3>
            <p>Los campos con asterisco(*) son obligatorios.</p>
            <form class="m-t" role="form" action="participantes/registrar" method="POST">
                <input type="hidden" name="<?php echo $this->security->get_csrf_token_name(); ?>" value="<?php echo $this->security->get_csrf_hash(); ?>">
                <div class="form-group">
                    <input type="text" name="lastName" class="form-control" placeholder="Apellido(s) *" required="" value="<?php echo set_value("lastName")?>">
                    <?php echo form_error("lastName"); ?>
                </div>
                <div class="form-group">
                    <input type="text" name="name" class="form-control" placeholder="Nombre(s) *" required="" value="<?php echo set_value("name")?>">
                    <?php echo form_error("name"); ?>
                </div>
                <div class="form-group">
                    <input type="text" name="ci" class="form-control" placeholder="Cédula" required="" value="<?php echo set_value("ci")?>">
                    <?php echo form_error("ci"); ?>
                </div>
                <div class="form-group">
                    <input type="text" name="phone" class="form-control" placeholder="Teléfono *" required="" value="<?php echo set_value("phone")?>">
                    <?php echo form_error("phone"); ?>
                </div>
                <div class="form-group">
                    <input type="email" name="email" class="form-control" placeholder="Correo electrónico *" required="" value="<?php echo set_value("email")?>">
                    <?php echo form_error("email"); ?>
                </div>
                <div class="form-group">
                    <input type="text" name="university" class="form-control" placeholder="Universidad" required="" value="<?php echo set_value("university")?>">
                </div>
                <div class="form-group">
                    <input type="text" name="school" class="form-control" placeholder="Escuela" required="" value="<?php echo set_value("school")?>">
                </div>
                <div class="form-group">
                    <input type="password" name="password" class="form-control" placeholder="Contraseña *" required="">
                    <span class="help-block m-b-none">La contraseña debe tener minimo ocho(8) caracteres.</span>
                    <?php echo form_error("password"); ?>
                </div>
                <button type="submit" class="btn btn-primary block full-width m-b">Registrar</button>

                <p class="text-muted text-center"><small>¿Ya tienes una cuenta?</small></p>
                <a class="btn btn-sm btn-white btn-block" href="participantes/inicio-sesion">Iniciar sesión</a>
            </form>
        </div>
    </div>

    <!-- Mainly scripts -->
    <script src="assets/app/js/jquery-2.1.1.js"></script>
    <script src="assets/app/js/bootstrap.min.js"></script>
    <!-- iCheck -->
    <script src="assets/app/js/plugins/iCheck/icheck.min.js"></script>
    <script>
        $(document).ready(function(){
            $('.i-checks').iCheck({
                checkboxClass: 'icheckbox_square-green',
                radioClass: 'iradio_square-green',
            });
        });
    </script>
</body>

</html>
