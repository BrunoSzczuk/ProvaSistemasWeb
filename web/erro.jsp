<%@page isErrorPage="true" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head><title>Deu ruim!</title></head>
    <body>
    <center>

        <h3>Página de erro</h3>
        <%
            if (exception != null) {
                String tipo = exception.getClass().toString();
                tipo = tipo.substring(tipo.lastIndexOf(" ") + 1, tipo.length());
                String causa = "Desconhecida", sugestao = "Sem sugestões";
                if (tipo.equals("java.lang.NullPointerException")) {
                    causa = "Um dado obrigatório não foi informado.";
                    sugestao = "Volte e preencha os campos obrigatórios.";
                } else if (tipo.equals("java.lang.NumberFormatException")) {
                    causa = "Número inválido informado.";
                    sugestao = "Volte e confira os campos numéricos.";
                } else if (tipo.equals("prova.UsuarioInvalido")) {
                    causa = "Usuário ou senha inválida";
                    sugestao = "Insira um usuário válido (admin).";
                }
        %>
        <table border="2">
            <tr>
                <td>Tipo do erro: <b><%= tipo%></b>
            </tr>
            <tr>
                <td>Mensagem original: <b><%= exception.getMessage()%></b
            </tr>
            <tr>
                <td>Causa provável: <b><%= causa%></b>
            </tr>
            <tr>
                <td>Sugestão: <b><%= sugestao%></b>
            </tr>
        </table>
        <%
            } else
                out.println("<b>Nenhum erro localizado.</b>");
        %>
        <br/>
        <input type="button" value="Voltar" 
               onclick="javascript:history.go(-1);"/>
    </center>
</body>
</html>