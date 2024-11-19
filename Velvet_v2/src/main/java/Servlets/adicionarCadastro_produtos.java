package Servlets;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import DAO.CadastroDAO;
import DTO.Produto;

/**
 * Servlet implementation class adicionarCadastro_produtos
 */
@WebServlet("/adicionarCadastro_produtos")
public class adicionarCadastro_produtos extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public adicionarCadastro_produtos() {
        super();
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            request.setCharacterEncoding("UTF-8");

            String nome = request.getParameter("nome");
            String valor = request.getParameter("valor");
            String custo = request.getParameter("custo");
            String desc = request.getParameter("desc");
            String tamanho = request.getParameter("tamanho");
            String conteudo = request.getParameter("conteudo");
            String imagem = request.getParameter("imagem");
            String estoque = request.getParameter("estoque");

            Produto produto = new Produto();
            produto.setNome(nome);
            produto.setValor(valor);
            produto.setCusto(custo);
            produto.setDesc(desc);
            produto.setTamanho(tamanho);
            produto.setConteudo(conteudo);
            produto.setImagem(imagem);
            produto.setEstoque(estoque);
            System.out.print(estoque);

            CadastroDAO cadastrodao = new CadastroDAO();
            cadastrodao.adicionarCadastroProduto(produto);


        } catch (Exception e) {
            response.sendRedirect("erro.jsp");
            e.printStackTrace();
        }
    }
}
