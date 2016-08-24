<%-- 
    Document   : RegistrarU
    Created on : 14-ago-2016, 2:23:11
    Author     : Cleyber
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link href="css/materialize.min.css" rel="stylesheet" type="text/css"/>     
        <script src="js/jquery-3.0.0.min.js" type="text/javascript"></script>
        <script src="js/materialize.min.js" type="text/javascript"></script>
        <script>
            $(document).ready(function(){                
                $('form').submit(function(evento) {
                 evento.preventDefault();
                });
                
                $("#guardar").click(function(){
                    $.ajax({
                       url: "RegistrarUsuarioServlet",
                       method: "post",
                       data: {
                           nombre: $("#nombre").val(),
                           apellido: $("#apellido").val(),
                           cedula: $("#cedula").val(),
                           correo: $("#correo").val(),
                           clave: $("#clave").val(),
                           confirmar: $("#cclave").val()
                       },
                       success: function(response){
                           alert("Usuario registrado correctamente");
                           $("#nombre").val("");
                            $("#apellido").val("");
                            $("#cedula").val("");
                            $('#correo').val("");                          
                            $('#clave').val("");                           
                            $('#cclave').val("");
                       },
                       error: function(respuesta) {
                           alert(respuesta.responseText);
                       }
                    });
                });
            });
        </script>
        <title>Registro de usuario</title>
    </head>
    <body>
        <header>
            <nav>
                <div class="nav-wrapper blue-grey darken-3">
                    <a href="index.jsp" class="brand-logo"><img src="img/img.png"></a>
                    <div class="container">
                  <ul id="nav-mobile" class="right hide-on-med-and-down">
                    <li><a href="index.jsp">Inicio</a></li>
                    <li><a href="#">Motel</a></li>
                    <li><a href="#">Habitaciones</a></li>
                    <li><a href="#">Reservas</a></li>
                    <li><a href="login.jsp">Ingresar</a></li>
                  </ul>
                    </div>
                </div>
            </nav>    
        </header>
        <main>
            <section class="container">
                <div class="row"> 
                    <h1 class="center-align">Registrate</h1>
                    <form class="col m8 offset-m2 center-align">
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
                            <label for="correo">Correo</label>
                            <input type="email" name="correo" id="correo">
                        </div>
                        <div class="input-field">
                            <label for="clave">Clave</label>
                            <input type="password" name="clave" id="clave">
                        </div>
                        <div class="input-field">
                            <label for="cclave">Confirmar clave</label>
                            <input type="password" name="cclave" id="cclave">
                        </div>
                        <div class="row">
                            <div class="col s6">
                                <button class="btn waves-effect" id="guardar">Guardar</button>
                            </div>
                            <div class="col s6">
                                <a href="index.jsp" id="cancelar" class="btn red waves-effect">Cancelar</a>
                            </div>
                        </div>
                    </form>
                </div>                
            </section>
        </main>
    </body>
</html>
