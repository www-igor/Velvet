package DAO;

import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Base64;

import DTO.Login;
import DTO.LoginADM;

public class LoginDAO {
    @SuppressWarnings("unused")
	public boolean logar(Login login) {
        String sql = "SELECT * FROM `clientes` WHERE `email` = ? AND `senha` = ?";

        try (Connection conn = new ConexaoDAO().conectaBD(); 
             PreparedStatement pstm = conn.prepareStatement(sql)) {

            if (conn == null) {
                System.out.println("Erro: Conexão não foi estabelecida.");
                return false;
            }

            System.out.println("Conexão estabelecida e preparando a consulta.");
            
            MessageDigest algorithm = MessageDigest.getInstance("SHA-256");
            byte[] hashedPasswordBytes = algorithm.digest(login.getSenha().getBytes(StandardCharsets.UTF_8));
            String hashedPassword = Base64.getEncoder().encodeToString(hashedPasswordBytes);
            
            pstm.setString(1, login.getEmail());
            pstm.setString(2, hashedPassword);


            ResultSet rs = pstm.executeQuery();  // Executando a consulta
            System.out.println(login.getEmail());
            System.out.println(login.getSenha());
            System.out.println(rs);
            if (rs.next()) {
                // Se o cliente for encontrado
                System.out.println("Cliente encontrado.");
                return true;
            } else {
                System.out.println("Email ou senha incorretos.");
                return false;
            }

        } catch (SQLException e) {
            System.out.println("Erro ao consultar o banco de dados");
            e.printStackTrace();
            return false;
        } catch (Exception e) {
            System.out.println("Erro inesperado");
            e.printStackTrace();
            return false;
        }
    }
}
