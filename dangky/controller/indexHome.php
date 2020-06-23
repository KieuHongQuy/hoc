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
			$data = $model ->getKhuyenmai(); 
			$datamain = $model ->getAll(); 
			$thongtin = $model ->getThongtin(); 
			$notice = $model ->getNotice();
			$mxh = $model ->getMxh();
			$bgtintuc =$model ->getBgtintuc();
			$bgcart = $model ->getBgcart();
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