<%-- 
    Document   : index
    Created on : 14-ago-2016, 2:03:08
    Author     : Cleyber
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <link href="css/materialize.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <script src="js/jquery-3.0.0.min.js" type="text/javascript"></script>
        <script src="js/materialize.min.js" type="text/javascript"></script>
        <title>Inicio</title>
        <script>
            $(document).ready(function(){
               $(".button-collapse").sideNav();
               $('.slider').slider({full_width: true});
            });
            
        </script>
    </head>
    <body>
        <main>
        <header>
            <nav>
                <div class="nav-wrapper blue-grey darken-3">
                    <a href="index.jsp" class="brand-logo"><img src="img/img.png"></a>
                    <div class="container">
                        <ul id="nav-mobile" class="right hide-on-med-and-down">
                           <li class="active"><a href="index.jsp">guerri</a></li>
                           <li><a href="#">Motel</a></li>
                           <li><a href="usuario/habitaciones.jsp">Habitaciones</a></li>
                           <li><a href="#">Reservas</a></li>
                           <li><a href="login.jsp">Ingresar</a></li>
                        </ul>
                    </div>
                </div>
            </nav>    
        </header>
        <div class="slider">
    <ul class="slides">
      <li>
          <img src="/MotelsLineV1/img/motelsline.jpg"/>        
        <div class="caption center-align">
          <h3>Bienvenido a MotelsLine</h3>
          <h5 class="light grey-text text-lighten-3">La forma mas fácil de reservar un motel</h5>
        </div>
      </li>
      <li>
        <img src="/MotelsLineV1/img/habitaciones1.jpg">
        <div class="caption left-align">
          <h3>Elige las mejores habitaciones</h3>
          <h5 class="light grey-text text-lighten-3">Hay para todos los gustos</h5>
        </div>
      </li>
      <li>
        <img src="/MotelsLineV1/img/decorada.png"> 
        <div class="caption right-align">
          <h3>Elige los servicios que quieras</h3>
          <h5 class="light grey-text text-lighten-3">A los mejores precios</h5>
        </div>
      </li>
      </ul>
        </div>
        </main>
        <%@include file="admin/footer.jsp" %>
    </body>
</html>