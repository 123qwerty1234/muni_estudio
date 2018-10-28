package conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {
	
	public static Conexion instance;//singlenton
	private Connection cnn;
	private static String bd ="mydb";
	private static String login ="root";
	private static String pass ="";
	private static String url ="jdbc:mysql://localhost:3306/"+bd;
	
	private Conexion() {
		
		try {
				Class.forName("com.mysql.jdbc.Driver");
				cnn = DriverManager.getConnection(url,login,pass);
			}catch (ClassNotFoundException ex){
				ex.printStackTrace();
			}catch (SQLException e){
				e.printStackTrace();
			}
	}
	
	public synchronized static Conexion saberEstado(){
		 if(instance==null) {
			instance = new Conexion();
		 	}
		 	return instance;
	}
	
	public Connection getCnn() {
		   return cnn;
	}
	
	public void cerrarConexion() {
		   instance = null;
	}
	
}
