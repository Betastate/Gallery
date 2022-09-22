const Gallery = () => {
    const imagesWrapper = document.querySelector('.gallery-images');

    if (!imagesWrapper) {
        return;
    }

    const imagesWrapperInner = document.querySelector('.gallery-images-inner');

    const panel = document.querySelector('.gallery-panel');
    const panelImage = panel.querySelector('.panel-image-preview .content-image');
    const imagesInput = document.querySelector('#images-input');

    let currentImage = null
    const focusImage = (image) => {
        panelImage.src = image.dataset.url;

        if (currentImage) {
            currentImage.classList.remove('is-current');
        }
        currentImage = image;
        currentImage.classList.add('is-current');
    };

    imagesWrapper.addEventListener('mousedown', (e) => {
        const clickedImage = e.target.closest('.content-item');

        if (clickedImage) {
            focusImage(clickedImage);
        }
    });

    //*******************   
    //Files upload handling
    //*******************   
    const uploadFile = (file) => {
        let url = '/inc/upload.php';
        let formData = new FormData();

        formData.append('file', file);

        fetch(url, {
            method: 'POST',
            body: formData
        })
            .then((response) => {
                response.json().then(res => {
                    console.log(res);
                    //append new image
                    let newItem = document.createElement('DIV');
                    newItem.className = 'content-item';
                    newItem.dataset.url = res.response;

                    let newImg = document.createElement('IMG')
                    newImg.src = res.thumbnail;

                    newItem.appendChild(newImg);
                    imagesWrapperInner.prepend(newItem);

                    numImages++;
                });
            })
            .catch((err) => { /* Error. Inform the user */ })
    };

    const handleFiles = (files) => {
        ([...files]).forEach(file => uploadFile(file));
    };

    panel.addEventListener('dragover', (e) => {
        e.preventDefault();
        e.stopPropagation();
        panel.classList.add('gallery-panel-files');
    });
    panel.addEventListener('dragenter', (e) => {
        e.preventDefault();
        e.stopPropagation();
        panel.classList.add('gallery-panel-files');
    });
    panel.addEventListener('dragleave', (e) => {
        e.preventDefault();
        e.stopPropagation();
        panel.classList.remove('gallery-panel-files');
    });
    panel.addEventListener('drop', (e) => {
        e.preventDefault();
        e.stopPropagation();
        panel.classList.remove('gallery-panel-files');

        let files = e.dataTransfer.files;
        handleFiles(files);
    });

    imagesInput.addEventListener('change', () => {
        handleFiles(imagesInput.files);
    });


    //*******************   
    //Load More
    //*******************
    // const maxImages
    let maxImages = parseInt(imagesWrapper.dataset.count);
    let imagesLimit = parseInt(imagesWrapper.dataset.chunks);
    let imagesOffset = 0;
    let numImages = 8;

    const loadMoreBtn = imagesWrapper.querySelector('.gallery-load-more .button');

    const fetchImages = (limit, offset) => {
        let url = '/inc/fetch.php';
        let formData = new FormData();

        formData.append('limit', limit);
        formData.append('offset', offset);

        fetch(url, {
            method: 'POST',
            body: formData
        })
            .then((response) => {
                response.json().then(res => {

                    if (!res.images) {
                        return;
                    }

                    res.images.forEach(image => {
                        //append new image
                        let newItem = document.createElement('DIV');
                        newItem.className = 'content-item';
                        newItem.dataset.url = image.url;

                        let newImg = document.createElement('IMG')
                        newImg.src = image.thumbnail;

                        newItem.appendChild(newImg);
                        imagesWrapperInner.appendChild(newItem);

                        numImages++;

                        if (numImages >= maxImages) {
                            loadMoreBtn.parentNode.remove();
                        }
                    });

                });
            })
            .catch((err) => { /* Error. Inform the user */ })
    };

    loadMoreBtn.addEventListener('click', () => {
        imagesOffset += imagesLimit;
        fetchImages(imagesLimit, imagesOffset);
    });
};

window.addEventListener('load', () => {
    Gallery();
});