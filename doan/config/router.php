<?php 
	$controller = isset($_GET['controller']) ? $_GET['controller'] : 'indexMain';
	$action = isset($_GET['action']) ? $_GET['action'] : 'indexHome';
	include_once './controller/'.$controller.'.php';
    
	switch($controller){
		case 'indexMain':
			$controllerObject = new indexMain($config);
			break;
		default:
			$controllerObject = new indexMain($config);
			$action = 'error';
	}
	$data = $controllerObject->{ $action }();
?>
