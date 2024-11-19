<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Velvet - Dados Pessoais</title>
    <link rel="stylesheet" href="../css/perfilUsuario.css">
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
            <img class="logo" src="../assets/logo.png" alt="Logo" />
          </div>
          <div class="box-pesquisa">
            <input type="text1" placeholder="Pesquisa..." />
            <button class="box-icon">
              <ion-icon class="icone-icone" name="search-outline"></ion-icon>
            </button>
          </div>
          <div class="box-usuario">
            <a href="">Minha Conta</a>
            <a href="./cadastro.html">Cadastre-se</a>
          </div>
          <div class="box-carrinho">
            <ion-icon class="icone-icone" name="bag-handle-outline"></ion-icon>
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

    <div class="container">
        <div class="menu">
            <!-- botar o menu aq -->
        </div>
        <div class="conteudo">
            <label for="nome">Dados Pessoais</label>
            <input type="text" id="nomeID" placeholder="Seu Nome" disabled>
            <input type="text" id="nomeID" placeholder="Endereço">
            <input type="email" id="emailID" placeholder="SeuEmail@email.com">
            <div class="conteudo-centro">
                <input type="text" id="cpfID" placeholder="000.000.000-00" disabled>
                <input type="date" id="dataID" placeholder="Data de Nascimento">
                <select id="genero">
                    <option value="genero" selected disabled>Genero</option>
                    <option value="masculino">Masculino</option>
                    <option value="feminino">Feminino</option>
                    <option value="outro">Outro</option>
                </select>
            </div>
        </div>
    </div>

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
</body>
</html>
