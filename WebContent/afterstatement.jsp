<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.ResultSet" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>After Statement</title>
<style type="text/css">

table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    text-align: left;
    padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
    background-color: #4CAF50;
    color: white;
}

body {
    background-color: lightblue;
}

</style>

</head>
<body>


<form>
<center>
<table border="2px">
<tr>
<th>DATE OF TRANSACTION</th>
<th>TRANSACTION AMOUNT</th>
<th>MODE OF TRANSACTION</th>
</tr>
<%
String trd;
Float tramt;
String tp;
String nm;
float bl;
%>
<%
try{

int acn=Integer.parseInt(request.getParameter("staccn"));
out.println("<br>");
out.println("ACCOUNT NUMBER :"+acn);
out.println("<br>");
out.println("<br>");

/* Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","scott","tiger"); */

Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prasanta_bank","root","9778754820");

String q1="select * from bank_trans where accn=?";
PreparedStatement pst=con.prepareStatement(q1);
pst.setInt(1, acn);
ResultSet rs = pst.executeQuery();

while(rs.next())
    {
	
	 trd=rs.getString("trdate");
	 tramt=rs.getFloat("tramount");
	 tp=rs.getString("type");
%>

    <tr><td><%= trd %> </td> <td><%= tramt %> </td> <td><%= tp %> </td> </tr>
     

<%
    }

String q4="Select * from bank where accn=?";
PreparedStatement pst4=con.prepareStatement(q4);
pst4.setInt(1, acn);
ResultSet rs4 = pst4.executeQuery();
if(rs4.next())
 {
	nm=rs4.getString("name");
	bl=rs4.getFloat("bal");
 
    out.println("<h3 color='blue'>Account Holder Name:</h3>"+nm);
    out.println("<br>");
    out.println("<br>");
    out.println("<h3>Avialable Balance :</h3>"+bl);
    out.println("<br>");
    out.println("<br>");
 }
%>


 <%
   
    rs.close();
    pst.close();
    con.close();
   }
catch(Exception e)
    {
    e.printStackTrace();
    }
%> 

</table><br><br>
<input type="button" value="PRINT" onclick="window.print()">&nbsp;&nbsp;&nbsp;<a href="homepage.jsp">HOME</a>&nbsp;&nbsp;&nbsp;
</center>
</form>
</body>
</html>