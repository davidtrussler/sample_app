document.addEventListener("turbo:load", function() {
  let hamburger = document.querySelector("#hamburger");
  let account = document.querySelector("#account")

  hamburger.addEventListener("click", function(event) {
    let menu = document.querySelector("#navbar-menu");

    event.preventDefault();
    menu.classList.toggle("collapse");
  });

  account.addEventListener("click", function(event) {
    let menu = document.querySelector("#dropdown-menu");

    event.preventDefault();
    menu.classList.toggle("active")
  })
})
