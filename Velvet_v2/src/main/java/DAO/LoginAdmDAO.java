package DAO;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import DTO.LoginADM;

public class LoginAdmDAO {
    @SuppressWarnings("unused")
	public boolean logarADM(LoginADM login) {
        String sql = "SELECT * FROM `administrador` WHERE `email` = ? AND `senha` = ?";

        try (Connection conn = new ConexaoDAO().conectaBD(); 
             PreparedStatement pstm = conn.prepareStatement(sql)) {

            if (conn == null) {
                System.out.println("Erro: Conexão não foi estabelecida.");
                return false;
            }

            System.out.println("Conexão estabelecida e preparando a consulta.");
            
            pstm.setString(1, login.getEmail());
            pstm.setString(2, login.getSenha());

            ResultSet rs = pstm.executeQuery();  
            System.out.println(login.getEmail());
            System.out.println(login.getSenha());
            System.out.println(rs);
            if (rs.next()) {
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
