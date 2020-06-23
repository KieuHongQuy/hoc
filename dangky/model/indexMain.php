<?php
	class index{
		private $connect;
		public function __construct($config){
			$this->connect = new database($config);
		}
		public function getKhuyenmai() {
			$this->connect->query('select * from product where khuyenmai=1');
			return $this->connect->result_array();
		}
		public function getAll() {
			$this->connect->query('select list.img as imglist,list.id as id_list,list.ten as tenlist , product.id as id, product.ten ,product.gia ,product.img from product_list as list inner join product on list.id = product.id_list where list.noibat = 1');
			return $this->connect->result_array();
		}
		public function getThongtin() {
			$this->connect->query('select * from post where type="thong-tin"');
			return $this->connect->fetch_array();
		}
		public function getMxh() {
			$this->connect->query('select * from post where type="mxh"');
			return $this->connect->fetch_array();
		}
		public function getNotice() {
			$this->connect->query('select * from post where type="notice"');
			return $this->connect->result_array();
		}
		public function getBgtintuc() {
			$this->connect->query('select * from post where type="bg-tintuc"');
			return $this->connect->fetch_array();
		}
		public function getBgcart() {
			$this->connect->query('select * from post where type="bg-cart"');
			return $this->connect->fetch_array();
		}
	}
?>