<%-- 
    Document   : pizza
    Created on : 14/04/2018, 10:57:30
    Author     : bruno.szczuk
--%>
<%@page import="prova.Sabor"%>
<%@page import="prova.Pizza"%>
<%@page import="java.util.ArrayList"%>
<%@page import="prova.UsuarioInvalido"%>
<%
    String usuario = "", senha = "";
    if (request.getParameter("usuario") != null) {
        usuario = request.getParameter("usuario");
        senha = request.getParameter("senha");
        session.setAttribute("usuario", usuario);
        session.setAttribute("senha", senha);
    } else {
        usuario = (String) session.getAttribute("usuario");
        senha = (String) session.getAttribute("senha");
    }

    if (usuario == null || usuario.trim().length() < 1 || !usuario.equals("admin")) {
        usuario = "";
        session.setAttribute("usuario", "");
        session.setAttribute("senha", "");
        throw new UsuarioInvalido();
    }
    if (senha == null || senha.trim().length() < 1 || !senha.equals("admin")) {
        session.setAttribute("usuario", "");
        session.setAttribute("senha", "");
        throw new UsuarioInvalido();
    }

    ArrayList pizzas = (ArrayList) application.getAttribute("pizzas");
    if (pizzas == null) {
        pizzas = new ArrayList();
        Pizza p = new Pizza();
        //Colocar uma pizza só pra preencher uma primeira tela
        p.setId(1);
        Sabor sab1 = new Sabor("Calabresa"), sab2 = new Sabor("Mussarela");

        ArrayList<Sabor> sabores = new ArrayList<Sabor>();
        sabores.add(sab1);
        sabores.add(sab2);
        p.setTamanho("M");
        p.setSabores(sabores);
        pizzas.add(p);
    }
    application.setAttribute("pizzas", pizzas);
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
                    <ul>
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
        <input type="button" onclick="document.location = 'pedirpizza.jsp'" value="Pedir uma pizza">
        <input type="button" onclick="document.location = 'index.jsp'" value="Voltar">
        <br/>
        <a href="./cadastrarsabor.jsp"> Sugerir novos sabores! (Servlet) </a>
    </center>
</body>
</html>
