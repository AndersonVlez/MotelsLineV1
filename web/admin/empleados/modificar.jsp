<%-- 
    Document   : modificar
    Created on : 05-jul-2016, 23:43:24
    Author     : Cleyber
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link href="../../css/style.css" rel="stylesheet" type="text/css"/>
        <link href="../../css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link href="../../css/materialize.min.css" rel="stylesheet" type="text/css"/>        
        <script src="../../js/jquery-3.0.0.min.js" type="text/javascript"></script>
        <script src="../../js/materialize.min.js" type="text/javascript"></script>
        <script>
            $(document).ready(function(){
                $(".button-collapse").sideNav(); 
                $(".dropdown-button").dropdown();
                
                $('form').submit(function(evento) {
                 evento.preventDefault();
                });
                
                $("#guardar").click(function(){
                    $.ajax({
                        url: "../../RegistrarServicioServlet",
                        method: "post",
                        data: {
                            nombre: $('#nombre').val(),
                            precio: $('#precio').val(),
                            descripcion: $('#descripcion').val()                           
                        },
                        success: function(response){
                            alert("Registro exitoso!"); 
                            $("#nombre").val("");
                            $("#precio").val("");
                            $("#descripcion").val("");                            
                        },
                        error: function(){
                            alert("Problema en el servidor");
                        }                        
                    });
                });
            });
        </script>
        <title>Registrar Servicio</title>
    </head>
    <body>
        <%@include file="../menu.jsp" %>
        <main>
            <section class="container">                
                <h1 class="center-align">Registrar servicio</h1>
                    <div class="row">
                        
                        <form class="col m8 offset-m2 center-align">
                            <div class="input-field">
                                <label for="nombre">Nombre</label>
                                <input type="text" name="nombre" id="nombre">
                            </div> 
                            <div class="input-field">
                                <label for="precio">Precio</label>
                                <input type="number" id="precio" name="precio">
                            </div>
                            <div class="input-field">
                                <label for="descripcion">Descripción</label>
                                <textarea id="descripcion" class="materialize-textarea"></textarea>
                            </div>            
                            <div class="file-field input-field">
                                <div class="btn">
                                    <span>Imágen</span>
                                    <input type="file" multiple accept="image/*">
                                </div>
                                <div class="file-path-wrapper">
                                  <input class="file-path validate" type="text" placeholder="Sube una o mas imágenes">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col s6">
                                    <button class="btn waves-effect" id="guardar">Guardar</button>
                                </div>
                                <div class="col s6">
                                    <a href="/Servicios/admin" id="cancelar" class="btn red waves-effect">Cancelar</a>
                                </div>
                            </div>
                        </form>                    
                    </div>                
            </section> 
        </main>
        <%@include file="../footer.jsp" %>
    </body>
</html>
