<%
	//Limpo a vari�vel de sess�o
	session.invalidate();

	//Redireciono para a p�gina de in�cio
	response.sendRedirect("login.jsp");

%>