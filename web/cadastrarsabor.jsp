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
                <h1>Sugestão de Sabor </h1>
                <table>
                    <tr>
                        <td><b>Nome:</b></td>  
                        <td><input type="text" name = "nome"> </td>
                    </tr>
                    <tr>
                        <td><b>E-mail:</b></td>
                        <td><input type="email" name="email"> </td>
                    </tr>
                    <tr>
                        <td><b>Sabores:</b></td>
                        <td><textarea name="sabores" rows="3" cols="32"></textarea></td>
                    </tr>
                </table>
                <button type="submit">Enviar </button>    
            </center>    
        </form>
    </body>
</html>
