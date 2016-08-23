
package models.dao;

import java.sql.*;

/**
 *
 * @author APRENDIZ
 */
public class Conexion {
    
    private Connection conex;
   
    
    public Conexion(){
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            this.conex = DriverManager.getConnection("jdbc:mysql://localhost/motelslinejsp","root", "");
        } catch (Exception ex) {
            System.out.println("Error en conexion a base de datos");
        }
        
    }
    public void desconectar() {
        try {
            this.conex.close();
        }
        catch (SQLException ex) {
        }
    }

    public PreparedStatement prepareStatement(String sql){
        try {
            return this.conex.prepareStatement(sql);
        } catch (Exception ex) {
            return null;
        }
    }
    
    public Connection getConexion(){
        return conex;
    }
}
