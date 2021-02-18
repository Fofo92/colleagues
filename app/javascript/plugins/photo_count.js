const photoCount = () => {

  const inputPhotos = document.querySelector('.input-photo')
  const reloadCount = document.querySelector('#reload')

  if (!inputPhotos) return

  inputPhotos.addEventListener('change', (photo) => {
    reloadCount.innerHTML = `+ ${inputPhotos.files.length} photos`
  })
}

export { photoCount };
