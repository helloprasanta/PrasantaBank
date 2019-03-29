<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
pageEncoding="ISO-8859-1"%> 
<%@ page import="java.sql.*"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> 
<html> 
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> 
<title>Populate Using Ajax</title> 
<script> 
function showState(str){ 
var xmlhttp; 
if (window.XMLHttpRequest) 
{// code for IE7+, Firefox, Chrome, Opera, Safari 
xmlhttp=new XMLHttpRequest(); 
} 
else 
{// code for IE6, IE5 
xmlhttp=new ActiveXObject("Microsoft.XMLHTTP"); 
} 
xmlhttp.onreadystatechange=function() 
{ 
if (xmlhttp.readyState==4 && xmlhttp.status==200) 
{ 
document.getElementById("state").innerHTML=xmlhttp.responseText; 
} 
} 
xmlhttp.open("GET","getstate.jsp?q="+str,true); 
xmlhttp.send(); 
} 
</script> 
</head> 
<body> 
Country : <select onchange="showState(this.value)"> 
<% 
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
stmt=connection.prepareStatement("select * from country"); 
ResultSet rs=null; 
rs= stmt.executeQuery(); 
while(rs.next()){ 
%> 
<option value="<%=rs.getString(1)%>"><%=rs.getString(2)%></option> 
<% 
} 
%> 
</select> 
<div id="state"> 
State : 
<select> 
<option>Select State</option> 
</select> 
</div> 
</body> 
</html> 