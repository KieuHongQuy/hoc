<?php 

    class database{
        private $hostname;
        private $username;
        private $password;
        private $database;

        protected $connection;
        protected $result;

        function __construct($config)
        {
            $this->hostname = $config['hostname'];
            $this->username = $config['username'];
            $this->password = $config['pass'];
            $this->database = $config['database'];
            $this->connect();
        }
		
        private function connect(){
            if (!isset($this->connection)) {
                $this->connection = new mysqli($this->hostname, $this->username, $this->password, $this->database);

                if(!$this->connection){
                    echo  'kết nối thất bại';
                    exit;
                }else{
                    mysqli_query($this->connection,'SET NAMES "utf8"');
                }
            }
            return $this->connection;
        } 

        //thực thi câu lệnh
        public function query($sql){
            $this->result = $this->connection->query($sql);
            return $this->result;
        }

        //lấy dữ liệu
        public function fetch_array(){
            if ($this->result) {
                $data = mysqli_fetch_assoc($this->result);
            }else{
                $data = 0;
            }
            return $data;
        }
        public function result_array(){
            if ($this->result) {
                $data = array();
                while ($row = mysqli_fetch_assoc($this->result)) 
                    $data[] = $row;
                return $data;
            }else{
                $data = 0;
            }
            return $data;
        }

        //lấy toàn bộ dữ liệu
        public function getAllData(){
            if (!$this->result) {
                $data = 0;
            }else{
                while ($datas = $this->getData()) {
                    $data[] = $datas;
                }
            }
            return $data;
        }

        //thêm dữ liệu
        // public function insertData($Firstname, $Lastname, $Email){
        // 	$sql = "INSERT INTO user(Firstname, Lastname, Email) VALUES (null, '$Firstname', '$Lastname', '$Email')";
        // 	return $this->execute($sql);
        // }

        // //updata database
        // public function updateData($ID, $Firstname, $Lastname, $Email){
        // 	$sql = "UPDATE user SET Firstname = '$Firstname', Lastname='$Lastname', Email = '$Email' WHERE ID = '$ID'";
        // 	return $this->execute($sql);
        // }

        // //delete data
        // public function deleteData($ID){
        // 	$sql = "DELETE FROM user WHERE ID='$ID'";
        // 	return $this->execute($sql);
        // }
    }
        

 ?>