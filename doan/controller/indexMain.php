<?php 
	include './model/indexMain.php';
	class indexMain{
		private $config;
		function __construct($config)
		{
			$this->config = $config;
		}
		public function indexHome(){
			$model = new index($this->config);
			$data = $model ->getKhuyenmai('san-pham-khuyen-mai'); 
			$datamain = $model ->getAll(); 
			$thongtin = $model ->getPost('thong-tin'); 
			$notice = $model ->getPosts('notice');
			$mxh = $model ->getPost('mxh');
			$bgtintuc =$model ->getPost('bg-tintuc');
			$bgcart = $model ->getPost('bg-cart');
			return [
				'data' => $data,
				'datamain' => $datamain,
				'thongtin' => $thongtin,
				'notice' => $notice,
				'mxh' => $mxh,
				'bgtintuc' => $bgtintuc,
				'bgcart' => $bgcart
			];
		}
		public function error(){
			return 'xin chao error';
		}
	}

?>