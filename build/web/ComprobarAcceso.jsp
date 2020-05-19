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
            String password= request.getParameter("user_password");
            
                   
                    
                      //   Class.forName("com.mysql.jdbc.Driver"); tambien me funciona sin esta linea de codigo
                    try{
                    Connection  conexion= DriverManager.getConnection("jdbc:mysql://localhost:3306/usuarios?zeroDateTimeBehavior=convertToNull","root","1234");

                    PreparedStatement st=conexion.prepareStatement("select * from users where user_nombre=? and user_password=?");//creamos la consulta perparada
                    st.setString(1, nombreUser);//llenamos los parametros de la conulta preparada
                    st.setString(2, password);
                    
                    ResultSet r=st.executeQuery();//ejecuttamos la consulta y gurdamos lo datos en un ResultSet
                    
                    if(r.absolute(1)){
                        out.print("Uusario validado correctmente");
                    }else{
                        out.print("usuario invalido");
                    }
                   
                    }catch(Exception e){
                        out.print(e+" linea: ");
                    }
             
         %>
    </body>
</html>

