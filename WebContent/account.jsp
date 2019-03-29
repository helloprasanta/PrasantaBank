<%@page import="java.sql.Statement"%>
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
<title>Account Opening Form</title>

 <style>
 
     body {
      font-family: "Consolas";
      margin: 0;
      text-align: justify;
      background-color: lightblue;
        
    }
    
 
label { float: left; width: 300px; color: black; font-weight: bold; }
input[type=text] { float: left; width: 400px; }
input[type=date] { float: left; width: 400px; }
input[type=email] { float: left; width: 400px; }


.parent{
  text-align:center;
  margin-top: 15%;
  margin-left: 20%;
}

#container {
    position: fixed;
    width: 750px;
    height: 430px;
    top: 50%;
    left: 50%;
    margin-top: -140px;
   	margin-left: -350px;
    background: #c5f7fb;
    border-radius: 22px;
    border: 5px solid #ccc;
    box-shadow: 0 1px 2px rgba(0, 0, 0, .1);
	
}

input[type=text],input[type=date],input[type=email]{

font-weight: bold;
     font-size: small;

}



    #date_time{
text-align: center;
color: black;
font-weight: bold;

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

<script type="text/javascript">
            function validate()
            {
                var a = document.getElementByName("accn");
                var b = document.getElementByName("nm");
                
                     if(a.value.length<=0 || b.value.length<=0)
                    {
                        alert("Don't leave the field empty!");
                        
                    }
                                }
            
            function f1() {
            	
            	alert("Form Reset Successfull");
				
			}
            
                      
                       
            function initthis()
            {
            document.getElementById("del_event").disabled=true;
            }
            
                      
           
            function dis_enable_submit()
            {
            if(document.getElementById("check").checked == 1)
            {
            document.getElementById("del_event").disabled=false;
            }
            else
            {
            document.getElementById("del_event").disabled=true;
            }
            }
            
   
        
      
function date_time(id)
{
        date = new Date;
        year = date.getFullYear();
        month = date.getMonth();
        months = new Array('January', 'February', 'March', 'April', 'May', 'June', 'Jully', 'August', 'September', 'October', 'November', 'December');
        d = date.getDate();
        day = date.getDay();
        days = new Array('Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday');
        h = date.getHours();
        if(h<10)
        {
                h = "0"+h;
        }
        m = date.getMinutes();
        if(m<10)
        {
                m = "0"+m;
        }
        s = date.getSeconds();
        if(s<10)
        {
                s = "0"+s;
        }
        result = ''+days[day]+' '+months[month]+' '+d+' '+year+' '+h+':'+m+':'+s;
        document.getElementById(id).innerHTML = result;
        setTimeout('date_time("'+id+'");','1000');
        return true;
}


</script>

<script>
$(document).ready(function(){
    $('button').attr('disabled',false);
});
</script>


</head>
<body>

 
 
<form action="./accountcreate.jsp">

<%

//int accno=(int)(Math.random() * 9999);
int accno =(int) (Math.floor(1000 + Math.random() * 9000));
%>


<header>
<h2 align="center">Odisha Bank</h2>
<h3 align="center"><marquee behavior="scroll" direction="left">A complete banking solution</marquee></h3><br><br><br>
<h3 align="center">ACCOUNT CREATE</h3>
</header>

<div id="date_time">
 <script type="text/javascript">window.onload = date_time('date_time');</script>
 </div>

 <div id="container">
   	<label> ACCOUNT NUMBER :</label> <input type="text" name="accn" size="30" value="<%=accno %>" readonly="readonly" ><br><br>
   	<label> NAME :</label> <input type="text" name="nm" size="30" required autofocus><br><br>
  	<label> ADDRESS :</label> <input type="text" name="adrs" size="30" required><br><br>
  	<label> MOBILE  : </label><input type="text" name="mob" size="30" required><br><br>
  	<label> OPENING BALANCE : </label><input type="text" name="bal" size="30" required><br><br>
  	<label> DATE OF OPENING : </label><input type="date" name="dop" size="30"  required><br><br>
  	<label> EMAIL ID </label><input type="email" name="eml" size="30"  required> &nbsp;&nbsp;<br><br>
   	<label> UPLOAD IMAGE </label><input type="file" name="photo" required> &nbsp;&nbsp;<br><br>
  	<label> I agree Terms & Conditions</label><input type="checkbox" name='check' id='check' onclick="dis_enable_submit()" value='y'/>
  
 
     <input type="submit"  class="btn btn-primary"  value="CREATE ACCOUNT" class="button" id="del_event" name="del_event"  onclick="validate()" disabled> 
      <input type="reset" value="RESET" class="button" onclick="f1()" >
   
   
  <div class="parent">
  <a href="homepage.jsp" >HOME</a>
  </div>

  </div>
   
  


</form>
</body>

<div class="footer">
  <p>|| Prasanta Bank ||  || Website Designed By: Prasanta Kumar Parida ||</p>
</div>

</html>