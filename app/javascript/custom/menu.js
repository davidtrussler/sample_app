document.addEventListener("turbo:load", function() {
  let account = document.querySelector("#account")

  account.addEventListener("click", function(event) {
    let menu = document.querySelector("#dropdown-menu");

    event.preventDefault();
    menu.classList.toggle("active")
  })
})
