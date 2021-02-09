// const initMenu = () => {
//   const target = document.querySelector('.test-container');
//   const menuEls = document.querySelectorAll('.navbar .nav-link');
//   console.log(menuEls)
//   menuEls.forEach( el => {
//     el.addEventListener('click', () => {
//       target.classList.add('menu-open');
//       console.log(el)
//     });
//   });
// }

const initMenu = () => {
  const buttons = document.querySelectorAll('.navbar .nav-link');
  const testContainer = document.querySelector('.test-container');
  const menuContainer = document.querySelector('.menu-container');
  const menuContent = menuContainer.querySelector('.menu-container-content');
  buttons.forEach( el => {
    el.addEventListener('click', (event) => {
      event.preventDefault()
      const timeout = menuContent.classList.contains('d-none') ? 0 : 400
      setTimeout(() => {
        menuContent.classList.toggle('d-none');
      }, timeout)

      testContainer.classList.toggle('width70');
      menuContainer.classList.toggle('width30');
    });
  });
}

export { initMenu };
