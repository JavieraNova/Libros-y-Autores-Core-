<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Agregar Libro</title>
    <!-- Conexión al archivo CSS -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/css.css">
</head>
<body>

<h2>Agregar un nuevo libro</h2>

<!-- Formulario para agregar un nuevo libro -->
<form action="${contextPath}/procesa/libro" method="POST">
    <label for="nombreLibro">Nombre del libro:</label>
    <input type="text" id="nombreLibro" name="nombreLibro" required>

    <label for="nombreAutor">Autor:</label>
    <input type="text" id="nombreAutor" name="nombreAutor" required>

    <button type="submit">Agregar</button>
</form>

<a href="${contextPath}/libros">Volver a la lista de libros</a>

</body>
</html>
