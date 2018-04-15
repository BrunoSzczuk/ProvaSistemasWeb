<%-- 
    Document   : index
    Created on : 14/04/2018, 10:41:06
    Author     : bruno.szczuk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if (session.isNew()) {
        session.setAttribute("usuario", "");
        session.setAttribute("senha", "");
    }
    String usuario = (String) session.getAttribute("usuario"), senha = (String) session.getAttribute("senha");

%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pizzaria Rossi</title>
    </head>
    <body>
        <form action="home.jsp" method="POST">
            <center>
                <table>
                    <tr>
                        <td><h1>Bem vindo ao sistema de pizzaria! </h1></td>
                    </tr>
                    <tr>
                        <td><h3>Para continuar é necessário fazer login (admin)</h3></td>
                    </tr>
                    <tr>
                        <td>Usuário: <input type="text" name="usuario" size="20" value=<%=usuario%> ></td>
                    </tr>
                    <tr>
                        <td>Senha: <input type="password" name="senha" size="20" value=<%=senha%> ></td>
                    </tr>
                </table>
                <input type="submit" value="Login">
            </center>
        </form>

    </body>
</html>
