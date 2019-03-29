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
<title>AFTER TRANSFER</title>
</head>
<body>
<%
int srcacn;
int dstacn;
float transferamount=0;
float srcavlblnc=0;
float dstavlblnc=0;
float aftsrcblnc=0;
float aftdstblnc=0;

srcacn=Integer.parseInt(request.getParameter("srcaccn"));
dstacn=Integer.parseInt(request.getParameter("dstaccn"));
transferamount=Float.parseFloat((request.getParameter("trnsamt")));

String dot1=request.getParameter("dot");
String nature1="WITHDRAW BY TRANSFER";
String nature2="DEPOSIT BY TRANSFER";

/* Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","scott","tiger"); */

Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prasanta_bank","root","9778754820");


String q1="select bal from bank where accn=?";
PreparedStatement pst=con.prepareStatement(q1);
pst.setInt(1, srcacn);
ResultSet rs = pst.executeQuery();
while(rs.next())
	{
	srcavlblnc=rs.getFloat("bal");
	}
if( transferamount<= srcavlblnc)
    {
	
	aftsrcblnc=srcavlblnc-transferamount;

	String q2="update bank set bal=? where accn=?";
	PreparedStatement pst1=con.prepareStatement(q2);
	pst1.setFloat(1, aftsrcblnc);
	pst1.setInt(2, srcacn);
	int i=pst1.executeUpdate();
	String q5="select bal from bank where accn=?";
	PreparedStatement pst5=con.prepareStatement(q5);
	pst5.setInt(1, dstacn);
	ResultSet rs5 = pst5.executeQuery();
	while(rs5.next())
		{
		dstavlblnc=rs5.getFloat("bal");
		}
	
	aftdstblnc=dstavlblnc+transferamount;

	String q3="update bank set bal=? where accn=?";
	PreparedStatement pst2=con.prepareStatement(q3);
	pst2.setFloat(1, aftdstblnc);
	pst2.setInt(2, dstacn);
	int j=pst2.executeUpdate();
	
	String q10="insert into bank_trans values(?,?,?,?)";
	PreparedStatement pst10=con.prepareStatement(q10);
	pst10.setInt(1, srcacn);
	pst10.setString(2, dot1);
	pst10.setFloat(3, transferamount);
	pst10.setString(4, nature1);

	int z=pst10.executeUpdate();
	
	String q11="insert into bank_trans values(?,?,?,?)";
	PreparedStatement pst11=con.prepareStatement(q11);
	pst11.setInt(1, dstacn);
	pst11.setString(2, dot1);
	pst11.setFloat(3, transferamount);
	pst11.setString(4, nature2);

	int y=pst11.executeUpdate();
	
	
	
	if(i!=0 && j!=0 && z!=0 && y!=0)
	{
		out.println("<script type='text/javascript'>");
		out.println("alert('Transfer Success....... :) :)')");
		out.println("</script>");
		//response.sendRedirect("transfer.jsp");
		
	}
	else
	{
		out.println("<script type='text/javascript'>");
		out.println("alert('Transfer Failure..............!!!!!! ')");
		out.println("</script>");
		//response.sendRedirect("transfer.jsp");
		
	}
	
	
	}
else
    {
	out.println("<script type='text/javascript'>");
	out.println("alert('Money Not Suffitient for Transfer.....')");
	//response.sendRedirect("transfer.jsp");
	out.println("</script>");
	}


%>

</body>
</html>