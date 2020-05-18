<%-- 
    Document   : newjsp
    Created on : 16-may-2020, 17:03:43
    Author     : JOZE RODRIGUEZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="softwareamedidad.com.matematicas.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>por fin a las : <%= new java.util.Date() %></h1>
        <h2>Resultasdo de calculos matematicos: </h2>
        
        <table>
            <tr>
                <td>suma</td>
                <td><%= Calculos.suma(1, 4) %></td>
            </tr>
             <tr>
                <td>resta</td>
                <td><%= Calculos.resta(1, 4) %></td>
            </tr>
             <tr>
                <td>multiplicacion</td>
                <td><%= Calculos.mutiplica(1, 4) %></td>
            </tr>
        </table>
            
                <h3>detalles navegador: <%= request.getHeader("user-agent") %> </h3>
                <h3>idioma navegador: <%= request.getLocale() %> </h3>
    </body>
</html>
