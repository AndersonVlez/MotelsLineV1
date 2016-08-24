/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import models.Usuario;
import models.dao.DaoUsuarios;
import util.Hash;

/**
 *
 * @author Cleyber
 */
public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        Usuario usuario = new Usuario();
            DaoUsuarios dao = new DaoUsuarios();
            String correo = request.getParameter("correo");
            String clave = request.getParameter("clave");
            
            if(!correo.isEmpty() && !clave.isEmpty()){
                usuario.setCorreo(correo);
                try {                
                    usuario.setClave(Hash.sha256(clave));
                } catch (NoSuchAlgorithmException ex) {
                    System.out.println("Error en hasheo" + ex);
                }
                usuario = dao.login(usuario);
                
                if(usuario != null){
                    HttpSession session = request.getSession();
                    usuario.setClave("");
                    session.setAttribute("usuario", usuario);
                    
                    if(usuario.getRol().equals(Usuario.ADMINISTRADOR)){

                        response.sendRedirect("/MotelsLineV1/admin");
                    }else if(usuario.getRol().equals(Usuario.EMPLEADO)){
                        response.sendRedirect("/MotelsLineV1/empleados/modificar.jsp");
                    }else if(usuario.getRol().equals(Usuario.CLIENTE)){

                        response.sendRedirect("/MotelsLineV1/admin/index.jsp");
                    }else if(usuario.getRol().equals(Usuario.EMPLEADO)){
                        response.sendRedirect("/MotelsLineV1/empleado/consultar.jsp");
                    }else if(usuario.getRol().equals(Usuario.CLIENTE)){
                        response.sendRedirect("/MotelsLineV1/reserva.jsp");

                    }
                }else{
                    response.getWriter().println("no se pudo");
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
