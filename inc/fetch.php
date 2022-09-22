<?php
include_once 'db.php';

$db = new DB();

$limit = $_POST['limit'];
$offset = $_POST['offset'];

$images = $db->select("SELECT id,url,thumbnail,time_added FROM images ORDER BY id DESC LIMIT ".$limit." OFFSET ".$offset.";");

echo json_encode(array('images' => $images));