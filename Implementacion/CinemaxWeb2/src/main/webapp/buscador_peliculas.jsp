<%@page import="pe.edu.upc.evolucion.cinemaxcore.business"%>
<html>
<head>
<title>Buscador Películas</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">

<!-- Optional theme -->


<!-- Latest compiled and minified JavaScript -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>

	<body>
            <%
                List<Pelicula> peliculas = new ArrayList<Pelicula>();
                InstanciaDao insDao = new InstanciaDao();
                instancias = insDao.listar();
             %>
		<nav class="navbar navbar-default navbar-static-top" role="navigation">
	        <div class="container">
		        <div class="navbar-header">
		          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-controls="navbar">
		            <span class="sr-only">Toggle navigation</span>
		            <span class="icon-bar"></span>
		            <span class="icon-bar"></span>
		            <span class="icon-bar"></span>
		          </button>
		          <a class="navbar-brand" href="index.html">TB - SI184</a>
		        </div>
		        <div id="navbar" class="navbar-collapse collapse">
		          <ul class="nav navbar-nav">
		            <li class="active"><a href="index.html">Inicio</a></li>
		            <li><a href="#">Notificaciones</a></li>
		            <li><a href="#">Tienda</a></li>
		            <li class="dropdown">
		              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" >Panel de Control<span class="caret"></span></a>
		              <ul class="dropdown-menu" role="menu">
		                <li><a href="admin-usuarios.html">Admin-Usuarios</a></li>
		                <li><a href="admin-peliculas.html">Admin-Películas</a></li>
		                <li><a href="buscador-peliculas.html">Buscardor-Peliculas</a></li>
		                <li><a href="#">Admin-Tienda</a></li>
		                <li><a href="#">Admin-Ventas</a></li>
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
			        <h1>Buscador de Películas en Cartelera</h1>
			        <p>Ingrese el Nombre de la Película para Encontrar Resultados.</p>
			        <form class="form-horizontal" role="form" >
						    <div class="form-group">
							    <label for="Nombre" class="col-sm-2 control-label">Nombre:</label>
							    <div class="col-sm-4">
							    	<input type="text" class="form-control" id="Nombre" placeholder="Ingrese el nombre de la pelíula en cartelera">
							    </div>
							    <button type="submit" class="btn btn-default">Buscar</button>
						    </div>				  
					</form>
				</div>
	        </div>

	    </div>
	</body>
</html>