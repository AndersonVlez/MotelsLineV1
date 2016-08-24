/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.security.NoSuchAlgorithmException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.Usuario;
import models.dao.DaoUsuarios;
import util.Hash;

/**
 *
 * @author Cleyber
 */
public class RegistrarUsuarioServlet extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
        }
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
            String nombre = request.getParameter("nombre");
            String apellido = request.getParameter("apellido");
            String cedula = request.getParameter("cedula");
            String correo = request.getParameter("correo");
            String clave = request.getParameter("clave");
            String confirmar = request.getParameter("confirmar");
            
            Usuario usuario = new Usuario();
            DaoUsuarios dao = new DaoUsuarios();
            
            if(!nombre.isEmpty() && !apellido.isEmpty() && !cedula.isEmpty() && !correo.isEmpty() && !clave.isEmpty() && !confirmar.isEmpty()){                
                if(!dao.validarCorreo(correo)){
                    if(clave.equals(confirmar)){
                         usuario.setNombre(nombre);
                         usuario.setApellido(apellido);
                         usuario.setCedula(cedula);
                         usuario.setCorreo(correo);            
                         try {
                             usuario.setClave(Hash.sha256(clave));
                         } catch (NoSuchAlgorithmException ex) {
                             System.out.println("Error en el hasheo: " + ex);
                         }
                         usuario.setRol(Usuario.CLIENTE);
                         int insertado = dao.insertar(usuario);
                         if(insertado == 0){
                             response.setStatus(500);
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
            }else{
                response.setStatus(400);
                response.getWriter().println("Todos los campos son obligatorios");
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
