<%-- 
    Document   : admin-peliculasç
    Created on : Dec 4, 2014, 1:49:55 AM
    Author     : Miguel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Administración de Películas en Cartelera</title>
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
		          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-controls="navbar">
		            <span class="sr-only">Toggle navigation</span>
		            <span class="icon-bar"></span>
		            <span class="icon-bar"></span>
		            <span class="icon-bar"></span>
		          </button>
		          <a class="navbar-brand" href="index.jsp">TB - SI184</a>
		        </div>
		        <div id="navbar" class="navbar-collapse collapse">
		          <ul class="nav navbar-nav">
		            <li class="active"><a href="index.html">Inicio</a></li>
		            <li><a href="#">Notificaciones</a></li>
		            <li><a href="#">Tienda</a></li>
		            <li class="dropdown">
		              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button">Panel de Control<span class="caret"></span></a>
		              <ul class="dropdown-menu" role="menu">
		                <li><a href="admin-usuarios.html">Admin-Usuarios</a></li>
		                <li><a href="admin-peliculas.html">Admin-Películas</a></li>
                                <%--<li><a href="buscador-peliculas.html">Buscardor-Películas</a></li>
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
					  <li role="presentation" class="active"><a href="admin-peliculas.html">Agregar a Cartelera</a></li>
					  <li role="presentation"><a href="#">Programas en Estreno</a></li>
					  <li role="presentation"><a href="#">Quitar de Cartelera</a></li>
					</ul>
			        <h1>Agregar Película en Cartelera</h1>
			        <p>Ingrese los datos en el formulario.</p>
                                <form method="post" action="servletPeliculas" class="form-horizontal" role="form">
						    <div class="form-group">
							    <label for="Nombre" class="col-sm-2 control-label">Nombre de la Película:</label>
							    <div class="col-sm-4">
                                                                <input name="txtNomPel" type="text" class="form-control" id="Nombre" placeholder="Ingrese el nombre de la película">
							    </div>
						    </div>
						    <div class="form-group">
							    <label for="Director" class="col-sm-2 control-label">Nombre del Director:</label>
							    <div class="col-sm-4">
                                                                <input name="txtDirector" type="text" class="form-control" placeholder="Ingrese el Nombre Del Director">
							    </div>
						    </div>
						    <div class="form-group">
							    <label for="Categoria" class="col-sm-2 control-label">Categoria:</label>
							    <div class="col-sm-4">
							    	<input name="txtCategoria" type="text" class="form-control" id="categoria" placeholder="Ingrese la Categoria">
							    </div>
						    </div>
                                                    <div class="form-group">
							    <label for="Estreno" class="col-sm-2 control-label">Fecha Estreno</label>
							    <div class="col-sm-4">
							    	<input name="txtFecha" type="text" class="form-control" id="fecha" placeholder="dd/MM/yyyy">
							    </div>
						    </div>
						    <div class="form-group">
							    <label for="Sinapsis" class="col-sm-2 control-label">Sinapsis:</label>
							    <div class="col-sm-4">
                                                                <textarea name="txtSinapsis" class="form-control"></textarea>
							    </div>
						    </div>
						  <button type="submit" class="btn btn-default">Agregar</button>
					</form>
				</div>
	        </div>

	    </div>
	</body>
</html>