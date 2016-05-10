<!DOCTYPE html>
<html>

<head>
    <base href="<?php echo base_url(); ?>"/>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title><?php echo $title; ?></title>

    <link href="assets/app/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/app/font-awesome/css/font-awesome.css" rel="stylesheet">

    <link href="assets/app/css/animate.css" rel="stylesheet">
    <link href="assets/app/css/style.css" rel="stylesheet">

</head>

<body class="gray-bg">

    <div class="loginColumns animated fadeInDown">
        <div class="row">
            <div class="col-md-6">
                <?php echo $this->session->flashdata('message'); ?>
                <h2 class="font-bold">Inicio de sesión</h2>

                <p style="text-align: justify;">
                    Bienvenido al sistema de ingreso del Congreso Internacional de Investigación e Innovación de la FACES - UC 2016, Venezuela.
                </p>
                <h5><strong>Pasos para cargar trabajos libres o simposios</strong></h5>
                <p>
                    <ol>
                        <li>Deberás registrate aportando tus datos personales.</li>
                        <li>Inicia sesión en la aplicación.</li>
                        <li>Actualiza tus datos personales como foto de perfil u otros.</li>
                        <li>Carga tu(s) trabajo(s) y los respectivos pagos.</li>
                    </ol>
                </p>

            </div>
            <div class="col-md-6">
                <div class="ibox-content">
                    <form class="m-t" role="form" action="participantes/iniciar" method="POST">
                        <input type="hidden" name="<?php echo $this->security->get_csrf_token_name(); ?>" value="<?php echo $this->security->get_csrf_hash(); ?>">
                        <div class="form-group">
                            <input type="email" name="email" class="form-control" placeholder="Correo electrónico" required="" value="<?php echo set_value('email'); ?>">
                            <?php echo form_error("email"); ?>
                        </div>
                        <div class="form-group">
                            <input type="password" name="password" class="form-control" placeholder="Contraseña" required="">
                            <?php echo form_error("password"); ?>
                        </div>
                        <button type="submit" class="btn btn-primary block full-width m-b">Iniciar</button>

                        <a href="#">
                            <small>¿Olvidaste la contraseña?</small>
                        </a>

                        <p class="text-muted text-center">
                            <small>¿No posees una cuenta?</small>
                        </p>
                        <a class="btn btn-sm btn-white btn-block" href="participantes/registro">Registrate</a>
                    </form>
                    <p class="m-t">
                        <small>Inspinia we app framework base on Bootstrap 3 &copy; 1</small>
                    </p>
                </div>
            </div>
        </div>
        <hr/>
        <div class="row">
            <div class="col-md-6">
                <p>Esta aplicación fue desarrollada por <a href="https://github.com/hecto932">Hector Flores</a> bajo la supervisión de la Dirección de Tecnologia, Investigación y Comunicación de la <a href="http://faces.uc.edu.ve/web">Facultad de Ciencias Económicas y Sociales de la <a href="http://uc.edu.ve">Universidad de Carabobo</a></a></p>
            </div>
            <div class="col-md-6 text-right">
               <small>© 2016</small>
            </div>
        </div>
    </div>

</body>

</html>
