<?php  defined('BASEPATH') or exit('No se permite el acceso directo.');

include("includes/header.php");

	if (isset($contenido_principal) && ! empty($contenido_principal))
		echo $contenido_principal;
	else
	{
		show_404();
	}

	include("includes/footer.php"); 

?>