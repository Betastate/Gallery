<?php

include 'db.php';

$db = new DB();

include 'file_manager.php';
$fileManager = new FileManager();


$ok = $fileManager->uploadFile($_FILES['file'],['jpg','JPG','jpeg','JPEG','png','PNG', 'gif', 'GIF']);

if ($ok) {
    $db->execute("INSERT INTO images(url,thumbnail,time_added) VALUES('".$fileManager->image."','".$fileManager->thumbnail."',NOW());");
}

echo json_encode(array('response' => $fileManager->image, 'thumbnail' => $fileManager->thumbnail, 'ok' => $fileManager->ok));