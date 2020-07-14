<?php 
	echo $controller = isset($_GET['controller']) ? addslashes($_GET['controller']) : 'index';
	switch($controller){
		case 'index':
			include_once './controller/'.$controller.'.php';
			$controllerObject = new indexMain($config);
			$action = 'indexHome';
			break;
		case 'all':
			$controller = 'index';
			include_once './controller/'.$controller.'.php';
			$controllerObject = new indexMain($config);
			$action = 'connect';
			break;
		case 'gio-hang':
			include_once './controller/'.$controller.'.php';
			$controllerObject = new indexMain($config);
			$action = 'connect';
			break;
		case 'product':
			include_once './controller/'.$controller.'.php';
			$controllerObject = new productController($config);
			if($_GET['id'] && $_GET['ten']){
				$action = 'getDetail';
			}else{
				if($_GET['ten']){
					$action = 'getSub';
				}else{
					if($_GET['iditem'] || $_GET['idcat'] || $_GET['idlist']){
						$action = 'getProduct';
					}else{
						$action = 'getProduct';
					}
				}
			}
			break;
		default:
			header('Location: http://'.$config_url.'');
			break;
	}
	$data = $controllerObject->{ $action }();
?>
<!-- <pre>
<?php var_dump($data['data'])?>
</pre> -->