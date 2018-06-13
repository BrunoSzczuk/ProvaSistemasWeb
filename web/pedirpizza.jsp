<%-- 
    Document   : pedirpizza
    Created on : 14/04/2018, 20:48:05
    Author     : Bruno
--%>

<%@page import="prova.obj.Sabor"%>
<%@page import="prova.dao.SaborDAO"%>
<%@page import="prova.obj.Tamanho"%>
<%@page import="prova.dao.TamanhoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Novo pedido</title>
        <script src="js/validacao_form.js" type="text/javascript"></script>
    </head>
    <body>
        <form action="adicionapizza.jsp" method="POST" name ="main">
            <center>
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
                            <% for (Tamanho t : TamanhoDAO.listAll()) {
                                    out.println("<input type='radio' max='" + t.getQtSabores() + "' name='tamanho' onchange='validarCampoTamanho();' value='" + t.getSigla() + "'>" + t.getDescricao() + "<br/>");
                                }
                            %>
                        </td>
                        <td>
                            <% for (Sabor s : SaborDAO.listAll()) {
                                    out.println("<input type='checkbox' name='sabores' onchange='validaSabores();' value='" + s.getSabor() + "'>" + s.getSabor()+ "<br/>");
                                }
                            %>
                        </td>
                    </tr>
                </table>
                <div id="msg_erro"></div>
                <input type="submit" value="Adicionar">
                <input type="button" value="Voltar" 
                       onclick="document.location = 'home.jsp';"/>
            </center>
        </form>
    </body>
</html>
