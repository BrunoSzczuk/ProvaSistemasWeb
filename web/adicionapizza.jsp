<%-- 
    Document   : adicionapizza
    Created on : 14/04/2018, 21:22:56
    Author     : Bruno
--%>
<%@page import="prova.dao.PizzaDAO"%>
<%@page import="prova.dao.TamanhoDAO"%>
<%@page import="prova.obj.Sabor"%>
<%@page import="java.util.ArrayList"%>
<%@page import="prova.obj.Pizza"%>
<%
    Pizza p = new Pizza();
    String sabores[] = request.getParameterValues("sabores");
    String tamanho = request.getParameter("tamanho");
    if (sabores == null) {
        throw new Exception("Nenhum sabor de pizza foi selecionado");
    } else if (tamanho == null) {
        throw new Exception("Nenhum tamanho de pizza foi selecionado");
    }
    ArrayList<Sabor> sab = new ArrayList<Sabor>();
    for (int i = 0; i < sabores.length; i++) {
        sab.add(new Sabor(sabores[i]));
    }
    p.setSabores(sab);
    p.setTamanho(TamanhoDAO.buscar(tamanho));
    PizzaDAO.incluir(p);
    
%>
<%@page  errorPage="erro.jsp" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pizza Adicionada</title>
    </head>
    <body>
    <center>
        <h2>Pizza Adicionada com sucesso!</h2>
        <input type="button" value="Início" 
               onclick="document.location = 'home.jsp';"/>
    </center>
</body>
</html>
