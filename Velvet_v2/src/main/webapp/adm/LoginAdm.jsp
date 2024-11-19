<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
  <head>
    <meta charset="UTF-8" />
    <title>Login</title>
    <link rel="stylesheet" href="../css/loginUser.css" />
    <link
      href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css"
      rel="stylesheet"
    />
    <script>
      window.onload = function () {
        const urlParams = new URLSearchParams(window.location.search);
        if (urlParams.has("status")) {
          alert("Login realizado com sucesso!");
          setTimeout(function () {
            window.location.href = "AdmHome.jsp";
          }, 1000);
        } else if (urlParams.has("error")) {
          alert("Email ou senha incorretos.");
        }
      };
    </script>
  </head>
  <body>
    <div class="container">
      <div class="login-form">
        <h2>Login ADM</h2>
        <form action="/Velvet_v2/loginADM" method="post" class="form">
          <div class="input-container">
            <i class="bx bx-user"></i>
            <input
              type="email"
              id="email"
              name="email"
              required
              placeholder="Usuário"
            />
          </div>
          <div class="input-container">
            <i class="bx bx-lock"></i>
            <input
              type="password"
              id="senha"
              name="senha"
              required
              placeholder="Senha"
            />
          </div>
          <a href="">Não tem conta? <span>Clique aqui</span></a>
          <button type="submit">Entrar</button>
        </form>
      </div>
      <div class="logo"></div>
    </div>
  </body>
</html>
