<%-- 
    Document   : RecibiendoDatos
    Created on : 18-may-2020, 9:43:14
    Author     : JOZE RODRIGUEZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%  
            String nombreUser= request.getParameter("user_name");
            String apellidoUser= request.getParameter("user_apellido");
            String password= request.getParameter("user_password");
            String correo= request.getParameter("user_mail");
            
                    out.print(nombreUser);
                    out.print(apellidoUser);
                    out.print(password);
                    out.print(correo);
             
         %>
    </body>
</html>
