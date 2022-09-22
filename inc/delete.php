<?php
include_once 'db.php';

$db = new DB();

$id = $_POST['id'];

$image = $db->select("SELECT * FROM images WHERE id='".$id."';",true);

$db->execute("DELETE FROM images WHERE id='".$id."';");

$db->execute("INSERT INTO deleted_images(id,url,thumbnail,time_added) VALUES 
            (".$id.",'".$image['url']."','".$image['thumbnail']."','".$image['time_added']."');");

echo json_encode(array('id' => $id));