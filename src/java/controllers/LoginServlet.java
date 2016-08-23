/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import models.Usuario;
import models.dao.DaoUsuarios;

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
        
        if(!correo.isEmpty()){
            if(!clave.isEmpty()){
                usuario.setCorreo(correo);
                usuario.setClave(clave);
                boolean resultado = dao.login(usuario);

                if(resultado){
                    HttpSession session = request.getSession();
                    session.setAttribute("correo", correo); 
                    response.sendRedirect("admin/");
                }else{
                    response.sendRedirect("login.jsp");
                }
            }else{
                System.out.println("Debe ingresar una contraseña");
            }
        }else{
            System.out.println("Debe ingresar un Correo");
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
