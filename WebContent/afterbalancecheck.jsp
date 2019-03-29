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
<title>AVAILABLE BALANCE</title>
<style type="text/css">

body {
    background-color: lightblue;
}


</style>
</head>
<body >

<%
String nm=null;
int id=Integer.parseInt(request.getParameter("val"));
float bl=0;

/* Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","scott","tiger"); */

Class.forName("com.mysql.jdbc.Driver"); 
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prasanta_bank","root","9778754820");


String q="Select * from bank where accn=?";
PreparedStatement pst=con.prepareStatement(q);
pst.setInt(1, id);
ResultSet rs = pst.executeQuery();
while(rs.next())
 {
	nm=rs.getString("name");
	bl=rs.getFloat("bal");
 }

String bal=String.valueOf(bl);

out.println("<h3>ACCOUNT HOLDERS NAME:</h3>"+nm);
out.println("<br>");
out.println("<br>");
out.println("<br>");
out.println("<h3>AVAILABLE BALANACE :</h3>"+bal);

%>
<%-- 
ACCOUNT HOLDERS NAME: <input type="text" size="30" value="<%=nm%>"><br><br>
AVAILABLE BALANACE : <input type="text" size="30" value="<%=bal%>">
--%>

</body>
</html>