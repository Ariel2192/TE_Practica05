<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Productos</title>
    </head>
    <body style="font-family: comic sans ms; font-size: larger; background-color: lightblue">
    <center><h1>Productos</h1></center>
        <p><a href="Inicio?action=add">Registrar nuevo producto</a></p>
        <table border ="1">
            <tr>
                <th>Id</th>
                <th>Descripción</th>
                <th>Stock</th>
                <th></th>
                <th></th>
            </tr>
            
            <c:forEach var="item" items="${productos}">
                <tr>
                    <td>${item.id}</td>
                    <td>${item.descripcion}</td>
                    <td>${item.stock}</td>
                    <td><a href="Inicio?action=edit&id=${item.id}">Editar</a></td>
                    <td><a href="Inicio?action=delete&id=${item.id}">Eliminar</a></td>
                </tr>
            </c:forEach> 
        </table>
    </body>
</html>
