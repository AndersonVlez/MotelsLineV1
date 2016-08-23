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
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
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
                <div class="nav-wrapper teal lighten-1">
                     <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">menu</i></a>
                    <img src="img/img.png" class="brand-logo">
                    <div class="container">
                        <ul class="right hide-on-med-and-down ">
                            <li><a href="#">Habitaciones</a></li>
                            <li><a href="index.jsp">Servicios</a></li>
                            <li><a href="#">Reservas</a></li>
                            <li class="active"><a href="login.jsp">Inicia sesión</a></li>
                            <li><a href="/Servicios/admin">Admin</a></li>
                        </ul>
                        <ul id="mobile-demo" class="side-nav">
                            <li><a href="#">Habitaciones</a></li>
                            <li><a href="index.jsp">Servicios</a></li>
                            <li><a href="#">Reservas</a></li>
                            <li class="active"><a href="login.jsp">Inicia sesión</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
        </header>
        <main>
            <div class="container">
                <div class="row">                    
                    <div class="col m6">
                        <h3 class="center-align">Registrate</h3>
                        <form class="col s12" method="post" action="RegistrarServlet">
                            <div class="input-field">
                                <label for="nombre">Nombre</label>
                                <input type="text" name="nombre" id="nombre">
                            </div>
                            <div class="input-field">
                                <label for="apellido">Apellido</label>
                                <input type="text" name="apellido" id="apellido">
                            </div>
                            <div class="input-field">
                                <label for="cedula">Cedula</label>
                                <input type="number" name="cedula" id="cedula">
                            </div>
                            <div class="input-field">
                                <label for="correor">Correo</label>
                                <input type="email" name="correor" id="correor">
                            </div>
                            <div class="input-field">
                                <label for="claver">Clave</label>
                                <input type="password" name="claver" id="claver">
                            </div>
                            <div class="input-field">
                                <label for="cclave">Confirmar clave</label>
                                <input type="password" name="cclave" id="cclave">
                            </div>
                            <div>
                                <input type="submit" value="Guardar" class="btn  waves-effect waves-light">
                                <input type="reset" value="Cancelar" class="btn  waves-effect waves-light red">
                            </div>
                        </form>
                    </div>
                    <div class="col m6">
                        <h3 class="center-align">Inicio de Sesión</h3>
                        <div class="row">
                            <form class="col s12" method="post" action="LoginServlet">
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
                                <div class="divider"></div>
                                    <div class="row">
                                        <div class="col m12">
                                        <p class="right-align">
                                            <button class="btn btn-large waves-effect waves-light" type="ingresar" name="ingresar">Ingresar</button>
                                        </p>
                                </div>
                            </div> 
                            </form>
                        </div>                      
                    </div> 
                    </div>

                    </div>
                </div>           
        </main> 
    </body>
</html>
