// Script para controlar o menu hambúrguer
document.addEventListener("DOMContentLoaded", () => {
  const menuToggle = document.querySelector(".menu-toggle");
  const menuLinks = document.querySelector(".menu-links");

  menuToggle.addEventListener("click", () => {
    menuLinks.classList.toggle("open");
  });
});