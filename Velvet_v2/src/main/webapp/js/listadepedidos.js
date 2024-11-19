document.addEventListener("DOMContentLoaded", function () {
    const botaoEvento = document.querySelector(".botao-evento button");
    const boxDetalhes = document.querySelector(".box-detalhes");

    boxDetalhes.style.display = "none";

    botaoEvento.addEventListener("click", function () {
        if (boxDetalhes.style.display === "none") {
            boxDetalhes.style.display = "block";
            botaoEvento.textContent = "FECHAR";
        } else {
            boxDetalhes.style.display = "none";
            botaoEvento.textContent = "ABRIR";
        }
    });

    const botaoEvento1 = document.querySelector(".botao-evento-1 button");
    const boxDetalhes1 = document.querySelector(".box-detalhes-1");

    boxDetalhes1.style.display = "none";

    botaoEvento1.addEventListener("click", function () {
        if (boxDetalhes1.style.display === "none") {
            boxDetalhes1.style.display = "block";
            botaoEvento1.textContent = "FECHAR";
        } else {
            boxDetalhes1.style.display = "none";
            botaoEvento1.textContent = "ABRIR";
        }
    });
});
// Script para controlar o menu hambúrguer
document.addEventListener("DOMContentLoaded", () => {
  const menuToggle = document.querySelector(".menu-toggle");
  const menuLinks = document.querySelector(".menu-links");

  menuToggle.addEventListener("click", () => {
    menuLinks.classList.toggle("open");
  });
});
