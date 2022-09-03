<?php
    class DB{
        private $dbhost = 'localhost';
        private $dbname = 'gallery';
        private $dbuser = 'gallery';
        private $dbpass = 'gallery';

        private $mysqli;
        function __construct(){
            $this->mysqli = new mysqli($this->dbhost,$this->dbuser,$this->dbpass,$this->dbname);
            $this->mysqli->set_charset("utf8");

            if (mysqli_connect_errno()) 
            {
                printf("<b>Connection failed:</b> %s\n", mysqli_connect_error());
                exit;
            }

        }

        public function select($sql,$single = false){
            $result = $this->mysqli->query($sql);
            
            if (!$result || $result->num_rows === 0){
                return null;
            }

            $response = array();
            while($row = $result->fetch_assoc()) {
                $response[] = $row;
            }

            
            if ($single) {return $response[0];}

            return $response;
        }

        public function execute($sql){
            $this->mysqli->query($sql);
        }

        public function executeCheck($sql){
            if (!$this->mysqli->query($sql)) {
                printf("Error message: %s\n", $this->mysqli->error);
            }
        }

        public function escape($string){
            return $this->mysqli->real_escape_string($string);
        }

        public function verifiedEscape($string){
            if (!isset($string)) {return null;}
            return $this->escape($string);
        }

    }

?>