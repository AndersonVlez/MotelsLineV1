<%-- 
    Document   : eliminar
    Created on : 03-jul-2016, 20:22:57
    Author     : Cleyber
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link href="../../css/materialize.min.css" rel="stylesheet" type="text/css"/> 
        <link href="../../css/style.css" rel="stylesheet" type="text/css"/>
        <link href="../../css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <script src="../../js/jquery-3.0.0.min.js" type="text/javascript"></script>
        <script src="../../js/materialize.min.js" type="text/javascript"></script>
        <title>Eliminar Servicio</title>
        <script>
            $(document).ready(function(){
                $(".button-collapse").sideNav(); 
                $(".dropdown-button").dropdown();
                
                $('form').submit(function(evento) {
                 evento.preventDefault();
                });
                
                $("#aceptar").click(function(){
                    $.ajax({
                        url: "../../EliminarServicioServlet",
                        method: "post",
                        data: {
                            nombre: $('#nombre').val()                          
                        },
                        success: function(response){
                            alert("Servicio eliminado"); 
                            $("#nombre").val("");                                                       
                        },
                        error: function(){
                            alert("¡Problema en el servidor!");
                            $("#nombre").val("");
                        }                        
                    });
                });
            });
        </script>
    </head>
    <body>
        <%@include file="../menu.jsp" %>
        <main>
            <section class="container">
                <h1 class="center-align">Eliminar servicio</h1>
                <article>
                    <h4 class="center-align">Para eliminar un servicio debe ingresar su nombre exacto.</h4> 
                </article>
                <div class="row">
                    <form class="col m8 offset-m2 center-align" id="form-eliminar">
                        <div class="input-field">
                            <label for="nombre">Nombre</label>
                            <input type="text" class="validate" name="nombre" id="nombre">
                        </div>
                        <div class="row">
                            <div class="col s6">
                                <button class="btn waves-effect btn-style" id="aceptar">Aceptar</button>
                            </div>
                            <div class="col s6">
                                <a href="/Servicios/admin" id="cancelar" class="btn red waves-effect btn-style">Cancelar</a>
                            </div>
                       </div>
                    </form>
                </div>
            </section>            
        </main>
        <%@include file="../footer.jsp" %>
    </body>
</html>
