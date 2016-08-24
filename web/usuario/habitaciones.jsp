<%-- 
    Document   : index
    Created on : 15-jun-2016, 22:16:06
    Author     : Anderson Velez
--%>
<%@page import="models.dao.DaoHabitaciones"%>
<%@page import="models.Habitaciones"%>
<%@page import="models.Imagen"%>
<%@page import="java.util.ArrayList"%>
<%
    ArrayList<Habitaciones> list = new ArrayList();
    DaoHabitaciones dao = new DaoHabitaciones();
    
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
        
        <script src="../js/jquery-3.0.0.min.js" type="text/javascript"></script>
        <script src="../js/materialize.min.js" type="text/javascript"></script>
        <script>
            $(document).ready(function(){
               $(".button-collapse").sideNav();
               $('.slider').slider({full_width: true});
            });
            
        </script>
        <style>
            ul li{
                float: left;
                margin: 3px;
            }
            h1 {
            font-family: fantasy;
            color: #e53935;
            }
            .material-icons.md-36 a{
                font-size: 36px;
                position: absolute;
                top: 27%;
                left: 85%;
            }
           
        </style>
        <title>Habitaciones</title>
    </head>
    <body>
        <header>
            <header>
            <nav>
                <div class="nav-wrapper blue-grey darken-3">
                     <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">menu</i></a>
                     <a href="../index.jsp"> <img src="../img/img.png" class="brand-logo"></a>
                    <div class="container">
                        <ul class="right hide-on-med-and-down ">
                            <li class="active"><a href="habitaciones.jsp">Habitaciones</a></li>
                            <li><a href="servicios.jsp">Servicios</a></li>
                            <li><a href="#">Reservas</a></li>
                            <li><a href="../login.jsp">Admin</a></li>
                        </ul>
                       
                        <ul id="mobile-demo" class="side-nav">
                            <li class="active"><a href="habitaciones.jsp">Habitaciones</a></li>
                            <li><a href="servicios.jsp">Servicios</a></li>
                            <li><a href="#">Reservas</a></li>
                            <li><a href="../login.jsp">Admin</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
        </header>
        
        
        <div class="slider">
    <ul class="slides">
      <li>
        <img src="/MotelsLine/img/img1.jpg"> <!-- random image -->
        <div class="caption center-align">
          <h3>Bienvenido a MotelsLine</h3>
          <h5 class="light grey-text text-lighten-3">La forma mas fácil de reservar un motel</h5>
        </div>
      </li>
      <li>
        <img src="/MotelsLine/img/img2.jpg"> <!-- random image -->
        <div class="caption left-align">
          <h3>Elige las mejores habitaciones</h3>
          <h5 class="light grey-text text-lighten-3">Hay para todos los gustos</h5>
        </div>
      </li>
      <li>
        <img src="/MotelsLine/img/img3.jpg"> <!-- random image -->
        <div class="caption right-align">
          <h3>Elige los servicios que quieras</h3>
          <h5 class="light grey-text text-lighten-3">A los mejores precios</h5>
        </div>
      </li>
      <li>
        <img src="/MotelsLine/img/img4.jpg"> <!-- random image -->
        <div class="caption center-align">
          <h3>has tu mejor reserva</h3>
          <h5 class="light grey-text text-lighten-3"> En simples pasos</h5>
        </div>
      </li>
      <li>
        <img src="/MotelsLine/img/slider.jpg"> <!-- random image -->
        <div class="caption right-align">
          <h3>MotelsLine</h3>
          <h5 class="light grey-text text-lighten-3"></h5>
        </div>
      </li>
    </ul>
  </div>


        <main>
            <section class="container">
                <h1 class="center-align">HABITACIÓNES</h1>
              <!--  <img src="img/HABITACIONES.png">-->
              <div class="divider"></div>
                <div class="row">
                <%
                    for(Habitaciones habitacion  : list){
                %>
                    <div class=" col s12 m4">
                        <div class="card">
                            <div class="card-image">
                                <%
                                   if(habitacion.getImagenes().size() >= 1){ 
                                %>
                                <div class="slider">
                                    <ul class="slides">
                                        <%
                                            
                                                for(Imagen imagen : habitacion.getImagenes()){

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
                                 <a href="#"><h5 class="center-align"><b><%= habitacion.getNombre()%></b></h5></a>                                
                            </div>
                            <div class="card-content"> 
                                <p><b>Número de habitacion:</b> <%= habitacion.getCantidad()%></p>
                                <p><b>Descripcion:</b> <%= habitacion.getDescripcion()%></p>
                                <p><b>Precio:</b><%= habitacion.getPrecio()%></p>
                                <p><b>Cantidad de horas:</b> <%= habitacion.getCantidadHoras()%></p>
                                <p><b>Hora adicional</b><%= habitacion.getHoraAdicional()%></p>
                                <p><b>Persona adicional</b><%= habitacion.getPersonaAdicional()%></p>
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
                  <h5 class="white-text">Contactenos</h5>
                  <ul>
                      <li><a class="grey-text text-lighten-3" href="#!"><img src="../img/icons/f2.png"></a></li>
                      <li><a class="grey-text text-lighten-3" href="#!"><img src="../img/icons/twitter.png"></a></li>
                      <li><a class="grey-text text-lighten-3" href="#!"><img src="../img/icons/youtube.png"></a></li>
                      <li><a class="grey-text text-lighten-3" href="#!"><img src="../img/icons/google.png"></a></li>
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
