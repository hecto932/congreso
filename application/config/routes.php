<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	https://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
*/
$route['default_controller'] = 'home';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;


// APP ROUTES

// USERS
$route['participantes/registro'] = 'users/toRegister';
$route['participantes/registrar'] = 'users/doRegister';
$route['participantes/inicio-sesion'] = 'users';
$route['participantes/iniciar'] = 'users/login';
$route['participantes/cerrar-sesion'] = 'users/logout';
$route['participantes/mis-datos'] = "users/toUpdateUserSession";
$route['participantes/actualizar-datos'] = "users/updateUserSession";

// ASISTENTES
$route['asistentes/iniciar-sesion'] = "assistant";
$route['asistentes/registro'] = "assistant/toRegister";
$route['asistentes/registrar'] = 'assistant/doRegister';
$route['asistentes/app'] = "assistant";
$route['asistentes/iniciar'] = 'assistant/login'; 
$route['asistentes/cerrar-sesion'] = 'assistant/logout'; 
$route['asistentes/mis-datos'] = "assistant/toUpdateUserAssistant";
$route["asistentes/actualizar-datos"] = "assistant/updateAssistant";

// WORKS
$route['participantes/agregar-trabajo'] = "works/toAddWork";
$route['participantes/agregando-trabajo'] = "works/addWork";
$route['participantes/trabajos/(:num)']	= "works/work/$1";

// PAYMENTS
$route["participantes/agregar-pago"] = "payments/toAddPayment";
$route["participantes/agregando-pago"] = "payments/addPayment";

$route['asistentes/agregar-pago'] = 'payments/toAddPaymentAssitant';
$route['asistentes/agregando-pago'] = 'payments/addPaymentAssistant';


// BACKEND
$route["backend"] = 'backend';
$route["backend/iniciar-sesion"] = "backusers/login"; 
$route["backend/cerrar-sesion"] = "backusers/logout";
$route["backend/pagos"] = "payments";
$route["backend/pagos/verificar"] = "payments/changeStatus";
$route["backend/pagos/conforme"] = "payments/getPaymentsConforme";
$route["backend/pagos/no-conforme"] = "payments/getPaymentsNoConforme";
$route["backend/arbitraje"] = "works/arbitration";
$route["backend/arbitraje/evaluar"] = "works/evaluate";
$route["backend/arbitraje/aprobados"] = "works/aprobados";
$route["backend/arbitraje/rechazados"] = "works/rechazados";
$route["backend/arbitraje/(:num)"] = "works/show_work/$1";
$route["backend/simposios"] = "works/simposios";
$route["backend/simposios/aprobados"] = "works/simposios_aprobados";
$route["backend/simposios/rechazados"] = "works/simposios_rechazados";
$route["backend/participantes"] = "users/participants";
$route["backend/participantes/(:num)"] = "users/showParticipant/$1";
$route["backend/asistentes"] = "assistant/assistants";

//185/60/14 95 potensa
//195/75/14 affinity
//165/75/14 Goodyear