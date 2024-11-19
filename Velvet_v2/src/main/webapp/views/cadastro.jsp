<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>

<title>Cadastro.</title>

<link rel="stylesheet" href="../css/cadastro.css" />
<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
<script>
        window.onload = function() {
            const urlParams = new URLSearchParams(window.location.search);
            if (urlParams.has('status')) {
                alert("Cadastro realizado com sucesso!");
                setTimeout(function() {
                    window.location.href = "login.jsp";
                }, 2000);
            } else if (urlParams.has('error')) {
                alert("Cadastro não realizado. Email já esta sendo utilizado!");
            }
        };
    </script>
</head>
<body>
	<main>
	
	<div class="container">
	<div class="logo">
      <img src="assets/logo_velvet_CF.png"/>
	</div>
        <div class="login-form">
       <ion-icon class="icone-con" name="person-circle-outline"></ion-icon>
            <h2>Cadastro</h2>
            <form class="form" method="post" action=${pageContext.request.contextPath}/adicionarCadastro>
                <div class="input-container">
                    <i class='bx bx-user'></i>
                    <input type="text" id="nome" name="nome" placeholder="Nome" required>
                </div>
                <div class="input-container">
                    <i class='bx bx-id-card'></i>
                    <input type="text" id="cpf" name="cpf" placeholder="XXX.XXX.XXX-XX" required>
                </div>
                
                <div class="input-container">
                    <i class='bx bx-calendar' ></i>
                    <input type="date" id="data" name="dataNascimento" placeholder="Data de Nascimento" required>
                </div>
                <div class="input-container">
                    <i class='bx bx-envelope' ></i>
                    <input type="email" id="email" name="email" placeholder="Email" required>
                </div>
                <div class="input-container">
                    <i class='bx bx-phone'></i>
                    <input type="text" id="data" name="telefone" placeholder="(XX) XXXXXX-XXXX" required>
                </div>
                
                

                <div class="input-container">
                    <i class='bx bx-lock'></i>
                    <input type="password" id="senha" name="senha" placeholder="Senha" required>
                </div>

                <a href="login.jsp">Já tem conta? <span>Clique aqui</span></a>

                <button type="submit">Cadastrar</button>
            </form>
        </div>
        
    </div>
		
	</main>
</body>
</html>