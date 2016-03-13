<!DOCTYPE html>
<html>

<head>
    <base href="<?php echo base_url(); ?>"/>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="author" content="http://github.com/hecto932"/>
    <meta name="keyword" content="CongresoFACES, UC, Congreso, DIPI, Universidad de Carabobo, Facultad de Ciencias Económicas y Sociales, FACES, congreso">
    
    <title><?php echo $title; ?></title>

    <link href="assets/app/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/app/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="assets/app/css/animate.css" rel="stylesheet">
    <link href="assets/app/css/style.css" rel="stylesheet">

</head>

<body class="top-navigation">
    <div id="wrapper">
        <div id="page-wrapper" class="gray-bg">
            <div class="row border-bottom white-bg">
                <nav class="navbar navbar-static-top" role="navigation">
                    <div class="navbar-header">
                        <button aria-controls="navbar" aria-expanded="false" data-target="#navbar" data-toggle="collapse" class="navbar-toggle collapsed" type="button">
                            <i class="fa fa-reorder"></i>
                        </button>
                        <a href="/app" class="navbar-brand">Congreso</a>
                    </div>
                    <div class="navbar-collapse collapse" id="navbar">
                        <ul class="nav navbar-nav">
                            <li class="">
                                <a aria-expanded="false" role="button" href="/"> Ir al Inicio</a>
                            </li>
                            <li class="">
                                <a aria-expanded="false" role="button" href="javascript:void(0)">
                                    <i class="fa fa-user"></i> Bienvenido <?php echo $userData["lastName"].", ".$userData["name"]; ?>
                                </a>
                            </li>
                            <li class="dropdown">
                                <a aria-expanded="false" role="button" href="#" class="dropdown-toggle" data-toggle="dropdown"> Trabajos <span class="caret"></span></a>
                                <ul role="menu" class="dropdown-menu">
                                    <li><a href="participantes/agregar-trabajo">Agregar nuevo trabajo</a></li>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a aria-expanded="false" role="button" href="#" class="dropdown-toggle" data-toggle="dropdown"> Pagos <span class="caret"></span></a>
                                <ul role="menu" class="dropdown-menu">
                                    <li><a href="participantes/agregar-pago">Agregar nuevo pago</a></li>
                                </ul>
                            </li>
                        </ul>
                        <ul class="nav navbar-top-links navbar-right">
                            <li>
                                <a href="#">
                                    <i class="fa fa-user"></i> Bienvenido <?php echo $userData["lastName"].", ".$userData["name"]; ?>
                                </a>
                            </li>
                            <li>
                                <a href="/participantes/cerrar-sesion">
                                    <i class="fa fa-sign-out"></i> Cerrar sesión
                                </a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>