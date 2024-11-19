package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import DTO.Cadastro;
import DTO.Produto;

public class CadastroDAO {

    public boolean adicionarCadastro(Cadastro cadastro) {
        String sql = "INSERT INTO clientes (nome, cpf, email, telefone, dataNascimento, senha) VALUES (?, ?, ?, ?, ?, ?)";

        try (Connection conn = new ConexaoDAO().conectaBD(); 
             PreparedStatement pstm = conn.prepareStatement(sql)) {

            if (conn == null) {
                System.out.println("Erro: Conexão não foi estabelecida.");
                return false;  // Retorna false se não conseguiu conectar
            }
            System.out.println("passou");
            try (PreparedStatement pstmVerificaEmail = conn.prepareStatement("SELECT COUNT(*) FROM clientes WHERE email = ?")) {
                pstmVerificaEmail.setString(1, cadastro.getEmail());
                ResultSet rs = pstmVerificaEmail.executeQuery();
                
                if (rs.next() && rs.getInt(1) > 0) {
                    System.out.println("Erro: E-mail já cadastrado.");
                    return false;  // Retorna false se o e-mail já está cadastrado
                }
            }

            System.out.println("Conexão estabelecida e preparando a consulta.");

            pstm.setString(1, cadastro.getNome());
            pstm.setString(2, cadastro.getCpf());
            pstm.setString(3, cadastro.getEmail());
            pstm.setString(4, cadastro.getTelefone());
            pstm.setString(5, cadastro.getDataNascimento());
            pstm.setString(6, cadastro.getSenha());

            pstm.executeUpdate();  
            System.out.println("Cadastro inserido com sucesso!");
            return true;  // Retorna true se o cadastro foi bem-sucedido

        } catch (SQLException e) {
            System.out.println("Erro ao inserir cadastro no banco de dados");
            e.printStackTrace();  
            return false;  // Retorna false se houve um erro
        } catch (Exception e) {
            System.out.println("Erro inesperado");
            e.printStackTrace();  
            return false;  // Retorna false se houve um erro inesperado
        }
    }
public void adicionarCadastroProduto(Produto produto) {
    	
    	/*ZoneId saZoneId = ZoneId.of("America/Sao_Paulo");
    	
    	ZonedDateTime saDateTime = ZonedDateTime.now(saZoneId);
    	
    	DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm:ss");
    	
    	String DataFormatada = saDateTime.format(formatter);
    	
    	String criacao = "ADM | " + DataFormatada;*/
    	
    	
        String sql = "INSERT INTO produtos (nome, valor, custo, descricao, tamanho, capacidade, imagem, id_categoria, id_marca, estoque) VALUES (?, ?, ?, ?, ?, ?, ?, 1, 2, ?)";

        try (Connection conn = new ConexaoDAO().conectaBD(); 
             PreparedStatement pstm = conn.prepareStatement(sql)) {

            

            System.out.println("Conexão estabelecida e preparando a consulta.");
            
            pstm.setString(1, produto.getNome());
            pstm.setString(2, produto.getValor());
            pstm.setString(3, produto.getCusto());
            pstm.setString(4, produto.getDesc());
            pstm.setString(5, produto.getTamanho());
            pstm.setString(6, produto.getConteudo());
            pstm.setString(7, produto.getImagem());
            pstm.setString(8, produto.getEstoque());

            pstm.executeUpdate();  // Execute o comando=
            System.out.println("Cadastro inserido com sucesso!");

        } catch (SQLException e) {
        	System.out.print(e);
        	System.out.println("Erro ao daqewqewqdos");
            e.printStackTrace();  // Exibe detalhes sobre o erro
            
        } catch (Exception e) {
            System.out.println("Erro inesperado");
            e.printStackTrace();  // Exibe detalhes sobre outros tipos de erro
        }
    }


public void atualizarCadastroProduto(Produto produto) {
	
	/*ZoneId saZoneId = ZoneId.of("America/Sao_Paulo");
	
	ZonedDateTime saDateTime = ZonedDateTime.now(saZoneId);
	
	DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm:ss");
	
	String DataFormatada = saDateTime.format(formatter);
	
	String criacao = "ADM | " + DataFormatada;*/
	
	
    String sql = "UPDATE INTO produtos (nome, valor, custo, descricao, tamanho, capacidade, imagem, id_categoria, id_marca) VALUES (?, ?, ?, ?, ?, ?, ?, 1, 2)";

    try (Connection conn = new ConexaoDAO().conectaBD(); 
         PreparedStatement pstm = conn.prepareStatement(sql)) {

        

        System.out.println("Conexão estabelecida e preparando a consulta.");
        
        pstm.setString(1, produto.getNome());
        pstm.setString(2, produto.getValor());
        pstm.setString(3, produto.getCusto());
        pstm.setString(4, produto.getDesc());
        pstm.setString(5, produto.getTamanho());
        pstm.setString(6, produto.getConteudo());
        pstm.setString(7, produto.getImagem());

        pstm.executeUpdate();  // Execute o comando=
        System.out.println("Cadastro inserido com sucesso!");

    } catch (SQLException e) {
    	System.out.print(e);
    	System.out.println("Erro ao daqewqewqdos");
        e.printStackTrace();  // Exibe detalhes sobre o erro
        
    } catch (Exception e) {
        System.out.println("Erro inesperado");
        e.printStackTrace();  // Exibe detalhes sobre outros tipos de erro
    }
}
    
}
