<?php

class FileManager{

    public $ok = false;

    function __construct(){

    }

    function uploadFile($file,$allowed_extensions){
        $this->ok = false;

        $target_dir = '../files/' . md5($file['name'] . microtime()) . '';
        $target_file = $target_dir . '/' . basename($file['name']);
        $uploadOk = 1;
        $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));

        if (!in_array($imageFileType,$allowed_extensions)){
            return 'ERROR: Extension not allowed';
        }

        if (file_exists($target_file)) {
            return 'ERROR: File already exists';
        }

        if ($file["size"] > 10000000) {
            return 'ERROR: File bigger than 5MB';
        }


        if (!file_exists($target_dir)) {
            mkdir($target_dir, 0777, true);
        }

        if (move_uploaded_file($file["tmp_name"], $target_file)) {
            $this->ok = true;
            return str_replace('../','',$target_file);
        } else {
            return "ERROR: Sorry, there was an error uploading your file.";
        }


    }

}

?>