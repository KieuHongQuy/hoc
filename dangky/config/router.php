<?php 
	$controller = isset($_GET['controller']) ? $_GET['controller'] : 'indexHome';
	$action = isset($_GET['action']) ? $_GET['action'] : 'indexHome';
	include_once './controller/'.$controller.'.php';
    
	switch($controller){
		case 'indexHome':
			$controllerObject = new indexMain($config);
			break;
		default:
			$controllerObject = new indexMain();
			$action = 'error';
	}
	$data = $controllerObject->{ $action }();
?>