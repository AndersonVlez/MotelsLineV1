/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import models.Usuario;

/**
 *
 * @author Cleyber
 */
public class DaoUsuarios {
    public int insertar(Usuario usuario){
        Conexion conexion = new Conexion();
        try{            
            PreparedStatement statement = conexion.prepareStatement("INSERT INTO usuarios(nombres, apellidos, cedula, correo, clave, rol, id_motel) values (?, ?, ?, ?, ?, ?, (SELECT id_motel FROM motel LIMIT 1))");
            statement.setString(1, usuario.getNombre());
            statement.setString(2, usuario.getApellido());            
            statement.setString(3, usuario.getCedula());
            statement.setString(4, usuario.getCorreo());
            statement.setString(5, usuario.getClave());
            statement.setString(6, usuario.getRol());            
            int insertado = statement.executeUpdate();
            return insertado;
        }catch(SQLException ex){
            System.out.println("Error al insertar usuario " + ex.toString());
        }finally{
            try{
                conexion.desconectar();
            }catch(Exception ex){
                System.out.println("Error al cerrar conexión" + ex);
            }
        }
        return 0;
    }
    
    public boolean login(Usuario usuario){
        try{
            Conexion conexion = new Conexion();
            PreparedStatement statement = conexion.prepareStatement("SELECT * FROM usuarios WHERE correo = ? AND clave = ? limit 1");
            statement.setString(1, usuario.getCorreo());
            statement.setString(2, usuario.getClave());
            ResultSet result = statement.executeQuery();
            return result.next();
        }catch(SQLException ex){
            return false;
        }
       
    }
    // Devuelve true si lo encuentra sino false
    public boolean validarCorreo(String correo){
        Conexion conexion = new Conexion();
        try{
            PreparedStatement statement = conexion.prepareStatement("SELECT * FROM usuarios WHERE correo = ? limit 1");
            statement.setString(1, correo);
            ResultSet result = statement.executeQuery();
            return result.next();
        }catch(SQLException se){
           System.out.println("ERROR en la consulta de correo " + se);
           return false;
        }finally{
            try{
                conexion.desconectar();
            }catch(Exception ex){
                System.out.println("Error al cerrar la conexion " + ex);
            }
        }
    }
}
