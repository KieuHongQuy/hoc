<?php
    class post{
        private $conn;
        public function __construct($config){
            $this->conn = new database($config);
        }
        public function getLogo(){
            $this->conn->query('select * from post where type="logo"');
            return $this->conn->fetch_array();
        }
        public function getGiohang(){
            $this->conn->query('select * from post where type="giohang"');
            return $this->conn->fetch_array();
        }
        public function getIcon(){
            $this->conn->query('select * from post where type="icon"');
            return $this->conn->fetch_array();
        }
        public function getSukien(){
            $this->conn->query('select * from post where type="su-kien"');
            return $this->conn->fetch_array();
        }
        public function getDonhang(){
            $this->conn->query('select * from post where type="don-hang"');
            return $this->conn->fetch_array();
        }
        public function getSanpham(){
            $this->conn->query('select * from post where type="san-pham-yeu-thich"');
            return $this->conn->fetch_array();
        }
        public function getSlider(){
            $this->conn->query('select * from post where type="slider"');
            return $this->conn->result_array();
        }
        public function getMenu(){
            $this->conn->query('select list.id as id_list,list.ten as tenlist , cat.ten as tencat ,cat.id as id_cat ,item.id as id_item,item.ten as tenitem from product_list as list left join product_cat as cat on list.id = cat.id_list left join product_item as item on list.id = item.id_list');
            return $this->conn->result_array();
        }
    }
?>