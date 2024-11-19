package Servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import DTO.Produto;
import DAO.ProdutoDAO;

@WebServlet("/listarProdutos")
public class ListaProdutosServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/velvet", "root", "");

            ProdutoDAO produtoDAO = new ProdutoDAO(conn);
            List<Produto> produtos = produtoDAO.listarProdutos();

            request.setAttribute("produtos", produtos);
            request.getRequestDispatcher("lista_produtos.jsp").forward(request, response);

            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Erro ao acessar o banco de dados.");
        }
    }
}
