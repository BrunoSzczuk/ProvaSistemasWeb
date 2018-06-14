<%-- 
    Document   : adicionadosucesso
    Created on : 14/06/2018, 16:39:53
    Author     : bruno.szczuk
--%>
<%@page  errorPage="erro.jsp" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro Adicionado</title>
    </head>
    <body>
    <center>
        <h2>Registro salvo com sucesso!</h2>
        <input type="button" value="Início" 
               onclick="document.location = 'home.jsp';"/>
        <input type="button" value="Voltar" 
               onclick="javascript:history.go(-1);"/>
    </center>
</body>
</html>