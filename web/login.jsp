<%-- 
    Document   : login
    Created on : 22-jun-2016, 18:45:50
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
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">        
        <script src="js/jquery-3.0.0.min.js" type="text/javascript"></script>
        <script src="js/materialize.min.js" type="text/javascript"></script>
        <script>
            $(document).ready(function(){                
                $(".button-collapse").sideNav();
                $(".dropdown-button").dropdown();
            });
        </script>
        
        
        <title>Inicio de sesión</title>
    </head>
    <body> 
        <header>
            <nav>
                <div class="nav-wrapper red">
                    <a href="index.jsp" class="brand-logo"><img src="img/img.png"></a>
                  <ul id="nav-mobile" class="right hide-on-med-and-down">
                    <li><a href="index.jsp">Inicio</a></li>
                    <li><a href="#">Motel</a></li>
                    <li><a href="#">Habitaciones</a></li>
                    <li><a href="#">Reservas</a></li>
                    <li class="active"><a href="login.jsp">Ingresar</a></li>
                  </ul>
                </div>
            </nav>    
        </header>
        <main>
            <div class="container">                
                <div class="row">
                    <h1 class="center-align">Inicio de Sesión</h1>
                    <div class="row">
                        <form class="col m8 offset-m2 center-align" method="post" action="LoginServlet">
                            <div class="row">
                                <div class="input-field col s12">
                                    <i class="material-icons prefix">perm_identity</i>
                                    <label for="correo">Correo</label>
                                    <input type="email" name="correo" id="correo" class="validate">
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field col s12">
                                    <i class="material-icons prefix">vpn_key</i>
                                    <label for="clave">Clave</label>
                                    <input type="password" name="clave" id="clave" class="validate">
                                </div> 
                            </div>
                            <div class="row">
                                <div class="col s12">
                                <p>                                        
                                    <input type="checkbox" id="recuerdame">
                                    <label for="recuerdame">Recuerdame</label>
                                </p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col s6">
                                    <button class="btn waves-effect btn-empl" id="guardar">Guardar</button>
                                </div>
                                <div class="col s6">
                                    <a href="/MotelsLineV1/admin" id="cancelar" class="btn red waves-effect btn-empl">Cancelar</a>
                                </div>
                            </div>
                            <div class="btn-empl">
                                <a href="/MotelsLineV1/registrar.jsp" >¿No tienes cuenta? Registrate!</a>
                            </div>
                        </form>
                    </div>                      
                </div> 
            </div>                             
        </main> 
    </body>
</html>
