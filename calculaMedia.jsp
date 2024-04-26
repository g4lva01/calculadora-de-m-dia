<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Calculadora de Média - Servidor</title>
</head>
<body>
    <% 
        // Importando as classes necessárias
        import javax.servlet.http.HttpServletRequest;
        import javax.servlet.http.HttpServletResponse;

        // Recebendo as notas do formulário enviado pelo cliente
        double nota1 = Double.parseDouble(request.getParameter("nota1"));
        double nota2 = Double.parseDouble(request.getParameter("nota2"));
        
        // Calculando a média das notas
        double media = (nota1 + nota2) / 2;
        
        // Preparando a resposta para o cliente
        response.setContentType("text/html");
        java.io.PrintWriter out = response.getWriter();
        out.println("<h1>Resultado do cálculo</h1>");
        out.println("<p>A média das notas é: " + media + "</p>");
    %>
</body>
</html>