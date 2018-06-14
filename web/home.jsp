<%-- 
    Document   : pizza
    Created on : 14/04/2018, 10:57:30
    Author     : bruno.szczuk
--%>
<%@page import="java.util.List"%>
<%@page import="prova.dao.PizzaDAO"%>
<%@page import="prova.obj.Tamanho"%>
<%@page import="prova.obj.Sabor"%>
<%@page import="prova.obj.Pizza"%>
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
    List<Pizza> pizzas = PizzaDAO.listAll();
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
        <input type="button" onclick="document.location = 'pedirpizza.jsp'" value="Pedir uma pizza"><br/>
        <input type="button" onclick="document.location = 'adicionasabor.jsp'" value="Adicionar um Sabor novo para venda"><br/>
        <input type="button" onclick="document.location = 'adicionatamanho.jsp'" value="Adicionar um Tamano de pizza"><br/>
        <input type="button" onclick="document.location = 'index.jsp'" value="Voltar">
        <br/>
    </center>
</body>
</html>
