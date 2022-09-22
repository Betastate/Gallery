<?php

class FileManager{

    public $ok = false;
    public $image = '';
    public $thumbnail = '';
    
    public $error = '';

    function __construct(){

    }

    function makeThumbnail($file, $extension) {
        $src = $file;

        if (in_array($extension,['jpg','JPG','jpeg','JPEG'])) {
            $src = imagecreatefromjpeg('../' . $this->image);
        }
        else if (in_array($extension,['png','PNG'])) {
            $src = imagecreatefrompng('../' . $this->image);
        }
        else if (in_array($extension,['gif','GIF'])) {
            $src = imagecreatefromgif('../' . $this->image);
        }
        else {
            return;
        }
        list($width, $height) = getimagesize('../' . $this->image);
        $newWidth = 256;
        $newHeight = ($height/$width) * 256;
        $imgResized = imagescale($src , $newWidth, $newHeight);

        $cleanName = explode('.',basename($file['name']))[0];
        $pathSegments = explode('/',$this->image);
        array_pop($pathSegments);
        $this->thumbnail = implode('/',$pathSegments) . '/' . $cleanName . '_thumbnail' . '.' . $extension;


        if (in_array($extension,['jpg','JPG','jpeg','JPEG'])) {
            imagejpeg($imgResized, '../' . $this->thumbnail);
        }
        else if (in_array($extension,['png','PNG'])) {
            imagepng($imgResized, '../' . $this->thumbnail);
        }
        else if (in_array($extension,['gif','GIF'])) {
            imagegif($imgResized, '../' . $this->thumbnail);
        }
    }

    function uploadFile($file,$allowed_extensions){
        $this->ok = false;

        $target_dir = '../files/' . md5($file['name'] . microtime()) . '';
        $target_file = $target_dir . '/' . basename($file['name']);
        $uploadOk = 1;
        $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));

        if (!in_array($imageFileType,$allowed_extensions)){
            $this->error = 'ERROR: Extension not allowed - ';
            return false;
        }

        if (file_exists($target_file)) {
            $this->error = 'ERROR: File already exists - ';
            return false;
        }

        if ($file["size"] > 5242880) {
            $this->error = 'ERROR: File bigger than 5MB - ';
            return false;
        }


        if (!file_exists($target_dir)) {
            mkdir($target_dir, 0777, true);
        }

        if (move_uploaded_file($file["tmp_name"], $target_file)) {
            $this->ok = true;
            $this->image = str_replace('../','',$target_file);
            $this->makeThumbnail($file, $imageFileType);
            return true;
        } else {
            return "ERROR: Sorry, there was an error uploading your file.";
        }


    }

}

?>