<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Página de Login</title>
    <link rel="stylesheet" href="../css/login.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <script>
        window.onload = function() {
            const urlParams = new URLSearchParams(window.location.search);
            if (urlParams.has('status')) {
                alert("Login realizado com sucesso!");
                setTimeout(function() {
                    window.location.href = "index.jsp";
                }, 2000);
            } else if (urlParams.has('error')) {
                alert("Email ou senha incorretos.");
            }
        };
    </script>
</head>
<body>
    <div class="container">
        <div class="login-form">
            <h2>Login</h2>
            <form class="form" method="post" action="${pageContext.request.contextPath}/loginCliente">
                <div class="input-container">
                    <i class='bx bx-user'></i>
                    <input type="email" id="email" name="email" placeholder="Email" required>
                </div>

                <div class="input-container">
                    <i class='bx bx-lock'></i>
                    <input type="password" id="senha" name="senha" placeholder="Senha" required>
                </div>

                <a href="cadastro.jsp">Não tem conta? <span>Clique aqui</span></a>

                <button type="submit">Entrar</button>
            </form>
        </div>
        <div class="logo">
       		<img src="assets/logo_velvet_CF.png"/>
        </div>
    </div>
</body>
</html>
