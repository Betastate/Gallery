
<?php

include_once './inc/db.php';

$db = new DB();

$chunkSize = 8;

$images = $db->select("SELECT url,thumbnail,time_added FROM images ORDER BY id DESC LIMIT 8;");

$imagesCount = $db->select("SELECT Count(id) as count FROM images;",true)['count'];

?>

<div class="gallery-images" data-count="<?php echo $imagesCount; ?>" data-chunks="8">
    <?php if (empty($images)) : ?>
        <h3 class="gallery-empty">No images added</h3>
    <?php endif; ?>
    <div class="gallery-images-inner">
        <?php if (!empty($images)) : ?>
            <?php foreach($images as $image) : ?>
                <div class="content-item" data-url="/<?php echo $image['url']; ?>">
                    <img src="/<?php echo $image['thumbnail']; ?>" alt="">
                </div>
            <?php endforeach; ?>
        <?php endif; ?>
    </div>
    <?php if (!empty($images) && $imagesCount > $chunkSize) : ?>
        <div class="gallery-load-more">
            <span class="button">Load More</span>
        </div>
    <?php endif; ?>
</div>