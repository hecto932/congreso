<!DOCTYPE html>
<html>

<head>
	<base href="<?php echo base_url(); ?>">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title><?php echo $title; ?></title>

    <link href="assets/back/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/back/font-awesome/css/font-awesome.css" rel="stylesheet">

    <link href="assets/back/css/animate.css" rel="stylesheet">
    <link href="assets/back/css/style.css" rel="stylesheet">

</head>

<body class="gray-bg">

    <div class="middle-box text-center loginscreen animated fadeInDown">
        <div>
            <h3>Bienvenido</h3>
            <p>
          		Bienvenido al portal administrativo del Congreso Internacional FACES - UC 2016
            </p>
            <form class="m-t" role="form" action="backend/iniciar-sesion" method="POST">
                <input type="hidden" name="<?php echo $this->security->get_csrf_token_name(); ?>" value="<?php echo $this->security->get_csrf_hash(); ?>">
                <div class="form-group">
                    <input type="email" name="email" class="form-control" placeholder="Correo electrónico" required="">
                    <?php echo form_error("email"); ?>
                </div>
                <div class="form-group">
                    <input type="password" name="password" class="form-control" placeholder="Contraseña" required="">
                    <?php echo form_error("password"); ?>
                </div>
                <button type="submit" class="btn btn-primary block full-width m-b">Ingresar</button>
            </form>
            <p class="m-t"> <small>Inspinia we app framework base on Bootstrap 3 &copy; 2014</small> </p>
        </div>
    </div>

    <!-- Mainly scripts -->
    <script src="assets/back/js/jquery-2.1.1.js"></script>
    <script src="assets/back/js/bootstrap.min.js"></script>

</body>

</html>
