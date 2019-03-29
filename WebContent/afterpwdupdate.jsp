<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.ResultSet" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>After Password Update</title>
</head>
<body>

<%

String unm=request.getParameter("usrnm");
String opwd=request.getParameter("oldpwd");
String npwd=request.getParameter("newpwd");
String rpwd=request.getParameter("repwd");
String cpwd=null;
/* Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","scott","tiger"); */

try{
	

Class.forName("com.mysql.jdbc.Driver"); 
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prasanta_bank","root","9778754820");

String p="select password from bank_login where username=?";

PreparedStatement pst=con.prepareStatement(p);
pst.setString(1, unm);

ResultSet rs = pst.executeQuery(p);
while(rs.next())
	{
	 cpwd=rs.getString("password");
	}

out.println(cpwd);

if(opwd==cpwd){

String q="update bank_login set password=? where username=?";
PreparedStatement pst1=con.prepareStatement(q);
pst1.setString(1, rpwd);
pst1.setString(2, unm);

int i=pst.executeUpdate();


if(i>0){
	
	out.println("<script type='text/javascript'>");
	out.println("alert('Password Change Successfull.........')");
	out.println("</script>");
}
else
    {
	out.println("<script type='text/javascript'>");
	out.println("alert('Invalid Username..........')");
	out.println("</script>");
	}

pst.close();
pst1.close();


}
else
{
	out.println("<script type='text/javascript'>");
	out.println("alert('Please Enter Your Correct Password')");
	out.println("</script>");
	
}

}
catch(Exception e)
    {
	
	}

%>


</body>
</html>