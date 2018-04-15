<%-- 
    Document   : adicionapizza
    Created on : 14/04/2018, 21:22:56
    Author     : Bruno
--%>
<%@page import="prova.Sabor"%>
<%@page import="java.util.ArrayList"%>
<%@page import="prova.Pizza"%>
<%
    ArrayList pizzas = (ArrayList) application.getAttribute("pizzas");
    Pizza p = new Pizza();
    String sabores[] = request.getParameterValues("sabores");
    ArrayList sab = new ArrayList();
    for (int i = 0; i < sabores.length; i++){
        sab.add(new Sabor(sabores[i]));
    }
    p.setSabores(sab);
    p.setId(pizzas.size() +1);
    p.setTamanho(request.getParameter("tamanho"));
    pizzas.add(p);
    application.setAttribute("pizzas", pizzas);
    
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pizza Adicionada</title>
    </head>
    <body>
        <h2>Pizza Adicionada com sucesso!</h2>
        <input type="button" value="Início" 
               onclick="document.location = 'home.jsp';"/>
    </body>
</html>
