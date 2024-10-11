<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Lista de Libros</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/css.css">
</head>
<body>
<h2>Lista de Libros</h2>

<ul>
    <!-- Recorremos la lista de libros -->
    <c:forEach var="libro" items="${libros}">
        <li>
            <a href="${contextPath}/libros/${libro}">${libro}</a>
        </li>
    </c:forEach>
</ul>

<a href="${contextPath}/libros/formulario">Agregar nuevo libro</a>

</body>
</html>
