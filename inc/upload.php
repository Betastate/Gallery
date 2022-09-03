<?php

include 'db.php';

$db = new DB();

include 'file_manager.php';
$fileManager = new FileManager();


$url = $fileManager->uploadFile($_FILES['file'],['jpg','JPG','jpeg','JPEG','png','PNG', 'gif', 'GIF']);

if ($fileManager->ok) {
    $db->execute("INSERT INTO images(url,thumbnail,time_added) VALUES('".$url."','".$url."',NOW());");
}

echo json_encode(array('response' => $url, 'ok' => $fileManager->ok));