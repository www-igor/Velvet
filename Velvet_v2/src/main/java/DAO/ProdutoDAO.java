package DAO;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import DTO.Produto;

public class ProdutoDAO {
    private Connection conn;

    public ProdutoDAO(Connection conn) {
        this.conn = conn;
    }

    public List<Produto> listarProdutos() throws SQLException {
        List<Produto> produtos = new ArrayList<>();
        String sql = "SELECT imagem, nome, id_marca, custo, valor, tamanho, id_categorias, conteudo, descricao, estoque FROM produtos";

        try (Statement stmt = conn.createStatement(); ResultSet rs = stmt.executeQuery(sql)) {
            while (rs.next()) {
                Produto produto = new Produto();
                produto.setImagem(rs.getString("imagem"));
                produto.setNome(rs.getString("nome"));
                produto.setMarca(rs.getString("id_marca"));
                produto.setCusto(rs.getString("custo"));
                produto.setValor(rs.getString("valor"));
                produto.setTamanho(rs.getString("tamanho"));
                produto.setCategorias(rs.getString("id_categorias"));
                produto.setConteudo(rs.getString("conteudo"));
                produto.setDesc(rs.getString("descricao"));
                produto.setEstoque(rs.getString("estoque"));
                produtos.add(produto);
            }
        }
        return produtos;
    }
}
