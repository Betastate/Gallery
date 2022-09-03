const Gallery = () => {
    const imagesWrapper = document.querySelector('.gallery-images');

    if (!imagesWrapper) {
        return;
    }

    const imagserWrapperInner = document.querySelector('.gallery-images-inner');

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
                    console.log(res.ok);
                    //append new image
                    let newItem = document.createElement('DIV');
                    newItem.className = 'content-item';
                    newItem.dataset.url = res.response;

                    let newImg = document.createElement('IMG')
                    newImg.src = res.response;

                    newItem.appendChild(newImg);
                    imagserWrapperInner.prepend(newItem);
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

};

window.addEventListener('load', () => {
    Gallery();
});