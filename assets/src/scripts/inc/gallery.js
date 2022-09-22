const Gallery = () => {
    const imagesWrapper = document.querySelector('.gallery-images');

    if (!imagesWrapper) {
        return;
    }

    const imagesWrapperInner = document.querySelector('.gallery-images-inner');

    const panel = document.querySelector('.gallery-panel');
    const panelImage = panel.querySelector('.panel-image-preview .content-image');
    const panelLoading = panel.querySelector('.panel-load-images');


    const imagesInput = document.querySelector('#images-input');
    const galleryEmpty = document.querySelector('.gallery-empty');

    let currentImage = null;
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
        panelLoading.classList.remove('panel-load-images-loaded');
        panelLoading.classList.add('panel-load-images-loading');

        fetch(url, {
            method: 'POST',
            body: formData
        })
            .then((response) => {
                response.json().then(res => {
                    if (!res.ok) {
                        console.log(res.error + file.name);
                        return;
                    }
                    handleFileUploaded();
                    //append new image
                    let newItem = document.createElement('DIV');
                    newItem.className = 'content-item';
                    newItem.dataset.url = res.response;

                    let newImg = document.createElement('IMG')
                    newImg.src = res.thumbnail;

                    newItem.appendChild(newImg);
                    imagesWrapperInner.prepend(newItem);

                    numImages++;

                    if (galleryEmpty) {
                        galleryEmpty.remove();
                    }
                });
            })
            .catch((err) => { /* Error. Inform the user */ })
    };

    let filesUploaded = 0;
    let filesToUpload = 0;
    const filesUploadedElement = panel.querySelector('.load-loaded');
    const filesToUploadElement = panel.querySelector('.load-total');
    const handleFileUploaded = () => {
        filesUploaded++;
        filesUploadedElement.innerHTML = filesUploaded;
        if (filesUploaded >= filesToUpload) {
            panelLoading.classList.add('panel-load-images-loaded');
            panelLoading.classList.remove('panel-load-images-loading');
        }
    };

    const handleFiles = (files) => {
        filesToUploadElement.innerHTML = files.length;
        filesToUpload = files.length;
        filesUploaded = 0;

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

        loadMoreBtn.classList.add('button-disabled');

        fetch(url, {
            method: 'POST',
            body: formData
        })
            .then((response) => {
                response.json().then(res => {
                    loadMoreBtn.classList.remove('button-disabled');

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
            .catch((err) => { console.log(err); })
    };

    if (loadMoreBtn) {
        loadMoreBtn.addEventListener('click', () => {
            imagesOffset += imagesLimit;
            fetchImages(imagesLimit, imagesOffset);
        });
    }
};

window.addEventListener('load', () => {
    Gallery();
});