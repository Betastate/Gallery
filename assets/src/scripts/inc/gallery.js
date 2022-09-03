const Gallery = () => {
    const imagesWrapper = document.querySelector('.gallery-images');

    if (!imagesWrapper) {
        return;
    }

    const panel = document.querySelector('.gallery-panel');
    const panelImage = panel.querySelector('.panel-image-preview .content-image');
    const imagesInput = document.querySelector('#images-input');

    const focusImage = (image) => {
        panelImage.src = image.dataset.url;
    };


    imagesWrapper.addEventListener('click', (e) => {
        const clickedImage = e.target.closest('.content-item');

        if (clickedImage) {
            focusImage(clickedImage);
        }
    });

    //files upload handling
    panel.addEventListener('dragenter', () => {
        panel.classList.add('gallery-panel-files');
    });
    panel.addEventListener('dragleave', () => {
        panel.classList.remove('gallery-panel-files');
    });
    panel.addEventListener('drop', () => {
        panel.classList.remove('gallery-panel-files');
    });
};

window.addEventListener('load', () => {
    Gallery();
});