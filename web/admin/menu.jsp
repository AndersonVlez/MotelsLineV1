<header>            
    <nav>
        <div class="nav-wrapper black lighten-1">
            <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">menu</i></a>
            <img src="/MotelsLineV1/img/img.png" class="brand-logo">
            <div class="container">
                
                <!-- Men� escritorio-->
                <ul class="right hide-on-med-and-down"> 
                    <!-- Habitaciones-->
                    <li class="menu-habitaciones">                        
                        <a href="#!" class="dropdown-button" data-activates="dropdown-habitaciones" ><i class="fa fa-bed "></i> Habitaciones<i class="material-icons right">arrow_drop_down</i></a>                                
                        <ul id="dropdown-habitaciones" class="dropdown-content">
                            <li><a href="/MotelsLineV1/admin/habitaciones/registrar.jsp"><i class="fa fa-plus"></i> Registrar</a></li>
                            <li><a href="/MotelsLineV1/usuario/habitaciones.jsp"><i class="fa fa-list"></i> Listar</a></li>
                            <li><a href="/MotelsLineV1/admin/habitaciones/eliminarYactualizar.jsp"><i class="fa fa-pencil-square-o"></i> Modificar</a></li>
                            <li><a href="/MotelsLineV1/admin/habitaciones/eliminar.jsp"><i class="fa fa-trash-o "></i> Eliminar</a></li>
                        </ul>
                    </li>
                    <!-- Servicios--> 
                    <li class="menu-servicios">                        
                        <a href="#!" class="dropdown-button" data-activates="dropdown-servicios" ><i class="fa fa-shopping-cart "></i> Servicios<i class="material-icons right">arrow_drop_down</i></a>                                
                        <ul id="dropdown-servicios" class="dropdown-content">
                            <li><a href="/MotelsLineV1/admin/servicios/registrar.jsp"><i class="fa fa-plus"></i> Registrar</a></li>
                            <li><a href="/MotelsLineV1/admin/"><i class="fa fa-list"></i> Listar</a></li>                            
                            <li><a href="/MotelsLineV1/admin/servicios/eliminar.jsp"><i class="fa fa-trash-o "></i> Eliminar</a></li>
                            <li><a href="/MotelsLineV1/admin/servicios/eliminart.jsp"><i class="fa fa-pencil-square-o"></i> Modificar y <i class="fa fa-trash-o "></i> Eliminar</a></li>
                            <li><a href="/MotelsLineV1/reporte.jsp" target="_blank"><i class="fa fa-file-pdf-o" ></i> Reporte</a></li>
                        </ul>
                    </li>
                    <!-- Reservas-->
                    <li class="menu-reservas"><a href="#"><i class="fa fa-bell"></i> Reservas</a></li>
                    <!-- Empleados-->
                    <li class="menu-empleados">
                        <a href="#" class="dropdown-button" data-activates="dropdown-empleados"><i class="fa fa-users"></i> Empleados<i class="material-icons right">arrow_drop_down</i></a>
                        <ul id="dropdown-empleados" class="dropdown-content">
                            <li><a href="/MotelsLineV1/admin/empleados/registrar.jsp"><i class="fa fa-plus"></i> Registrar</a></li>
                            <li><a href="/MotelsLineV1/admin/index.jsp"><i class="fa fa-list"></i> Listar</a></li>
                            <li><a href="/MotelsLineV1/admin/empleados/modificar.jsp"><i class="fa fa-pencil-square-o"></i> Modificar</a></li>
                            <li><a href="/MotelsLineV1/admin/empleados/eliminar.jsp"><i class="fa fa-trash-o "></i> Eliminar</a></li>
                            <li><a href="/MotelsLineV1/admin/empleados/reporte.jsp" target="_blank"><i class="fa fa-file-pdf-o" ></i> Reporte</a></li>
                        </ul>
                    </li>
                    <li><a href="/MotelsLineV1/LogoutServlet"><i class="fa fa-sign-out "></i> Salir</a></li>
                </ul>
                
                <!-- Menu movil-->
                <ul id="mobile-demo" class="side-nav">
                    <!-- Habitaciones-->
                    <li class="menu-habitaciones">                        
                        <a href="#!" class="dropdown-button" data-activates="dropdown-habitaciones-mobile" ><i class="fa fa-bed "></i> Habitaciones<i class="material-icons right">arrow_drop_down</i></a>                                
                        <ul id="dropdown-habitaciones" class="dropdown-content">
                            <li><a href="/MotelsLineV1/admin/habitaciones/registrar.jsp"><i class="fa fa-plus"></i> Registrar</a></li>
                            <li><a href="/MotelsLineV1/usuario/habitaciones.jsp"><i class="fa fa-list"></i> Listar</a></li>
                            <li><a href="/MotelsLineV1/admin/habitaciones/eliminarYactualizar.jsp"><i class="fa fa-pencil-square-o"></i> Modificar</a></li>
                            <li><a href="/MotelsLineV1/admin/habitaciones/eliminar.jsp"><i class="fa fa-trash-o "></i> Eliminar</a></li>
                        </ul>
                    </li>
                    <!-- Servicios-->
                    <li class="menu-servicios">
                        <a href="#!" class="dropdown-button" data-activates="dropdown-servicios-mobile" ><i class="fa fa-shopping-cart "></i> Servicios<i class="material-icons right">arrow_drop_down</i></a>
                        <ul id="dropdown-servicios-mobile" class="dropdown-content">
                            <li><a href="/MotelsLineV1/admin/servicios/registrar.jsp"><i class="fa fa-plus"></i> Registrar</a></li>
                            <li><a href="/MotelsLineV1/admin/index.jsp"><i class="fa fa-list"></i> Listar</a></li>
                            <li><a href="/MotelsLineV1/admin/servicios/modificar.jsp"><i class="fa fa-pencil-square-o"></i> Modificar</a></li>
                            <li><a href="/MotelsLineV1/admin/servicios/eliminar.jsp"><i class="fa fa-trash-o "></i> Eliminar</a></li>
                            <li><a href="/MotelsLineV1/admin/servicios/eliminart.jsp"><i class="fa fa-pencil-square-o"></i> Modificar y <i class="fa fa-trash-o "></i> Eliminar</a></li>
                            <li><a href="/MotelsLineV1/admin/servicios/reporte.jsp" target="_blank"><i class="fa fa-file-pdf-o" ></i> Reporte</a></li>
                        </ul>
                    </li>
                    <!-- Reservas-->
                    <li class="menu-reservas"><a href="#"><i class="fa fa-bell"></i> Reservas</a></li> 
                    <!-- Empleados-->
                    <li class="menu-empleados">
                        <a href="#" class="dropdown-button" data-activates="dropdown-empleados-mobile"><i class="fa fa-users"></i> Empleados<i class="material-icons right">arrow_drop_down</i></a>
                        <ul id="dropdown-empleados-mobile" class="dropdown-content">
                            <li><a href="/MotelsLineV1/admin/empleados/registrar.jsp"><i class="fa fa-plus"></i> Registrar</a></li>
                            <li><a href="/MotelsLineV1/admin/index.jsp"><i class="fa fa-list"></i> Listar</a></li>
                            <li><a href="/MotelsLineV1/admin/empleados/modificar.jsp"><i class="fa fa-pencil-square-o"></i> Modificar</a></li>
                            <li><a href="/MotelsLineV1/admin/empleados/eliminar.jsp"><i class="fa fa-trash-o "></i> Eliminar</a></li>
                            <li><a href="/MotelsLineV1/admin/empleados/reporte.jsp" target="_blank"><i class="fa fa-file-pdf-o" ></i> Reporte</a></li>
                        </ul>
                    </li>
                    <li><a href="/MotelsLineV1/LogoutServlet"><i class="fa fa-sign-out "></i> Salir</a></li>
                </ul>
            </div>
        </div>
    </nav>            
</header>




