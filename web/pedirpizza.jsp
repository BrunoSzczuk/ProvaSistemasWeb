<%-- 
    Document   : pedirpizza
    Created on : 14/04/2018, 20:48:05
    Author     : Bruno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="adicionapizza.jsp" method="POST">
            <table border="2">
                <tr>
                    <td>
                        Tamanho de sua Pizza
                    </td>
                    <td>
                        Sabores da pizza
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="radio" name="tamanho" value="P"> Pequena <br/>
                        <input type="radio" name="tamanho" value="M"> Média<br/>
                        <input type="radio" name="tamanho" value="G"> Grande<br/>
                    </td>
                    <td>
                        <input type="checkbox" name="sabores" value="Calabresa"/>Calabresa <br/>
                        <input type="checkbox" name="sabores" value="Mussarela"/>Mussarela<br/>
                        <input type="checkbox" name="sabores" value="Bacon"/>Bacon<br/>
                        <input type="checkbox" name="sabores" value="Chocolate Branco"/>Chocolate Branco<br/>
                        <input type="checkbox" name="sabores" value="Chocolate Preto"/>Chocolate Preto<br/>
                    </td>
                </tr>
            </table>
            <input type="submit" value="Adicionar">
        </form>
    </body>
</html>
