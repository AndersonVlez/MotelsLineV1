<%-- 
    Document   : eliminarYactualizar
    Created on : 04-jul-2016, 14:23:02
    Author     : Anderson Velez
--%>



<%@page import="models.dao.DaoHabitaciones"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  import="models.Habitaciones"%>
<%@page  import="java.util.ArrayList"%>
<%@page  import="java.util.List"%>

<%
    ArrayList<Habitaciones> list = new ArrayList();
    DaoHabitaciones dao = new DaoHabitaciones();    
    
    list = dao.consultarAll();
%>
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
        <script src="../../js/sweetalert.min.js" type="text/javascript"></script>
        <link href="../../css/sweetalert.css" rel="stylesheet" type="text/css"/>
        <title>Eliminar Habitacion</title>
        <script>
            $(document).ready(function(){
                $(".button-collapse").sideNav(); 
                $(".dropdown-button").dropdown();
            });
            function eliminar(id){   
                swal({
                   title: "Eliminar",
                   text: "¿Esta seguro que desea eliminar la habitacion?",
                   type: "warning",
                   allowOutsideClick: true,
                   showCancelButton: true,
                   confirmButtonText: "Eliminar",
                   confirmButtonColor: "#f44336",
                   cancelButtonText: "Cancelar",
                   closeOnConfirm: false,
                   showLoaderOnConfirm: true
                }, function(){
                    $.ajax({
                        url: "../../EliminarHabitacionServlet",
                        method: "post",
                        data:{
                            id: id
                        },
                        success: function(){
                            swal("Eliminado","Habitación eliminadas correcatamente", "success");
                            $("#" + id).remove();
                        },
                        error: function(respuesta){
                            swal("Error", respuesta.responseText, "error");
                        }
                   });
                });
            }
            
        </script>
    </head>
    <body>
        <%@include file="../menu.jsp" %>
        <main>
            <section class="container">            
                <table class="striped centered">
                    <thead>
                        <tr>
                            <th>Nombre</th>
                            <th>Numero de habitacion</th>
                            <th>Descripción</th>
                            <th>Precio</th>
                            <th>cantidad de horas</th>
                            <th>hora adicional</th>
                            <th>Persona adicional</th>
                            <th>Actualizar</th>
                            <th>Eliminar</th>

                        </tr>
                    </thead>
                    <tbody>
                        <%
                            for(int i = 0; i < list.size(); i++){
                        %>
                        <tr id="<%= list.get(i).getId()%>">
                            <td><%= list.get(i).getNombre()%></td>
                            <td><%= list.get(i).getCantidad()%></td>
                            <td><%= list.get(i).getDescripcion()%></td>
                            <td><%= list.get(i).getPrecio()%></td>
                            <td><%= list.get(i).getCantidadHoras()%></td>
                            <td><%= list.get(i).getHoraAdicional()%></td>
                            <td><%= list.get(i).getPersonaAdicional()%></td>
                            <td><a href="actualizar.jsp?habitacion=<%= list.get(i).getId()%>" class="btn waves-effect teal lighten-1"><i class="fa fa-pencil-square-o"></i></a></td>
                            <td><button onclick="eliminar(<%= list.get(i).getId()%>)" class="btn waves-effect red"><i class="fa fa-trash-o"></i></button></td>                        
                        </tr>
                        <%
                            }
                        %>
                    </tbody>
                </table>
            </section>
        </main>
    </body>
    <%@include file="../footer.jsp" %>
</html>
