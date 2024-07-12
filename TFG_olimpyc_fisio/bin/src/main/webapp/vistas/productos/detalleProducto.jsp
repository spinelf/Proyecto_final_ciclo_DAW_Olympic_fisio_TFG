<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>${ producto.nombreProducto }</title>
		<link href="<c:url value='/css/style.css' />" rel="stylesheet">
		<link href="<c:url value='/css/table.css' />" rel="stylesheet">
		<link href="<c:url value='/css/detalle.css' />" rel="stylesheet">
	</head>
	<body>
		<jsp:include page="../menu.jsp"></jsp:include>
		<main>
		<h1>${ producto.nombreProducto }</h1>
		<section class="default">
		
		<table class="default">
			<thead>
				<tr class="default">
					<th>Id Producto</th>
					<th>Descripcion del producto</th>
					<th>Precio</th>
					<th>Stock</th>
				</tr>
			</thead>
			<tbody>
				<tr class="default">
					<td>${ producto.idProducto }</td> 
					System.out.println (producto.idProducto);
					<td>${ producto.nombreProducto }</td>
					System.out.println (producto.nombreProducto);
					<td>${ producto.precio }&euro;</td>
					System.out.println (producto.precio);
					<td>${ producto.Familia.nombreFamilia }</td>
					System.out.println (producto.Familia.nombreFamilia);
				</tr>
			</tbody>
		</table>
		</section>
		<sec:authorize access="hasAuthority('ROLE_ADMIN')">
			<a class="btn-link" href="/producto/editar/${ producto.idProducto }">Editar</a>
			<a class="btn-link" href="/producto/eliminar/${ producto.idProducto }">Eliminar</a>
		</sec:authorize>
		<p class="mensaje-exito">${ mensajeExito }</p>
		<p class="mensaje-error">${ mensajeError }</p>
		</main>
	</body>
