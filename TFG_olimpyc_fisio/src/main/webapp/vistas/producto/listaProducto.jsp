<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>

<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="ISO-8859-1">
<title>Lista de productos</title>
<title>OlympicFisio</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Facebook and Twitter integration -->
<meta name="twitter:title" content="" />
<meta name="twitter:image" content="" />
<meta name="twitter:url" content="" />
<meta name="twitter:card" content="" />

<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<link rel="shortcut icon" href="favicon.ico">

<link
	href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,300,600,400italic,700'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
	data-integrity="sha512-bz/zkQ/xt3LsX+Zx1rWu/4Hh0qNrR2siZn9T2Y0CweMv2LwX5YiLw3tV5uLZdQj2NC1wx8u4Phgz+2QIn9KkDQ=="
	data-crossorigin="anonymous" data-referrerpolicy="no-referrer" />


<!-- Animate.css -->

<link rel="stylesheet" type="text/css" href="../css/animate.css">
<!-- Icomoon Icon Fonts-->
<link rel="stylesheet" type="text/css" href="../css/icomoon.css">
<!-- Simple Line Icons -->
<link rel="stylesheet" type="text/css"
	href="../css/simple-line-icons.css">
<!-- Magnific Popup -->
<link rel="stylesheet" type="text/css" href="../css/magnific-popup.css">
<!-- Bootstrap  -->
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">


<link rel="stylesheet" type="text/css" href="../css/style3.css">

<link rel="stylesheet" type="text/css" href="../css/_precios.css">

<!-- Modernizr JS -->
<script src="../js/modernizr-2.6.2.min.js"></script>
<style>
.titulo {
	text-align: center;
}

.botones {
	margin-top: 5%;
	display: flex;
	justify-content: center;
}

.row {
	margin-left: -15px;
	margin-right: -15px;
}

.col-sm-4 {
	width: 33.3333333333%;
}

.card {
	border-color: rgb(167, 162, 154);
	text-align: center;
	border: 1px solid #ccc;
	border-radius: 4px;
	padding: 16px;
	margin-bottom: 16px;
}

.card-body {
	box-sizing: border-box;
}

.card-title {
	font-size: 18px;
	font-weight: bold;
	margin-bottom: 8px;
	text-align: center;
}

.card-text {
	margin-bottom: 8px;
	text-align: center;
}

.card-actions {
	list-style-image: initial;
	list-style: none;
	padding: 0;
}

.btn.btn-primary {
	background-image: initial;
	background-color: rgb(195, 60, 90);
	color: rgb(220, 218, 215);
	border-color: transparent !important;
}
</style>
</head>
<body>
	<jsp:include page="../menu.jsp"></jsp:include>
	<section id="fh5co-home" data-section="home"
		style="background-image: url(../images/Portada.jpg);"0.5">
		<div class="gradient"></div>
		<div class="container">
			<div class="text-wrap">
				<div class="text-inner">
					<div class="row">
						<div class="col-md-8 col-md-offset-2">
							<h1 class="to-animate">Tratamientos</h1>
							<h2 class="to-animate">Fisioterapia, suelo pélvico, columna
								vertebral, acunpuntura y osteopatía</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="slant"></div>
	</section>
	<section class="precios">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h3 class="titulo">Tratamientos y precios</h3>
				</div>
			</div>
			<div class="row">
				<c:forEach var="ele" items="${listaProductos}">
					<div class="col-sm-4">
						<div class="card">
							<div class="card-body">
								<h5 class="card-title">${ele.nombreProducto}</h5>
								<p class="card-text">${ele.precio}€</p>
								<div class="card-actions">
									<sec:authorize access="hasAuthority('Administrador')">
										<a class="btn btn-primary"
											href="/producto/editar/${ele.idProducto}">Editar</a>
									</sec:authorize>
									<sec:authorize access="hasAuthority('Administrador')">
										<a class="btn btn-primary"
											href="/producto/eliminar/${ele.idProducto}">Eliminar</a>
									</sec:authorize>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</section>


	<div class="boton_productos">
		<sec:authorize access="hasAuthority('Administrador')">
			<div class="botones">
				<a class="btn btn-primary" href="/producto/alta">Crear tratamiento</a>
			</div>
		</sec:authorize>
	</div>
	<jsp:include page="../footer.jsp"></jsp:include>

	<!-- jQuery -->
	<script src="../js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="../js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="../js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="../js/jquery.waypoints.min.js"></script>
	<!-- Stellar Parallax -->
	<script src="../js/jquery.stellar.min.js"></script>
	<!-- Counter -->
	<script src="../js/jquery.countTo.js"></script>
	<!-- Magnific Popup -->
	<script src="../js/jquery.magnific-popup.min.js"></script>
	<script src="../js/magnific-popup-options.js"></script>
	<!-- Google Map -->
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCefOgb1ZWqYtj7raVSmN4PL2WkTrc-KyA&sensor=false"></script>
	<script src="../js/google_map.js"></script>

	<!-- Main JS (Do not remove) -->
	<script src="../js/main.js"></script>

</body>
</html>
