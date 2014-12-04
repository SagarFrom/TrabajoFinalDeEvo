<%-- 
    Document   : admin-usuarios
    Created on : 04/12/2014, 01:36:09 AM
    Author     : Victor Moran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
					  <li role="presentation"><a href="#">Actualizar Usuario</a></li>
					  <li role="presentation"><a href="#">Eliminar Usuario</a></li>
					</ul>
			        <h1>Agregar Usuario</h1>
			        <p>Ingrese los datos en el formulario.</p>
                                <form class="form-horizontal"role="form" action="Controlador" method="post">
						    <div class="form-group">
							    <label for="Nombre" class="col-sm-2 control-label">Nombres:</label>
							    <div class="col-sm-4">
							    	<input type="text" class="form-control" id="nombre" placeholder="Ingrese el nombre">
							    </div>
						    </div>
						    <div class="form-group">
							    <label for="Tipo" class="col-sm-2 control-label">Tipo de usuario:</label>
							    <div class="col-sm-4">
							    	<input type="text" class="form-control" id="tipo" placeholder="Ingrese el tipo de usuario">
							    </div>
						    </div>
						    <div class="form-group">
							    <label for="password" class="col-sm-2 control-label">Contraseña:</label>
							    <div class="col-sm-4">
                                                                <input type="password" class="form-control" id="contrasenia1" placeholder="Ingrese la contraseña">
							    </div>
						    </div>
						    <div class="form-group">
							    <label for="password" class="col-sm-2 control-label">Contraseña</label>
							    <div class="col-sm-4">
							    	<input type="password" class="form-control" id="contrasenia2" placeholder="Repita la contraseña">
							    </div>
						    </div>
						  <button type="submit" class="btn btn-default">Agregar</button>
					</form>
				</div>
	        </div>

	    </div>
	</body>
</html>