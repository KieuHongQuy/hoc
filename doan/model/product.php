<?php
	class product{
		private $connect;
		public function __construct($config){
			$this->connect = new database($config);
		}
		public function getAllProduct($tenlist,$tencat,$tenitem) {
			if($tenlist != ''){
				$this->connect->query('select * from product_list where tenkhongdau ="'.$tenlist.'"');
				$list = $this->connect->fetch_array();
				$where = ($list['id']) ? "where id_list=".$list['id'] : "";
				if($tencat != '' && $list){
					$this->connect->query('select * from product_cat where id_list='.$list['id'].' and tenkhongdau="'.$tencat.'"');
					$cat = $this->connect->fetch_array();
					$where.=  ($cat) ?' and id_cat='.$cat['id'] : ($where="");
					if($tenitem != '' && $cat){
						$this->connect->query('select * from product_item where id_list='.$list['id'].' and id_cat='.$cat['id'].' and tenkhongdau="'.$tenitem.'"');
						$item = $this->connect->fetch_array();
						$where.= ($item) ? ' and id_item='.$item['id'] : ($where="");
					}
				}
				$this->connect->query('select * from product '.$where.'');
				$product = $this->connect->result_array();
				return [
					'product' => $product,
					'list' => $list,
					'cat' => $cat,
					'item' => $item
				];
			}else{
				$this->connect->query('select * from product');
				$product = $this->connect->result_array();
				return [
					'product' => $product,
				];
			}
			
		}
		public function getProductDetail($ten,$id) {
			$this->connect->query('select * from product where id="'.$id.'" and tenkhongdau="'.$ten.'"');
			$product = $this->connect->fetch_array();
			if($product['id_list']){
				$this->connect->query('select * from product_list where id ="'.$product['id_list'].'"');
				$list = $this->connect->fetch_array();
			}
			if($product['id_cat']){
				$this->connect->query('select * from product_cat where id ="'.$product['id_cat'].'"');
				$cat = $this->connect->fetch_array();
			}
			if($product['id_item']){
				$this->connect->query('select * from product_item where id ="'.$product['id_item'].'"');
				$item = $this->connect->fetch_array();
			}
			return [
				'product' => $product,
				'list' => $list,
				'cat' => $cat,
				'item' => $item
			];
		}
		public function getProductSub($ten) {
			if($ten != ""){
				if($ten == 'san-pham-ban-chay'){
					$name = 'Sản phẩm bán chạy';
					$where = 'banchay = 1';
				}else{
					if($ten == 'san-pham-moi'){
						$name = 'Sản phẩm mới';
						$where = 'sanphammoi = 1';
					}else{
						if($ten == 'khuyen-mai'){
							$name = 'Sản phẩm khuyến mãi';
							$where = 'khuyenmai = 1';
						}else{
							$where = "";
						}
					}
				}
			}else{
				$where = "";
			}
			$this->connect->query('select * from product where '.$where.'');
			$product = $this->connect->result_array();
			return [
				'product' => $product,
				'name' => $name,
			];
		}
	}
?>