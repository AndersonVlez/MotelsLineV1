/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import util.Hash;
import models.Usuario;
import models.dao.DaoUsuarios;

/**
 *
 * @author APRENDIZ
 */
public class RegistrarEmpleadoServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Usuario usuario = new Usuario();
        DaoUsuarios dao = new DaoUsuarios();
        
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String cedula = request.getParameter("cedula");
        String correo = request.getParameter("correo");
        String clave = request.getParameter("clave");
        String confClave = request.getParameter("confClave");
        
        if(!dao.validarCorreo(correo)){            
           if(clave.equals(confClave)){
                usuario.setNombre(nombre);
                usuario.setApellido(apellido);
                usuario.setCedula(cedula);
                usuario.setCorreo(correo);            
                try {
                    usuario.setClave(Hash.sha256(clave));
                } catch (NoSuchAlgorithmException ex) {
                    System.out.println("Error en el hasheo: " + ex);
                }
                usuario.setRol(Usuario.EMPLEADO);
                int insertado = dao.insertar(usuario);
                if(insertado == 0){
                    response.setStatus(400);
                    response.getWriter().println("Error al insertar el usuario");
                }
            }else{
               response.setStatus(400);
               response.getWriter().println("Las claves deben coincidir"); 
            } 
        }else{
            response.setStatus(400);
            response.getWriter().println("El correo ya existe"); 
        }
        
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
