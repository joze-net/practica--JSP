<%-- 
    Document   : RecibiendoDatos
    Created on : 18-may-2020, 9:43:14
    Author     : JOZE RODRIGUEZ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%  
            String nombreUser= request.getParameter("user_name");//con getparameter obtenemos los datos especificos que nos envia una pagina de ub form
            String apellidoUser= request.getParameter("user_apellido");
            String password= request.getParameter("user_password");
            String correo= request.getParameter("user_mail");
            
                    out.print(nombreUser);
                    out.print(apellidoUser);
                    out.print(password);
                    out.print(correo);
                    
                         Class.forName("com.mysql.jdbc.Driver");
                    try{
                    Connection  conexion= DriverManager.getConnection("jdbc:mysql://localhost:3306/usuarios?zeroDateTimeBehavior=convertToNull","root","1234");

                    Statement sentencia=conexion.createStatement();
                    
                    String instruccionSQL="Insert into users(user_nombre,user_apellido,user_password,user_mail)values('"+nombreUser+"','"+apellidoUser+"','"+password+"','"+correo+"')";
                    
                    sentencia.executeUpdate(instruccionSQL);
                    }catch(Exception e){
                        out.print(e+" linea: ");
                    }
             
         %>
    </body>
</html>
