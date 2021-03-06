<%-- 
    Document   : index
    Created on : 15-jun-2016, 22:16:06
    Author     : Cleyber
--%>
<%@page import="models.Imagen"%>
<%@page import="models.dao.DaoServicios"%>
<%@page import="java.util.ArrayList"%>
<%@page import="models.Servicios"%>
<%
    ArrayList<Servicios> list = new ArrayList();
    DaoServicios dao = new DaoServicios();
    
    list = dao.consultarAll();
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <link href="../css/materialize.min.css" rel="stylesheet" type="text/css"/>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link href="../css/style.css" rel="stylesheet" type="text/css"/>
        <style>
            ul li{
                float: left;
                margin: 3px;
            }   
           
        </style>
        <script src="../js/jquery-3.0.0.min.js" type="text/javascript"></script>
        <script src="../js/materialize.min.js" type="text/javascript"></script>
        <script>
            $(document).ready(function(){
               $(".button-collapse").sideNav();
               $('.slider').slider({full_width: true});
            });
            
        </script>
        <title>Servicios</title>
    </head>
    <body>
        <main>
        <header>
            <nav>
                <div class="nav-wrapper blue-grey darken-3">
                     <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">menu</i></a>
                     <a href="../index.jsp"><img src="../img/img.png" class="brand-logo"></a>
                    <div class="container">
                        <ul class="right hide-on-med-and-down ">
                            <li><a href="habitaciones.jsp">Habitaciones</a></li>
                            <li class="active"><a href="servicios.jsp">Servicios</a></li>
                            <li><a href="#">Reservas</a></li>
                            <li><a href="../login.jsp">Admin</a></li>
                        </ul>
                        <ul id="mobile-demo" class="side-nav">
                            <li><a href="habitaciones.jsp">Habitaciones</a></li>
                            <li class="active"><a href="servicios.jsp">Servicios</a></li>
                            <li><a href="#">Reservas</a></li>
                            <li><a href="../login.jsp">Admin</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
        </header>
        
            <section class="container">
                
                <h1>Servicios especiales</h1>
                <div class="row">
                <%
                    for(Servicios servicio  : list){
                %>
                    <div class=" col s12 m4">
                        <div class="card">
                            <div class="card-image">
                                <%
                                   if(servicio.getImagenes().size() >= 1){ 
                                %>
                                <div class="slider">
                                    <ul class="slides">
                                        <%
                                            
                                                for(Imagen imagen : servicio.getImagenes()){

                                         %>
                                      <li>
                                        <img src="/MotelsLineV1/imgServidor/<%=imagen.getNombre()%>">   
                                      </li>
                                      <%
                                            }
                                        %> 
                                    </ul>              
                                </div>
                                 <%
                                     }else{
                                 %>
                                 <div>
                                     <img src="/MotelsLineV1/img/notImg.png">
                                 </div>
                                 <%
                                     }
                                 %>
                                <span><%= servicio.getNombre()%></span>                                
                            </div>
                            <div class="card-content"> 
                                <p><%= servicio.getPrecio()%></p>
                            </div>
                            <div class="card-action">
                                <a href="#"><%= servicio.getDescripcion()%></a>
                            </div>
                        </div>
                    </div>              
                <%
                    }

                %>
                </div>
                
                
            </section>
        
        </main>
        <footer class="page-footer blue-grey darken-3">
            <div class="container">
              <div class="row">
                <div class="col l6 s12">
                  <h5 class="white-text">MotelsLine</h5>
                  <p class="grey-text text-lighten-4">Dirección: </p>
                </div>
                <div class="col l4 offset-l2 s12">
                  <h5 class="white-text">Redes sociales</h5>
                  <ul>
                      <li><a class="grey-text text-lighten-3" href="#!"><img src="../img/icons/f2.png"></a></li>
                      <li><a class="grey-text text-lighten-3" href="#!"><img src="../img/icons/twitter.png"></a></li>
                      <li><a class="grey-text text-lighten-3" href="#!"><img src="../img/icons/youtube.png"></a></li>
                      <li><a class="grey-text text-lighten-3" href="#!"><img src="../img/icons/google.png"></a></li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="footer-copyright blue-grey darken-4">
              <div class="container">
              © 2016 Copyright MotelsLine
              <a class="grey-text text-lighten-4 right" href="#!">More Links</a>
              </div>
            </div>
        </footer>
    </body>
</html>
