const navbarTransparent = () => {
  let target = document.querySelector(".navbar")


  window.addEventListener('scroll', event => {
    let height = (window.scrollY/window.innerHeight)*100;
    if (height > 10 ){
      target.style.backgroundColor = 'rgba(255,255,255,0.7)';
      target.firstElementChild.innerText = "BL"
      target.style.textShadow = "1px 0px 10px lightgrey"
    } else {
      target.style.backgroundColor = 'rgba(255,255,255,1)';
      target.firstElementChild.innerText = "Blockwagon"
      target.style.textShadow = ""
    }
  })
}

export { navbarTransparent }
