const photoCount = () => {

  const inputPhotos = document.querySelector('.input-photo')
  const reloadCount = document.querySelector('#reload')

  if (!inputPhotos) return

  inputPhotos.addEventListener('change', (photo) => {
    if (inputPhotos.files.length <= 1) {
      reloadCount.innerHTML = `+ ${inputPhotos.files.length} photo`
    }
    else {
      reloadCount.innerHTML = `+ ${inputPhotos.files.length} photos`
    }
  })
}

export { photoCount };
