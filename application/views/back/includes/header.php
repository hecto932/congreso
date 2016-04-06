<!DOCTYPE html>
<html>

<head>
	<base href="<?php echo base_url(); ?>">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title><?php echo $title; ?></title>

    <link href="assets/back/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/back/font-awesome/css/font-awesome.css" rel="stylesheet">

    <!-- Toastr style -->
    <link href="assets/back/css/plugins/toastr/toastr.min.css" rel="stylesheet">

    <!-- Gritter -->
    <link href="assets/back/js/plugins/gritter/jquery.gritter.css" rel="stylesheet">

    <link href="assets/back/css/animate.css" rel="stylesheet">
    <link href="assets/back/css/style.css" rel="stylesheet">

</head>

<body>
    <div id="wrapper">
        <nav class="navbar-default navbar-static-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav metismenu" id="side-menu">
                    <li class="nav-header">
                        <div class="dropdown profile-element"> <span>
                            <img alt="image" class="img-circle" src="assets/back/img/user-alt-128.png" />
                             </span>
                            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="clear"> <span class="block m-t-xs"> <strong class="font-bold"><?php echo $userData["name"]; ?></strong>
                             </span> <span class="text-muted text-xs block"><?php echo $userData["role"]; ?> <b class="caret"></b></span> </span> </a>
                            <ul class="dropdown-menu animated fadeInRight m-t-xs">
                                <li class="divider"></li>
                                <li><a href="backend/cerrar-sesion">Cerrar sesion</a></li>
                            </ul>
                        </div>
                        <div class="logo-element">
                            IN+
                        </div>
                    </li>
                     <li class="backend/arbitraje">
                        <a href="index.html"><i class="fa fa-gavel"></i> <span class="nav-label">Arbitro</span></a>
                    </li>
                    <?php if($userData["role_id"] == 1 || $userData["role_id"] == 5): ?>
                         <li class="javascript:void(0);">
                            <a href="backend/pagos"><i class="fa fa-money"></i> <span class="nav-label">Fundaprofaces</span></a>
                        </li>
                    <?php endif; ?>
                     <li class="backend/simposios">
                        <a href="index.html"><i class="fa fa-users"></i> <span class="nav-label">Simposios</span></a>
                    </li>
                </ul>

            </div>
        </nav>

        <div id="page-wrapper" class="gray-bg dashbard-1">
        <div class="row border-bottom">
        <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
        <div class="navbar-header">
            <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="javascript:void(0);"><i class="fa fa-bars"></i> </a>
        </div>
            <ul class="nav navbar-top-links navbar-right">
                <li>
                    <span class="m-r-sm text-muted welcome-message">Bienvenido al Backend del Congreso 2016.</span>
                </li>

                <li>
                    <a href="backend/cerrar-sesion">
                        <i class="fa fa-sign-out"></i> Cerrar sesión
                    </a>
                </li>
            </ul>

        </nav>
    </div>