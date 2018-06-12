<%-- 
    Document   : pedirpizza
    Created on : 14/04/2018, 20:48:05
    Author     : Bruno
--%>

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
                                    out.print("<input type=\"radio\" name=\"tamanho\" onchange=\"validarCampoTamanho();\" value=\"" + t.getSigla() + "\">" + t.getDescricao() + "<br/>");
                                }
                            %>

                        </td>
                        <td>
                            <input type="checkbox" onchange="validaSabores();" name="sabores" value="Calabresa"/>Calabresa <br/>
                            <input type="checkbox" onchange="validaSabores();" name="sabores" value="Mussarela"/>Mussarela<br/>
                            <input type="checkbox" onchange="validaSabores();" name="sabores" value="Bacon"/>Bacon<br/>
                            <input type="checkbox" onchange="validaSabores();" name="sabores" value="Chocolate Branco"/>Chocolate Branco<br/>
                            <input type="checkbox" onchange="validaSabores();" name="sabores" value="Chocolate Preto"/>Chocolate Preto<br/>
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
