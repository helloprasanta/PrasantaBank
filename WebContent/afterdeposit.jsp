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
<title> AFTER DEPOSIT </title>
</head>
<body>
<%
float avlblnc=0;
float depblnc;
float totalblnc=0;

int acn=Integer.parseInt(request.getParameter("val"));
depblnc=Float.parseFloat(request.getParameter("depamt"));
String dot1=request.getParameter("dot");
String nature="DEPOSIT BY CASH";

/* Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","scott","tiger"); */

Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prasanta_bank","root","9778754820");


String q1="select bal from bank where accn=?";
PreparedStatement pst=con.prepareStatement(q1);
pst.setInt(1, acn);
ResultSet rs = pst.executeQuery();
if(rs.next())
    {
	avlblnc=rs.getFloat("bal");
	}
  totalblnc=avlblnc+depblnc;
//out.println(totalblnc);


String q2="update bank set bal=? where accn=?";
PreparedStatement pst1=con.prepareStatement(q2);
						pst1.setFloat(1, totalblnc);
						pst1.setInt(2, acn);
int i=pst1.executeUpdate();

String q5="insert into bank_trans values(?,?,?,?)";
PreparedStatement pst5=con.prepareStatement(q5);
						pst5.setInt(1, acn);
						pst5.setString(2, dot1);
						pst5.setFloat(3, depblnc);
						pst5.setString(4, nature);

int j=pst5.executeUpdate();

if(i!=0 && j!=0)
{
	//out.println("<script type='text/javascript'>");
	//out.println("alert('Deposit Successfull')");
	//out.println("</script>");
	//response.sendRedirect("deposit.jsp");
	out.println("Deposit Successfull.............");
	
}

	else
	{
		//out.println("<script type='text/javascript'>");
		//out.println("alert('Account Number Not Found')");
		//out.println("</script>");
		//response.sendRedirect("deposit.jsp");
		out.println("Account Number Not Found.................");
	}

%>

</body>
</html>