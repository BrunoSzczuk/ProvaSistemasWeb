<%-- 
    Document   : adicionatamanho
    Created on : 14/06/2018, 20:09:10
    Author     : Bruno
--%>

<%@page import="prova.dao.TamanhoDAO"%>
<%@page import="prova.obj.Tamanho"%>
<%@page  errorPage="erro.jsp" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Novo Tamanho</title>
    </head>
    <body>
        <form name = "main" action="MainServlet" method="post">
            <center>
                <h1>Novo Tamanho </h1>
                <table>
                    <tr>
                        <td><b>Sigla</b></td>  
                        <td><input type="text" name = "sigla" maxLength="1" style="text-transform:uppercase"> </td>
                    </tr>
                    <tr>
                        <td><b>Descrição do tamanho:</b></td>  
                        <td><input type="text" name = "descricao" maxLength="60"> </td>
                    </tr>
                    <tr>
                        <td><b>Quantidade de sabores</b></td>  
                        <td><input type="number" name = "qt_sabores" max="5"> </td>
                    </tr>
                    <input type="hidden" name="op" value="addTamanho"/>
                </table>
                <button type="submit">Salvar </button>    
                <input type="button" value="Voltar" 
                       onclick="javascript:history.go(-1);"/>

                <br/>
                <br/>
                <h3>Tamanhos Disponíveis</h3>
                <table border="1" align="Center">
                    <tr>
                        <td>
                            Sigla
                        </td>   
                        <td>
                            Descrição
                        </td>
                        <td>
                            Qtd de Sabores
                        </td>
                    </tr>
                    <% for (Tamanho t : TamanhoDAO.listAll()) {%>
                    <tr>
                        <td>
                            <%= t.getSigla()%>
                        </td>
                        <td>
                            <%=t.getDescricao()%>
                        </td>
                        <td><%= t.getQtSabores()%>
                        </td>
                    </tr>
                    <%}%>
                </table>

            </center>    
        </form>
    </body>
</html>
