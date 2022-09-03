
<?php

include_once './inc/db.php';

$db = new DB();

$images = $db->select("SELECT url,thumbnail,time_added FROM images ORDER BY id DESC;");

?>

<div class="gallery-images">
    <div class="gallery-images-inner">
        <?php foreach($images as $image) : ?>
            <div class="content-item" data-url="/<?php echo $image['url']; ?>">
                <img src="/<?php echo $image['url']; ?>" alt="">
            </div>
        <?php endforeach; ?>
        <!-- <div class="content-item" data-url="/assets/dist/images/1.JPG">
            <img src="/assets/dist/images/1.JPG" alt="">
        </div>
        <div class="content-item" data-url="/assets/dist/images/2.JPG">
            <img src="/assets/dist/images/2.JPG" alt="">
        </div>
        <div class="content-item" data-url="/assets/dist/images/3.JPG">
            <img src="/assets/dist/images/3.JPG" alt="">
        </div>
        <div class="content-item" data-url="/assets/dist/images/4.JPG">
            <img src="/assets/dist/images/4.JPG" alt="">
        </div>
        <div class="content-item" data-url="/assets/dist/images/5.JPG">
            <img src="/assets/dist/images/5.JPG" alt="">
        </div>
        <div class="content-item" data-url="/assets/dist/images/6.JPG">
            <img src="/assets/dist/images/6.JPG" alt="">
        </div>
        <div class="content-item" data-url="/assets/dist/images/7.JPG">
            <img src="/assets/dist/images/7.JPG" alt="">
        </div>
        <div class="content-item" data-url="/assets/dist/images/8.JPG">
            <img src="/assets/dist/images/8.JPG" alt="">
        </div>
        <div class="content-item" data-url="/assets/dist/images/9.JPG">
            <img src="/assets/dist/images/9.JPG" alt="">
        </div>
        <div class="content-item" data-url="/assets/dist/images/10.JPG">
            <img src="/assets/dist/images/10.JPG" alt="">
        </div>
        <div class="content-item" data-url="/assets/dist/images/11.JPG">
            <img src="/assets/dist/images/11.JPG" alt="">
        </div>
        <div class="content-item" data-url="/assets/dist/images/12.JPG">
            <img src="/assets/dist/images/12.JPG" alt="">
        </div> -->
    </div>
    <div class="gallery-load-more">
        <span class="button">Load More</span>
    </div>
</div>