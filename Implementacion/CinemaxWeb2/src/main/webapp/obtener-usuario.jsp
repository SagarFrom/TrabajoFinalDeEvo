<%-- 
    Document   : obtener-usuario
    Created on : 04/12/2014, 11:16:15 PM
    Author     : Victor Moran
--%>

<%@page import="pe.edu.upc.evolucion.cinemaxcore.base.OperacionEnum"%>
<%@page import="pe.edu.upc.evolucion.cinemaxcore.business.ClienteBusiness"%>
<%@page import="pe.edu.upc.evolucion.cinemaxdac.entity.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
        String mensaje="";
        boolean mostrar = false;
        Cliente producto = null;
        if(request.getParameter("id")!=null){
            try{
                ClienteBusiness pb = ClienteBusiness.obtenerEntidad();
                producto = pb.ejecutar(OperacionEnum.OBTENER, 
                        new Cliente(Integer.parseInt(request.getParameter("id"))));
                mostrar = true;
            }catch(Exception e){
                 /* String[] errores = UtilWeb.getMessageExceptionPrintAop(e,e.getMessage());
                  mensaje = UtilWeb.codigoError(errores[0]);
                  LOG.error(errores[1]);*/
            }
        }
%>
<html>
<head>
<title>Administración de los clientes</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">

<!-- Optional theme -->


<!-- Latest compiled and minified JavaScript -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
	<body>
		<nav class="navbar navbar-default navbar-static-top" role="navigation">
	        <div class="container">
		        <div class="navbar-header">
		          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
		            <span class="sr-only">Toggle navigation</span>
		            <span class="icon-bar"></span>
		            <span class="icon-bar"></span>
		            <span class="icon-bar"></span>
		          </button>
		          <a class="navbar-brand" href="index.html">TB - SI184</a>
		        </div>
		        <div id="navbar" class="navbar-collapse collapse">
		          <ul class="nav navbar-nav">
		            <li class="active"><a href="index.jsp">Inicio</a></li>
		            <li><a href="#">Notificaciones</a></li>
		            <li><a href="#">Tienda</a></li>
		            <li class="dropdown">
		              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Panel de Control<span class="caret"></span></a>
		              <ul class="dropdown-menu" role="menu">
		                <li><a href="admin-usuarios.jsp">Admin-Usuarios</a></li>
		                <%--<li><a href="admin-peliculas.html">Admin-Películas</a></li>
		                <li><a href="buscador-peliculas.html">Buscardor-Peliculas</a></li>
		                <li><a href="#">Admin-Tienda</a></li>
		                <li><a href="#">Admin-Ventas</a></li>--%>
		              </ul>
		            </li>
		          </ul>
		        </div><!--/.nav-collapse -->
	        </div>
    	</nav>
	    <div class="container">

	        <!-- Main component for a primary marketing message or call to action -->
	        <div class="panel panel-default">

	        	<div class="panel-body">
		        	<ul class="nav nav-pills">
					  <li role="presentation" class="active"><a href="admin-usuarios.jsp">Agregar Usuario</a></li>
                                          <li role="presentation"><a href="actua-usuario.jsp">Obtener y Actualizar Usuario</a></li>
					  <li role="presentation"><a href="elimina-usuario.jsp">Eliminar Usuario</a></li>
					</ul>
			        <h1>Actualizar Usuario</h1>
			        <p>Ingrese los datos en el formulario.</p>
                                <form class="form-horizontal"role="form" action="ActualizarUsuario" method="post">
                                    
                                                    <div class="form-group">
							    <label for="Codigo" class="col-sm-2 control-label">Código:</label>
							    <div class="col-sm-4">
                                                                <input type="text" class="form-control" id="nombre" name="txtCodigo" value="<%= request.getParameter("id") %>">
							    </div>
						    </div>
                                                    <div class="form-group">
							    <label for="Nombre" class="col-sm-2 control-label">Nombres:</label>
							    <div class="col-sm-4">
                                                                <input type="text" class="form-control" id="nombre" name="txtNombre" value="<%= producto.getNombre() %>">
							    </div>
                                                    </div>
                                                    <div class="form-group">
							    <label for="Tipo" class="col-sm-2 control-label">Tipo:</label>
							    <div class="col-sm-4">
                                                                <input type="text" class="form-control" id="nombre" name="txtTipo" value="<%= producto.getTipo() %>">
							    </div>
                                                    </div>
                                                    <div class="form-group">
							    <label for="password" class="col-sm-2 control-label">Contraseña:</label>
							    <div class="col-sm-4">
                                                                <input type="password" class="form-control" id="contrasenia1" name="txtCon1" value="<%= producto.getContrasenia()%>">
							    </div>
						    </div>
						    <div class="form-group">
							    <label for="password" class="col-sm-2 control-label">Contraseña</label>
							    <div class="col-sm-4">
                                                                <input type="password" class="form-control" id="contrasenia2" name="txtCon2" value="<%= producto.getContrasenia()%>">
							    </div>
						    </div>
						  <button type="submit" class="btn btn-default">Actualizar</button>
					</form>
				</div>
	        </div>

	    </div>
	</body>
</html>

