<%-- 
    Document   : RecibiendoDatos
    Created on : 18-may-2020, 9:43:14
    Author     : JOZE RODRIGUEZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>nombre: <%=  request.getParameter("user_name") %></h1>
        <h1>e-mail <%=  request.getParameter("user_mail") %></h1>
    </body>
</html>
