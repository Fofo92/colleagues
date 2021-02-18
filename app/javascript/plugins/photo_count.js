const photoCount = () => {

  const buttonPhotos = document.querySelector('.upload-photo')
  const reloadCount = document.querySelector('#reload')
  console.log(reloadCount)

  buttonPhotos.addEventListener('click', (photo) => {
    ("#reload").load(" #reload > *");
  })
}

export { photoCount };
