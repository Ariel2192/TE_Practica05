<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario</title>
    </head>
    <body style="font-family: comic sans ms; font-size: larger; background-color: lightblue">
        
        <center><h1>
            <c:if test="${producto.id == 0}">Nuevo</c:if>
            <c:if test="${producto.id != 0}">Editar</c:if>
            registro de producto
            </h1>
            <form action="Inicio" method="post">
                <input type="hidden" name="id" value="${producto.id}"/>
            <label>Descripción: </label>
            <input type="text" name="descripcion" value="${producto.descripcion}"/>
            <br>
            <label>Stock: </label>
            <input type="number" name="stock" value="${producto.stock}"/>
            <br>
            <input type="submit" value="Enviar"/>
            </form>
        </center>>
    </body>
</html>
