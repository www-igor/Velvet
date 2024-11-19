<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Lista de Produtos</title>
    <link rel="stylesheet" href="../css/style_lista_prod.css">
</head>
<body>
    <div class="main-content">
        <div class="header">
            <h1>Lista de produtos:</h1>
            <button class="new-product-btn" onClick="window.location.href='Cadastro_produtos.jsp'">+ NOVO PRODUTO</button>
        </div>

        <!-- Product Cards -->
        <div class="product-list">
            <c:forEach var="produto" items="${produtos}">
                <div class="product-card">
                    <img src="${produto.imagem}" alt="${produto.nome}">
                    <h3>${produto.nome}</h3>
                    <h4>${produto.marca}</h4>
                    <p>${produto.desc}</p>
                    <ul>
                        <li>ESTOQUE: <span class="stock">${produto.estoque} Unidades</span></li>
                        <li>CATEGORIAS: ${produto.categorias}</li>
                        <li>TAMANHO: ${produto.tamanho}</li>
                        <li>CONTEÚDO: ${produto.conteudo}</li>
                    </ul>
                    <p class="price">Preço: R$ ${produto.valor}</p>
                    <div class="icons">
                        <i class="edit-icon">EDITAR</i>
                        <i class="delete-icon">DELETAR</i>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</body>
</html>

