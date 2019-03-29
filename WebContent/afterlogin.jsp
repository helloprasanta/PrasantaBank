<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.ResultSet" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Check</title>



</head>
<body>
<form target="main">



<%
String fname=null;
    
int flag=0;

        String usern=request.getParameter("un");
        String password=request.getParameter("pwd");
      
        /* Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","scott","tiger"); */
        
        Class.forName("com.mysql.jdbc.Driver"); 
        java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prasanta_bank","root","9778754820");
        
       
        String q="select *from bank_login where username= ?";
        PreparedStatement pst=con.prepareStatement(q);
        pst.setString(1,usern);
        ResultSet rs = pst.executeQuery();
        while(rs.next())
         {
        	
        	
        	String unm=rs.getString("username");
        	String upwd=rs.getString("password");
        	fname=rs.getString("name");
       	  if((usern.equals(unm) && password.equals(upwd)))
             {
        		             
            flag=1;
           break;
          
             }
        	 
        	 else{
        		 flag=2;
        		 break;
        		 
        	 }
         }
        
        if(flag==1)
        {
        	session.setAttribute("username", fname);
        	response.sendRedirect("homepage.jsp");
        }
        if(flag==2 || flag==0)
        {
        	response.sendRedirect("error.jsp");
        }
         
         
         
        	
           
        
          
             %>
             </form>

</body>
</html>