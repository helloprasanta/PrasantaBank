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
    font-weight: bold;
    font-family: monospace;
    font-size: 13px;
    
}

tr:nth-child(even){background-color: #f2f2f2}

th {
    background-color: #4CAF50;
    color: #071d6b;;
    
}

body {
    background-color: lightblue;
}
h2 {

color: #a50e99;;

}

.footer {
   position: fixed;
   left: 0;
   bottom: 20px;
   width: 100%;
   background-color:black;
   color: #1cd4b3;
   text-align: center;
}


</style>

</head>
<body>
<h2 align="center" >ALL ACCOUNT DETAILS</h2>

<form>
<center>
<table border="2px">
<tr>
<th>ACCOUNT NUMBER</th>
<th>NAME</th>
<th>ADDRESS</th>
<th>MOB</th>
<th>DATE OF OPENING</th>
<th>EMAIL</th>
</tr>
<%
int acn=0;
String nm;
String adr;
String mob;
String dp;
String el;

%>

<%
try{
/* Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","scott","tiger"); */

Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/prasanta_bank","root","9778754820");

String q1="select * from bank";
PreparedStatement pst=con.prepareStatement(q1);
ResultSet rs = pst.executeQuery();

while(rs.next())
    {
	
	 acn=rs.getInt("accn");
	 nm=rs.getString("name");
	 adr=rs.getString("addrs");
	 mob=rs.getString("mob");
	 dp=rs.getString("dop");
	 el=rs.getString("email");
	 
 %>

    <tr><td><%= acn %> </td></a> <td><%= nm %> </td> <td><%= adr %> </td> <td><%= mob %> </td> <td><%= dp %> </td> <td><%= el %> </tr>
     

<%
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

<div class="footer">
  <p>|| Prasanta Bank ||  || Website Designed By: Prasanta Kumar Parida ||</p>
</div>

</html>