<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    HttpSession sessao = request.getSession();

	//Verifico se é nulo ou vazio
    if (sessao == null || sessao.getAttribute("email") == null || sessao.getAttribute("email").equals("")) { 
    	  //Se for vazio, redireciono para a tela de login	
          response.sendRedirect("login.jsp"); 
    }

%>
<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Home</title>
    <link rel="stylesheet" href="../css/home.css" />
  </head>
  <body>
    <header>
      <div class="container-geral-header">
        <div class="box-logo">
          <a href="./index.jsp"
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
          <a href="./cadastro.jsp">Cadastre-se</a>
        </div>
        <div class="box-carrinho">
          <a href="./carrinho.jsp"
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
        <div class="box-carousel">
          <div class="carousel"></div>
        </div>
        <div class="box-carousel-fragrancia">
          <h3><strong>Encontre sua fragrancia</strong></h3>
          <div class="box-carousel-1">
            <div class="box-perfumes">
              <img src="../assets/perfume.png" alt="Perfume" />
              <h3>Marca</h3>
              <h3>Perfume X</h3>
              <h2>R$ 135,35</h2>
              <div class="box-btn">
                <a href="./listadepedidos.html"><button>COMPRAR</button></a>
              </div>
            </div>
            <div class="box-perfumes">
              <img src="../assets/perfume.png" alt="Perfume" />
              <h3>Marca</h3>
              <h3>Perfume X</h3>
              <h2>R$ 135,35</h2>
              <div class="box-btn">
                <a href="./listadepedidos.html"><button>COMPRAR</button></a>
              </div>
            </div>
            <div class="box-perfumes">
              <img src="../assets/perfume.png" alt="Perfume" />
              <h3>Marca</h3>
              <h3>Perfume X</h3>
              <h2>R$ 135,35</h2>
              <div class="box-btn">
                <a href="./listadepedidos.html"><button>COMPRAR</button></a>
              </div>
            </div>
            <div class="box-perfumes">
              <img src="../assets/perfume.png" alt="Perfume" />
              <h3>Marca</h3>
              <h3>Perfume X</h3>
              <h2>R$ 135,35</h2>
              <div class="box-btn">
                <a href="./listadepedidos.html"><button>COMPRAR</button></a>
              </div>
            </div>
            <div class="box-perfumes">
              <img src="../assets/perfume.png" alt="Perfume" />
              <h3>Marca</h3>
              <h3>Perfume X</h3>
              <h2>R$ 135,35</h2>
              <div class="box-btn">
                <a href="./listadepedidos.html"><button>COMPRAR</button></a>
              </div>
            </div>
          </div>
        </div>
        <div class="box-faixa">
          <div class="content-image">
            <img src="../assets/flyer-3.png" alt="" />
          </div>
        </div>
        <div class="box-carousel-fragrancia">
          <h3><strong>Encontre sua fragrancia</strong></h3>
          <div class="box-carousel-1">
            <div class="box-perfumes">
              <img src="../assets/perfume.png" alt="Perfume" />
              <h3>Marca</h3>
              <h3>Perfume X</h3>
              <h2>R$ 135,35</h2>
              <div class="box-btn">
                <a href="./listadepedidos.html"><button>COMPRAR</button></a>
              </div>
            </div>
            <div class="box-perfumes">
              <img src="../assets/perfume.png" alt="Perfume" />
              <h3>Marca</h3>
              <h3>Perfume X</h3>
              <h2>R$ 135,35</h2>
              <div class="box-btn">
                <a href="./listadepedidos.html"><button>COMPRAR</button></a>
              </div>
            </div>
            <div class="box-perfumes">
              <img src="../assets/perfume.png" alt="Perfume" />
              <h3>Marca</h3>
              <h3>Perfume X</h3>
              <h2>R$ 135,35</h2>
              <div class="box-btn">
                <a href="./listadepedidos.html"><button>COMPRAR</button></a>
              </div>
            </div>
            <div class="box-perfumes">
              <img src="../assets/perfume.png" alt="Perfume" />
              <h3>Marca</h3>
              <h3>Perfume X</h3>
              <h2>R$ 135,35</h2>
              <div class="box-btn">
                <a href="./listadepedidos.html"><button>COMPRAR</button></a>
              </div>
            </div>
            <div class="box-perfumes">
              <img src="../assets/perfume.png" alt="Perfume" />
              <h3>Marca</h3>
              <h3>Perfume X</h3>
              <h2>R$ 135,35</h2>
              <div class="box-btn">
                <a href="./listadepedidos.html"><button>COMPRAR</button></a>
              </div>
            </div>
          </div>
        </div>
        <div class="box-faixa-1">
          <div class="content-image">
            <img src="../assets/flyer-2.png" alt="" />
          </div>
        </div>
        <div class="box-carousel-fragrancia">
          <h3><strong>Encontre sua fragrancia</strong></h3>
          <div class="box-carousel-1">
            <div class="box-perfumes">
              <img src="../assets/perfume.png" alt="Perfume" />
              <h3>Marca</h3>
              <h3>Perfume X</h3>
              <h2>R$ 135,35</h2>
              <div class="box-btn">
                <a href="./listadepedidos.html"><button>COMPRAR</button></a>
              </div>
            </div>
            <div class="box-perfumes">
              <img src="../assets/perfume.png" alt="Perfume" />
              <h3>Marca</h3>
              <h3>Perfume X</h3>
              <h2>R$ 135,35</h2>
              <div class="box-btn">
                <a href="./listadepedidos.html"><button>COMPRAR</button></a>
              </div>
            </div>
            <div class="box-perfumes">
              <img src="../assets/perfume.png" alt="Perfume" />
              <h3>Marca</h3>
              <h3>Perfume X</h3>
              <h2>R$ 135,35</h2>
              <div class="box-btn">
                <a href="./listadepedidos.html"><button>COMPRAR</button></a>
              </div>
            </div>
            <div class="box-perfumes">
              <img src="../assets/perfume.png" alt="Perfume" />
              <h3>Marca</h3>
              <h3>Perfume X</h3>
              <h2>R$ 135,35</h2>
              <div class="box-btn">
                <a href="./listadepedidos.html"><button>COMPRAR</button></a>
              </div>
            </div>
            <div class="box-perfumes">
              <img src="../assets/perfume.png" alt="Perfume" />
              <h3>Marca</h3>
              <h3>Perfume X</h3>
              <h2>R$ 135,35</h2>
              <div class="box-btn">
                <a href="./listadepedidos.html"><button>COMPRAR</button></a>
              </div>
            </div>
          </div>
        </div>
        <div class="box-faixa-2">
          <div class="content-faixa">
            <img src="../assets/flyer-1.png" alt="" />
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
    <script src="../js/home.js"></script>
  </body>
</html>

