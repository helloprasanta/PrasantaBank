<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.Connection" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Account</title>
</head>
<body>
<%

String uname=request.getParameter("un");
String pwd=request.getParameter("cnfpwd");
String fname=request.getParameter("nm");

/* Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","scott","tiger"); */

Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prasanta_bank","root","9778754820");

String q="insert into bank_login values(?,?,?)";
PreparedStatement pst=con.prepareStatement(q);
pst.setString(1, uname);
pst.setString(2, pwd);
pst.setString(3, fname);

int i=pst.executeUpdate();

if(i!=0)
    {
	out.println("<h3> User Id Created Successfully </h3>");
	}
else{
	out.println("<h3> User Id Not Created due to some Problem </h3>");
}
%>

</body>
</html>