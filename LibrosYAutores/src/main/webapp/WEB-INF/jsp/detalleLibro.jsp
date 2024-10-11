<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Detalle del Libro</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/css.css">
</head>
<body>

<div class="container">
    <h1>Detalle del Libro</h1>

    <c:if test="${not empty mensaje}">
        <div class="message">${mensaje}</div>
    </c:if>

    <c:if test="${not empty libro}">
        <p><strong>Libro:</strong> ${libro}</p>
        <p><strong>Autor:</strong> ${autor}</p>
    </c:if>

    <a href="${pageContext.request.contextPath}/libros">Volver a la lista de libros</a>
</div>

</body>
</html>
