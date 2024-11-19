package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class ConexaoDAO {
	
	public Connection conectaBD () {
	        Connection conn = null;
	        try {
	            String url = "jdbc:mysql://localhost:3306/velvet?useSSL=false&serverTimezone=UTC";
	            Class.forName("com.mysql.cj.jdbc.Driver");
	            conn = DriverManager.getConnection(url, "root", "");

	            System.out.println("Conexão realizada com sucesso!");
	           // conn.close();
	        } catch (SQLException e) {
	            System.out.println("Erro em realizar conexão");
	            e.printStackTrace();
	        } catch (ClassNotFoundException e) {
	            System.out.println("Driver JDBC não encontrado");
	            e.printStackTrace();
	        }
	        
	    	return conn;
	    }
	
	}
