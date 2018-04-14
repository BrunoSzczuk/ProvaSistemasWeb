<%-- 
    Document   : pizza
    Created on : 14/04/2018, 10:57:30
    Author     : bruno.szczuk
--%>
<%@page import="prova.Sabores"%>
<%@page import="prova.Pizza"%>
<%@page import="java.util.ArrayList"%>
<%@page import="prova.UsuarioInvalido"%>
<%
    String usuario = request.getParameter("usuario");
    String senha = request.getParameter("senha");
    if (usuario == null || usuario.trim().length() < 1 || !usuario.equals("admin")) {
        throw new UsuarioInvalido();
    }
    if (senha == null || senha.trim().length() < 1 || !senha.equals("admin")) {
        throw new UsuarioInvalido();
    }
    ArrayList pizzas = (ArrayList) application.getAttribute("pizzas");
    if (pizzas == null) {
        pizzas = new ArrayList();
        Pizza p = new Pizza();
        p.setId(1);
        Sabores sab1 = new Sabores("Calabresa"), sab2 = new Sabores("Mussarela");

        ArrayList<Sabores> sabores = new ArrayList<Sabores>();
        sabores.add(sab1);
        sabores.add(sab2);
        p.setTamanho("M");
        p.setSabores(sabores);
        pizzas.add(p);
    }
%>
<%@page errorPage="erro.jsp" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pizzas</title>
    </head>
    <body>
    <center>
        <table>
            <tr><td><h2> Pizzas já solicitadas </h2></td></tr>
            <tr>

                <td>

                    <%
                        if (pizzas.size() > 0) {
                            for (int i = 0; i < pizzas.size(); i++) {
                                out.println("<li>" + pizzas.get(i).toString());
                            }
                        }
                    %>
                    </ul>
                </td>
            </tr>

        </table>
                    <input type="button" onclick="document.location='pedirpizza.jsp'" value="Pedir uma pizza">
                    <input type="button" onclick="document.location='index.jsp'" value="Voltar">
    </center>
</body>
</html>
