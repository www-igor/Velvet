package Servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.MessageDigest;
import java.util.Base64;

import DAO.CadastroDAO;
import DTO.Cadastro;

/**
 * Servlet implementation class adicionarCadastro
 */
@WebServlet("/adicionarCadastro")
public class adicionarCadastro extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public adicionarCadastro() {
        super();

        // TODO Auto-generated constructor stub
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
            request.setCharacterEncoding("UTF-8");
            String nome =  request.getParameter("nome");
            String cpf = request.getParameter("cpf");
            String dataNascimento = request.getParameter("dataNascimento");
            String telefone = request.getParameter("telefone");
            String email = request.getParameter("email");
            String senha = request.getParameter("senha");
            System.out.println(dataNascimento);
            Cadastro cadastro = new Cadastro();
            
            MessageDigest algorithm = MessageDigest.getInstance("SHA-256");
            byte hashedPasswordBytes[] = algorithm.digest(senha.getBytes("UTF-8"));
            String hashedPassword = Base64.getEncoder().encodeToString(hashedPasswordBytes);

            
            cadastro.setNome(nome);
            cadastro.setCpf(cpf);
            cadastro.setDataNascimento(dataNascimento);
            cadastro.setTelefone(telefone);
            cadastro.setEmail(email);
            cadastro.setSenha(hashedPassword);
            
            CadastroDAO cadastrodao = new CadastroDAO();
            boolean cadastroSucesso = cadastrodao.adicionarCadastro(cadastro);

            // Redirecionar com base no status do cadastro
            if (cadastroSucesso) {
                // Se o cadastro foi bem-sucedido, redireciona para Cadastro.jsp com status=success
                response.sendRedirect("views/cadastro.jsp?status=success");
            } else {
                // Se o cadastro falhou, redireciona para Cadastro.jsp com status=error
                response.sendRedirect("views/cadastro.jsp?error=true");
            }

        } catch (Exception e) {
            // Caso ocorra um erro, redireciona para uma página de erro
            response.sendRedirect("views/cadastro.jsp?error=true");
            e.printStackTrace();
        }
    }
}

