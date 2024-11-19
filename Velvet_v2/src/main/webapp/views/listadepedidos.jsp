<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Lista de Pedidos</title>
    <link rel="stylesheet" href="../css/listadepedidos.css" />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
      crossorigin="anonymous"
    />
  </head>
  <body>
    <header>
      <div class="container-geral-header">
        <div class="box-logo">
          <a href="index.jsp"
            ><img class="logo" src="../assets/logo.png" alt="Logo"
          /></a>
        </div>
        <div class="box-pesquisa">
          <input type="text" placeholder="Pesquisa..." />
          <button class="box-icon">
            <ion-icon class="icone-icone" name="search-outline"></ion-icon>
          </button>
        </div>
        <div class="box-usuario">
          <a href="">Minha Conta</a>
          <a href="./cadastro.html">Cadastre-se</a>
        </div>
        <div class="box-carrinho">
          <a href="./carrinho.html"
            ><ion-icon class="icone-icone" name="bag-handle-outline"></ion-icon
          ></a>
        </div>
        <div class="menu-hamburger">
          <button class="menu-toggle">
            <ion-icon name="menu-outline"></ion-icon>
          </button>
          <nav class="menu-links">
            <a href="./carrinho.html" class="links">Carrinho</a>
            <a href="" class="links">Meus Dados</a>
            <a href="./listadepedidos.html" class="links">Meus Pedidos</a>
            <a href="" class="links">LANÇAMENTOS</a>
            <a href="" class="links">PROMOÇÕES</a>
            <a href="" class="links">MASCULINO</a>
            <a href="" class="links">FEMININO</a>
            <a href="" class="links">AROMAS</a>
            <a href="" class="links">NEUTROS</a>
            <a href="" class="links">CÍTRICOS</a>
            <a href="" class="links">SOBRE NÓS</a>
            <a href="" class="links">CONTATO</a>
          </nav>
        </div>
      </div>
      <div class="box-links">
        <nav>
          <a href="" class="links">LANÇAMENTOS</a>
          <a href="" class="links">PROMOÇÕES</a>
          <a href="" class="links">MASCULINO</a>
          <a href="" class="links">FEMININO</a>
          <a href="" class="links">AROMAS</a>
          <a href="" class="links">NEUTROS</a>
          <a href="" class="links">CÍTRICOS</a>
          <a href="" class="links">SOBRE NÓS</a>
          <a href="" class="links">CONTATO</a>
        </nav>
      </div>
    </header>
    <main>
      <div class="container-geral-home">
        <div class="content-box-geral-lista">
          <div class="box-vazio-meio">
            <div class="titulo-icones">
              <ion-icon name="person-outline"></ion-icon>
              <a href="./perfilUsuario.jsp">Meus Dados</a>
            </div>
            <div class="titulo-icones">
              <ion-icon name="bag-handle-outline"></ion-icon>
              <a href="./listadepedidos.jsp">Meus Pedidos</a>
            </div>
          </div>
          <div class="box-conteudo-meio">
            <h2 class="titulo-1">Meus Pedidos</h2>
            <div class="box-ped-cod">
              <div class="content-itens">
                <div class="box-1">
                  <div class="box-pedidos">
                    <ion-icon
                      class="icones-pedidos"
                      name="bag-handle-outline"
                    ></ion-icon>
                    <p>PEDIDO: #1268</p>
                  </div>
                  <div class="box-pedidos">
                    <ion-icon
                      class="icones-pedidos"
                      name="rocket-outline"
                    ></ion-icon>
                    <p>CÓDIGO DE RASTREIO: VVT01102133BR</p>
                  </div>
                </div>
                <p>STATUS: ENTREGUE</p>
              </div>
              <div class="botao-evento">
                <button>ABRIR</button>
              </div>
              <div class="box-detalhes">
                <div class="content-geral-detalhes">
                  <div class="produtos">
                    <div class="titulo-produtos">
                      <p>PRODUTOS</p>
                    </div>
                    <p>Perfume X</p>
                    <p>Perfume Y</p>
                    <p>Perfume Z</p>
                  </div>
                  <div class="produtos">
                    <div class="titulo-produtos">
                      <p>QUANTIDADE</p>
                    </div>
                    <p>2</p>
                    <p>2</p>
                    <p>2</p>
                  </div>
                  <div class="produtos">
                    <div class="titulo-produtos">
                      <p>VALOR</p>
                    </div>
                    <p>127,90</p>
                    <p>270,90</p>
                    <p>107,90</p>
                  </div>
                </div>
                <div class="valor-total">
                  <p>TOTAL: 482,66</p>
                </div>
              </div>
            </div>
            <div class="box-ped-cod">
              <div class="content-itens">
                <div class="box-1">
                  <div class="box-pedidos">
                    <ion-icon
                      class="icones-pedidos"
                      name="bag-handle-outline"
                    ></ion-icon>
                    <p>PEDIDO: #1269</p>
                  </div>
                  <div class="box-pedidos">
                    <ion-icon
                      class="icones-pedidos"
                      name="rocket-outline"
                    ></ion-icon>
                    <p>CÓDIGO DE RASTREIO: VVT01102244BR</p>
                  </div>
                </div>
                <p>STATUS: ENTREGUE</p>
              </div>
              <div class="botao-evento-1">
                <button>ABRIR</button>
              </div>
              <div class="box-detalhes-1">
                <div class="content-geral-detalhes">
                  <div class="produtos">
                    <div class="titulo-produtos">
                      <p>PRODUTOS</p>
                    </div>
                    <p>Perfume X</p>
                    <p>Perfume Y</p>
                    <p>Perfume Z</p>
                  </div>
                  <div class="produtos">
                    <div class="titulo-produtos">
                      <p>QUANTIDADE</p>
                    </div>
                    <p>2</p>
                    <p>2</p>
                    <p>2</p>
                  </div>
                  <div class="produtos">
                    <div class="titulo-produtos">
                      <p>VALOR</p>
                    </div>
                    <p>127,90</p>
                    <p>270,90</p>
                    <p>107,90</p>
                  </div>
                </div>
                <div class="valor-total">
                  <p>TOTAL: 482,66</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </main>
    <footer>
      <div class="box-footer">
        <div class="box-title-inp">
          <h3>Fique atento ás novidades!</h3>
          <div class="box-input">
            <input type="text" placeholder="Insira seu email..." />
            <button>OK</button>
          </div>
        </div>
        <div class="box-sobre">
          <div class="cont-1">
            <h2>Sobre a VELVET</h2>
            <a href="">Quem somos</a>
          </div>
          <div class="cont-1">
            <h3>Precisa de ajuda?</h3>
            <a href="">Fale Conosco</a>
            <a href="">Sobre Nós</a>
            <a href="">Politica de Privacidade</a>
          </div>
        </div>
        <div class="box-pagamentos">
          <h3>Formas de Pagamento</h3>
          <div class="image-pag">
            <img class="img-cart" src="../assets/cartao-3.png" alt="pagamento" />
            <img class="img-cart" src="../assets/cartao-2.png" alt="pagamento" />
            <img class="img-cart" src="../assets/cartao-1.png" alt="pagamento" />
          </div>
        </div>
      </div>
      <div class="box-redes">
        <p>© Todos os direitos reservados.</p>
        <div class="box-icones">
          <ion-icon class="icon-icon" name="logo-instagram"></ion-icon>
          <ion-icon class="icon-icon" name="logo-facebook"></ion-icon>
        </div>
      </div>
    </footer>

    <script
      type="module"
      src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"
    ></script>
    <script
      nomodule
      src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"
    ></script>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
      crossorigin="anonymous"
    ></script>
    <script src="../js/listadepedidos.js"></script>
  </body>
</html>
</html>