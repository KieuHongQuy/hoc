<?php 
	include './model/product.php';
	class productController{
		private $config;
		function __construct($config)
		{
			$this->config = $config;
		}
		public function getProduct(){
			$model = new product($this->config);
			$idlist = (isset($_GET['idlist']))? addslashes($_GET['idlist']) : "";
			$idcat = (isset($_GET['idcat']))? addslashes($_GET['idcat']) : "";
			$iditem =(isset($_GET['iditem']))? addslashes($_GET['iditem']) : "";
			$data = $model ->getAllProduct($idlist,$idcat,$iditem); 
			return [
				'data' => $data,
				'view' => 'product'
			];
		}
		public function getSub(){
			$model = new product($this->config);
			$ten = (isset($_GET['ten']))? addslashes($_GET['ten']) : "";
			$data = $model ->getProductSub($ten); 
			return [
				'data' => $data,
				'view' => 'product'
 			];
		}
		public function getDetail(){
			$model = new product($this->config);
			$ten = (isset($_GET['ten']))? addslashes($_GET['ten']) : "";
			$id = (isset($_GET['id']))? addslashes($_GET['id']) : "";
			$data = $model ->getProductDetail($ten,$id); 
			return [
				'data' => $data,
				'view' => 'productDetail'
 			];
		}
	}

?>