package Servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import DAO.LoginDAO;
import DTO.Login;

@WebServlet("/loginCliente")
public class loginCliente extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public loginCliente() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            request.setCharacterEncoding("UTF-8");

            String email = request.getParameter("email");
            String senha = request.getParameter("senha");
    		HttpSession sessao = request.getSession();


            Login login = new Login();
            login.setEmail(email);
            login.setSenha(senha);

            LoginDAO loginDAO = new LoginDAO();
            boolean isLoggedIn = loginDAO.logar(login);

            if (isLoggedIn) {
            	sessao.setAttribute("email", email);
                response.sendRedirect("views/login.jsp?status=success");
            } else {
                response.sendRedirect("views/login.jsp?error=true");
            }
        } catch (Exception e) {
            response.sendRedirect("erro.jsp");
            e.printStackTrace();
        }
    }
}
