/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.security.NoSuchAlgorithmException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.Motel;
import models.Usuario;
import models.dao.DaoMotel;
import models.dao.DaoUsuarios;
import org.json.*;
import util.Hash;

/**
 *
 * @author Cleyber
 */
public class RegistrarAdminServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
           JSONObject adminJson = new JSONObject(request.getParameter("admin"));
           JSONObject motelJson = new JSONObject(request.getParameter("motel"));
           
           Usuario admin = new Usuario();
           Motel motel = new Motel();
           
           motel.setNombre(motelJson.getString("nombre"));
           motel.setDireccion(motelJson.getString("direccion"));
           motel.setCorreo(motelJson.getString("correo"));
           motel.setTelefono(motelJson.getString("telefono"));
           
           DaoMotel daoMotel = new DaoMotel();
           int id = daoMotel.registrar(motel);
           
           System.out.println(id);
           
           
           String clave = adminJson.getString("clave");
           String confirmar = adminJson.getString("confirmar");
           
           if(clave.equals(confirmar)){         
                
               
                admin.setNombre(adminJson.getString("nombre"));
                admin.setApellido(adminJson.getString("apellido"));
                admin.setCedula(adminJson.getString("cedula"));
                admin.setCorreo(adminJson.getString("correo"));
                admin.setRol(Usuario.ADMINISTRADOR);
                try {
                    admin.setClave(Hash.sha256(clave));
                } catch (NoSuchAlgorithmException ex) {
                    System.out.println("Error en Hash");
                }
                DaoUsuarios daoUser = new DaoUsuarios();
                int insertado = daoUser.insertar(admin);
                if(insertado == 0){
                    response.setStatus(500);
                    response.getWriter().println("Error en el servidor");
                }
           }else{           
               response.setStatus(400);
               response.getWriter().println("Error en clave");
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
