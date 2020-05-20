const clickWishlistStar = () => {
  const star = document.getElementById('star');
  star.addEventListener('click',() => {
    event.preventDefault();
    // console.log(event.currentTarget.innerHTML);
    // console.log("<i class=\"far fa-star\"></i> Add to wish list");
    event.currentTarget.innerHTML === "<i class=\"far fa-star\"></i> Add to wish list"
    if (event.currentTarget.innerHTML === "<i class=\"far fa-star\"></i> Add to wish list") {
      event.currentTarget.innerHTML = "<i class=\"fas fa-star\"></i> Add to wish list";
    } else {
      event.currentTarget.innerHTML === "<i class=\"far fa-star\"></i> Add to wish list"
    }
  });
};

export { clickWishlistStar };