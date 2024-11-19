package Servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import DAO.LoginAdmDAO;
import DAO.LoginDAO;
import DTO.Login;
import DTO.LoginADM;

@WebServlet("/loginADM")
public class loginADM extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public loginADM() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            request.setCharacterEncoding("UTF-8");

            String email = request.getParameter("email");
            String senha = request.getParameter("senha");
    		HttpSession sessao = request.getSession();


            LoginADM login = new LoginADM();
            login.setEmail(email);
            login.setSenha(senha);

            LoginAdmDAO loginDAO = new LoginAdmDAO();
            boolean isLoggedIn = loginDAO.logarADM(login);

            if (isLoggedIn) {
            	sessao.setAttribute("email", email);
                response.sendRedirect("adm/LoginAdm.jsp?status=success");
            } else {
                response.sendRedirect("adm/LoginAdm.jsp?error=true");
            }
        } catch (Exception e) {
            response.sendRedirect("erro.jsp");
            e.printStackTrace();
        }
    }
}
