<%-- 
    Document   : cadastrarSabor
    Created on : 14/04/2018, 23:42:09
    Author     : Bruno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sugestões</title>
    </head>
    <body>
        <form name = "main" action="MainServlet" method="post">
            <center>
                <h1>Novo Sabor </h1>
                <table>
                    <tr>
                        <td><b>Nome do sabor:</b></td>  
                        <td><input type="text" name = "nome"> </td>
                    </tr>
                    <input type="hidden" name="op" value="addSabor"/>
                </table>
                <button type="submit">Salvar </button>    
                <input type="button" value="Voltar" 
                       onclick="javascript:history.go(-1);"/>
                <input type="button" value="Início" 
                       onclick="document.location = 'home.jsp';"/>
            </center>    
        </form>
    </body>
</html>
