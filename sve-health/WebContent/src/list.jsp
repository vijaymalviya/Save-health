<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List</title>
</head>
<body>



<%
                         
        Connection c1 = null;
        Statement st = null;
        ResultSet rs1;
        String q="";
   
    try
    {
          
              
                
              Class.forName("com.mysql.jdbc.Driver").newInstance();
             c1=DriverManager.getConnection("jdbc:mysql://localhost/medical_store","root","");
             
             st = c1.createStatement();
             q="select * from supplier";
             rs1=st.executeQuery(q);
             while(rs1.next())
             {
                    out.println("Welcome, </b>");
                    out.print("welcome to our app"+rs1.getString(2)+"<hr/>"+rs1.getString(3));
                    
                    
                   
             }
              }
             catch(Exception e)
             {
                    out.println(e);
             }
            
   %>

</body>
</html>