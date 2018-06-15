<%-- 
    Document   : cadastrarSabor
    Created on : 14/04/2018, 23:42:09
    Author     : Bruno
--%>
<%@page import="prova.dao.SaborDAO"%>
<%@page import="prova.obj.Sabor"%>
<%@page  errorPage="erro.jsp" contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Novo Sabor</title>
    </head>
    <body>
        <form name = "main" action="MainServlet" method="post">
            <center>
                <h1>Novo Sabor </h1>
                <table>
                    <tr>
                        <td><b>Nome do sabor:</b></td>  
                        <td><input type="text" name = "nome" maxLength="60"> </td>
                    </tr>
                    <input type="hidden" name="op" value="addSabor"/>
                </table>
                <button type="submit">Salvar </button>    
                <input type="button" value="Voltar" 
                       onclick="javascript:history.go(-1);"/>

                <br/>
                <br/>
                <h3>Sabores Disponíveis</h3>
                <table border="1" align="Center">
                    <tr>
                        <td>
                            Nome
                        </td>
                    </tr>
                    <% for (Sabor t : SaborDAO.listAll()) {%>
                    <tr>
                        <td>
                            <%= t.getSabor()%>
                        </td>
                    </tr>
                    <%}%>
                </table> 
            </center>    
        </form>
    </body>
</html>
