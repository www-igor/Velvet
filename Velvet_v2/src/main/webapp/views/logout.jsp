<%
	//Limpo a variável de sessão
	session.invalidate();

	//Redireciono para a página de início
	response.sendRedirect("login.jsp");

%>