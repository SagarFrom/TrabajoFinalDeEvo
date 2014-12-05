<%-- 
    Document   : elimina-usuario
    Created on : 04/12/2014, 10:09:27 PM
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
		          <a class="navbar-brand" href="index.jsp">TB - SI184</a>
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
                                          <li role="presentation"><a href="actua-usuario.jsp">Obtener Usuario</a></li>
					  <li role="presentation"><a href="elimina-usuario.jsp">Eliminar Usuario</a></li>
					</ul>
			        <h1>Eliminar Usuario</h1>
			        <p>Ingrese los datos en el formulario.</p>
                                <form class="form-horizontal"role="form" action="BuscarEliminar" method="post">
                                    
                                                    <div class="form-group">
							    <label for="Codigo" class="col-sm-2 control-label">Código:</label>
							    <div class="col-sm-4">
                                                                <input type="text" class="form-control" id="nombre" name="txtCodigo" placeholder="">
							    </div>
						    </div>
						  <button type="submit" class="btn btn-default">Buscar</button>
					</form>
				</div>
	        </div>

	    </div>
	</body>
</html>

