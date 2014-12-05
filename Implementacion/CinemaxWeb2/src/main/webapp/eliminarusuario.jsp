<%-- 
    Document   : eliminarusuario
    Created on : 05/12/2014, 02:04:32 AM
    Author     : Victor Moran
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Inicio - Peliculas</title>
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
		                <li><a href="admin-peliculas.jsp">Admin-Peliculas</a></li>
		                <%--<li><a href="buscador-peliculas.html">Buscardor-Peliculas</a></li>
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
	        	<div class="jumbotron">

			        <form class="form-horizontal"role="form" action="RegresarEliminar" method="post">
			        <p>Cliente eliminado correctamente</p>
                                <button type="submit" class="btn btn-default">Regresar</button>
                                </form>
				</div>
	        </div>

	    </div>
	</body>
</html>
