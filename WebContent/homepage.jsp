<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="allstyle.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">

<style>

body {
    background-color: lightblue;
}

a:link, a:visited {
    background-color: #007780;
    color: white;
    padding: 4px 20px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-weight: bold;
    
}


a:hover, a:active {
    background-color: #300080;
}

#date_time{
text-align: center;
color: black;
font-weight: bold;

}

.user-label{

  text-align: right;
  background-color: white;
  color: black;
  font-weight: bold;
  padding: 2px;

 


}
h3{
color: red;
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



.logoutbtn{

background-color: #4CAF50; /* Green */
  border: none;
  color: white;
    padding: 5px 10px;

  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 12px;
  margin: 4px 2px;
  -webkit-transition-duration: 0.4s; /* Safari */
  transition-duration: 0.4s;
  cursor: pointer;
  
  position:fixed;
      right: 60px;
   top:5px;
   font-weight: bold;

}


.logoutbtn:hover {

  background-color: red;
  color: white;
 
}
.btnaccn:hover{
  background-color: #008CBA;
  color: white;

}

.btnaccn{

    background-color: #4CAF50;
    border: none;
    color: white;
    padding: 5px 10px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 12px;
    margin: 4px 2px;
    -webkit-transition-duration: 0.4s;
    transition-duration: 0.4s;
    cursor: pointer;
    position: fixed;
    /* right: 377px; */
    top: 210px;
    font-weight: bold;
    left: 50px;
}


.btndeposit{
 background-color: #4CAF50;
    border: none;
    color: white;
    padding: 5px 10px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 12px;
    margin: 4px 2px;
    -webkit-transition-duration: 0.4s;
    transition-duration: 0.4s;
    cursor: pointer;
    position: fixed;
    /* right: 377px; */
    top: 210px;
    font-weight: bold;
    left: 250px;

}

.btnwithdraw{

 background-color: #4CAF50;
    border: none;
    color: white;
    padding: 5px 10px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 12px;
    margin: 4px 2px;
    -webkit-transition-duration: 0.4s;
    transition-duration: 0.4s;
    cursor: pointer;
    position: fixed;
    /* right: 377px; */
    top: 210px;
    font-weight: bold;
    left: 450px;

}

.btnblnc{

 background-color: #4CAF50;
    border: none;
    color: white;
    padding: 5px 10px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 12px;
    margin: 4px 2px;
    -webkit-transition-duration: 0.4s;
    transition-duration: 0.4s;
    cursor: pointer;
    position: fixed;
    /* right: 377px; */
    top: 210px;
    font-weight: bold;
    left: 650px;

}

.btnstmnt{

    background-color: #4CAF50;
    border: none;
    color: white;
    padding: 5px 10px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 12px;
    margin: 4px 2px;
    -webkit-transition-duration: 0.4s;
    transition-duration: 0.4s;
    cursor: pointer;
    position: fixed;
    /* right: 377px; */
    top: 210px;
    font-weight: bold;
    left: 850px;

}

.btntransfer{
    background-color: #4CAF50;
    border: none;
    color: white;
    padding: 5px 10px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 12px;
    margin: 4px 2px;
    -webkit-transition-duration: 0.4s;
    transition-duration: 0.4s;
    cursor: pointer;
    position: fixed;
    /* right: 377px; */
    top: 210px;
    font-weight: bold;
    left: 1050px;

}

.btntable{

background-color: #4CAF50;
    border: none;
    color: white;
    padding: 5px 10px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 12px;
    margin: 4px 2px;
    -webkit-transition-duration: 0.4s;
    transition-duration: 0.4s;
    cursor: pointer;
    position: fixed;
    /* right: 377px; */
    top: 210px;
    font-weight: bold;
    left: 1250px;

}

.btnupwd{

    background-color: #4CAF50;
    border: none;
    color: white;
    padding: 5px 10px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 12px;
    margin: 4px 2px;
    -webkit-transition-duration: 0.4s;
    transition-duration: 0.4s;
    cursor: pointer;
    position: fixed;
    right: 170px;
    top: 5px;
    font-weight: bold;
    /* left: 1250px; */
    
}

.btnupwd:hover {
 background-color: #008CBA ;
  color: white;
}

  


</style>


<script type="text/javascript">

function date_time(id)
{
        date = new Date;
        year = date.getFullYear();
        month = date.getMonth();
        months = new Array('January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December');
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



</head>
<body>

<!-- <img src="bnk.jpg" height="100px" width="300px" > -->

  <i class="fa fa-sign-out" aria-hidden="true"></i>

<form action="" target="main">
<h1 align="center">Welcome</h1>


<div class="user-label">
  <%String fnm = session.getAttribute("username").toString().toUpperCase(); %>
    <label>Welcome: <%=fnm%></label>
   
 </div>
 

 <div id="date_time">
 <script type="text/javascript">window.onload = date_time('date_time');</script>
 </div>
  
 

<h3 align="center"><marquee behavior="scroll" direction="left">A complete banking solution</marquee></h3><br><br><br>




<div class="w3-container">
 <div class="w3-panel w3-blue w3-round-xlarge">
   


<%-- 

<input type="button" value="CREATE ACCOUNT" onclick="openPage('account.jsp')" /><br><br>
<input type="button" value="DEPOSIT TO ACCOUNT"><br><br>
<input type="button" value="WITHDRAW FROM ACCOUNT"><br><br>
<input type="button" value="ACCOUNT BALANCE CHECK"><br><br>
<input type="button" value="ACCOUNT STATEMENT"><br><br>
<input type="button" value="TRANSFER"><br><br>

--%> 


<!-- 
<a href="account.jsp">CREATE ACCOUNT</a> &nbsp;&nbsp;&nbsp;
<a href="deposit.jsp">DEPOSIT TO ACCOUNT</a>&nbsp;&nbsp;&nbsp;
<a href="withdraw.jsp">WITHDRAW ACCOUNT</a>&nbsp;&nbsp;&nbsp;
<a href="balancechk.jsp">ACCOUNT BALANCE CHECK</a>&nbsp;&nbsp;&nbsp;
<a href="statement.jsp">ACCOUNT STATEMENT</a>&nbsp;&nbsp;&nbsp;
<a href="transfer.jsp">TRANSFER</a>&nbsp;&nbsp;&nbsp;
<a href="acctable.jsp">ALL ACCOUNT</a>&nbsp;&nbsp;&nbsp;
<a href="pwdupdate.jsp">UPDATE PASSWORD</a>&nbsp;&nbsp;&nbsp;
<a href="login.jsp">LOGOUT</a>&nbsp;&nbsp;&nbsp;  -->


  
  </div>
</div>


</form>
<form align="right" name="form1" method="post" action="./login.jsp">
<!-- <button class="logoutbtn" <i class="fa fa-sign-out-alt"></i> >Logout</button> -->
<button class="logoutbtn"> <i class="fas fa-sign-out-alt"></i> &nbsp; Logout</button>
</form>

 <form align="right" name="form1" method="post" action="./pwdupdate.jsp">
<button class="btnupwd"><i class="fas fa-edit"></i> &nbsp; Update Password</button>
 </form>
  
  
  
 <form method="post" action="./account.jsp">
<button class="btnaccn"><i class="fas fa-user-plus"></i> &nbsp; ACCOUNT OPENING</button>
  </form>
   <form method="post" action="./deposit.jsp">
<button class="btndeposit"><i class="fas fa-rupee-sign"></i> &nbsp; DEPOSIT</button>
  </form>
   <form method="post" action="./withdraw.jsp">
<button class="btnwithdraw"><i class="fas fa-rupee-sign"></i> &nbsp;WITHDRAW</button>
  </form>
   <form method="post" action="./balancechk.jsp">
<button class="btnblnc"><i class="fas fa-search"></i> &nbsp; BALANCE CHECK</button>
  </form>
   <form method="post" action="./statement.jsp">
<button class="btnstmnt"><i class="fas fa-bars"></i> &nbsp; STATEMENT</button>
  </form>
   <form method="post" action="./transfer.jsp">
<button class="btntransfer"><i class="fas fa-exchange-alt"></i> &nbsp; TRANSFER</button>
  </form>
  
    <form method="post" action="./acctable.jsp">
<button class="btntable">ALL ACCOUNT</button>
  </form>
  

  
   




</body>

<div class="footer">
  <p>|| Prasanta Bank ||  || Website Designed By: Prasanta Kumar Parida ||</p>
</div>

</html>