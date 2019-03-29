<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
pageEncoding="ISO-8859-1"%> 
<%@ page import="java.sql.*"%> 
<%!int i;%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> 
<html> 
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> 
<title>State Page</title> 
</head> 
<body> 
State : 
<select> 
<% 
String str=request.getParameter("q"); 
i=Integer.parseInt(str); 
try { 
	Class.forName("com.mysql.jdbc.Driver");
} catch (ClassNotFoundException e) { 
e.printStackTrace(); 
return; 
} 
Connection connection = null; 
try { 
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/prasanta_bank","root","9778754820"); 
} 
catch (SQLException e) { 
e.printStackTrace(); 
return; 
} 
PreparedStatement stmt=null; 
stmt=connection.prepareStatement("select * from state where countryid='"+i+"'"); 
ResultSet rs=null; 
rs= stmt.executeQuery(); 
while(rs.next()){ 
%> 
<option value="<%=rs.getString(1)%>"><%=rs.getString(2)%></option> 
<% 
} 
%> 
</select> 
</body>
</html> 