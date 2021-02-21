// Work
// const initMenu = () => {
//   const menuEls = document.querySelectorAll('.navbar .slide-button');
//   const bodyContainer = document.querySelector('.body-container');
//   const menuContainer = document.querySelector('.menu-container');
//   const menuContent = menuContainer.querySelector('.menu-container-content');
//   console.log(menuEls)
//   menuEls.forEach( el => {
//     el.addEventListener('click', () => {
//       event.preventDefault()
//       const timeout = menuContent.classList.contains('d-none') ? 0 : 400
//       setTimeout(() => {
//         menuContent.classList.toggle('d-none');
//       }, timeout)
//       bodyContainer.classList.toggle('width70');
//       menuContainer.classList.toggle('width30');
//       console.log(el)
//     });
//   });
// }

//It works now!

const initMenu = () => {
  // const buttonIn = document.querySelector('.navbar #toggle-in');
  const dNoneEvent = document.querySelector('.navbar #toggle-d-none-event');
  const dNoneUser = document.querySelector('#toggle-d-none-user');
  const dNoneUserAvatar = document.querySelector('.navbar #toggle-d-none-user-avatar');
  const menuContent = document.querySelector('.test');
  const menuEvent = document.querySelector('.menu-wrapper-event');
  const menuUser = document.querySelector('.menu-wrapper-user');

    // buttonIn.addEventListener('click', (event) => {
    //   event.preventDefault()
    //   menuContent.classList.toggle('menu-open')
    // });

    dNoneEvent.addEventListener('click', (event) => {
          event.preventDefault()
          menuContent.classList.toggle('menu-open')
          menuEvent.classList.toggle('d-none')
        });

    dNoneUser.addEventListener('click', (event) => {
          event.preventDefault()
          menuContent.classList.toggle('menu-open')
          menuUser.classList.toggle('d-none')
        });

    dNoneUserAvatar.addEventListener('click', (event) => {
      event.preventDefault()
      menuContent.classList.toggle('menu-open')
      menuUser.classList.toggle('d-none')
    });

}


export { initMenu };
