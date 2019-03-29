<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Prasanta Bank-LOGIN</title>


<style type="text/css">
h1 {
	color: #08008c;
	position: fixed;
	top: 5%;
	left: 38%;
}
/* Basics */
html, body {
	width: 100%;
	height: 100%;
	font-family: "Helvetica Neue", Helvetica, sans-serif;
	color: white;
	-webkit-font-smoothing: antialiased;
}

#container {
	position: fixed;
    width: 512px;
    height: 251px;
    top: 50%;
    left: 50%;
    margin-top: -140px;
    margin-left: -170px;
    background: #f9fdfd;
    border-radius: 22px;
    border: 5px solid #ccc;
    box-shadow: 0 1px 2px rgba(0, 0, 0, .1);
}

form {
	margin: 0 auto;
	margin-top: 20px;
}

label {
	color: black;
    display: inline-block;
    margin-left: 15px;
    padding-top: 30px;
    font-size: 18px;

}

p a {
	font-size: 11px;
	color: #aaa;
	float: right;
	margin-top: -13px;
	margin-right: 20px;
	-webkit-transition: all .4s ease;
	-moz-transition: all .4s ease;
	transition: all .4s ease;
}

p a:hover {
	color: #555;
}

input {
	font-family: "Helvetica Neue", Helvetica, sans-serif;
	font-size: 12px;
	outline: none;
}

input[type=text], input[type=password] {
	color: black;
	padding-left: 10px;
	margin: 10px;
    margin-top: -27px;
    margin-left: 135px;
	width: 290px;
	height: 26px;
	border: 1px solid #c7d0d2;
	border-radius: 2px;
	font-weight: bold;
	font-size: small;
	-webkit-transition: all .4s ease;
	-moz-transition: all .4s ease;
	transition: all .4s ease;
}

#lower {
	width: 100%;
	height: 69px;
	margin-top: 2px;
	box-shadow: inset 0 1px 1px #fff;
	border-top: 1px solid #ccc;
	border-bottom-right-radius: 3px;
	border-bottom-left-radius: 3px;
}

/* 
#usr {

margin-top: 40px;
margin-left: 30px;

}

#pwd {

margin-top: 60px;
margin-left: 30px;

} */

input[type=checkbox] {
	margin-left: 20px;
	margin-top: 30px;
}

.check {
	margin-left: 3px;
	font-size: 11px;
	color: #444;
	text-shadow: 0 1px 0 #fff;
}

input[type=submit] {
	float: right;
	margin-right: 20px;
	margin-top: 20px;
	width: 120px;
	height: 30px;
	font-size: 14px;
	font-weight: bold;
	color: black;
	background-color: #acd6ef; /*IE fallback*/
	background-image: -webkit-gradient(linear, left top, left bottom, from(#acd6ef),
		to(#6ec2e8));
	background-image: -moz-linear-gradient(top left 90deg, #acd6ef 0%, #6ec2e8 100%);
	background-image: linear-gradient(top left 90deg, #acd6ef 0%, #6ec2e8 100%);
	border-radius: 5px;
	border: 1px solid #66add6;
	box-shadow: 0 1px 2px rgba(0, 0, 0, .3), inset 0 1px 0
		rgba(255, 255, 255, .5);
	cursor: pointer;
}

input[type=submit] :hover {
	background-image: -webkit-gradient(linear, left top, left bottom, from(#b6e2ff),
		to(#6ec2e8));
	background-image: -moz-linear-gradient(top left 90deg, #b6e2ff 0%, #6ec2e8 100%);
	background-image: linear-gradient(top left 90deg, #b6e2ff 0%, #6ec2e8 100%);
}

input[type=submit] :active {
	background-image: -webkit-gradient(linear, left top, left bottom, from(#6ec2e8),
		to(#b6e2ff));
	background-image: -moz-linear-gradient(top left 90deg, #6ec2e8 0%, #b6e2ff 100%);
	background-image: linear-gradient(top left 90deg, #6ec2e8 0%, #b6e2ff 100%);
}

input[type=reset] {
	float: right;
	margin-right: 20px;
	margin-top: 20px;
	width: 80px;
	height: 30px;
	font-size: 14px;
	font-weight: bold;
	color: black;
	background-color: #acd6ef; /*IE fallback*/
	background-image: -webkit-gradient(linear, left top, left bottom, from(#acd6ef),
		to(#6ec2e8));
	background-image: -moz-linear-gradient(top left 90deg, #acd6ef 0%, #6ec2e8 100%);
	background-image: linear-gradient(top left 90deg, #acd6ef 0%, #6ec2e8 100%);
	border-radius: 5px;
	border: 1px solid #66add6;
	box-shadow: 0 1px 2px rgba(0, 0, 0, .3), inset 0 1px 0
		rgba(255, 255, 255, .5);
	cursor: pointer;
}

input[type=reset]:hover {
	background-image: -webkit-gradient(linear, left top, left bottom, from(#b6e2ff),
		to(#6ec2e8));
	background-image: -moz-linear-gradient(top left 90deg, #b6e2ff 0%, #6ec2e8 100%);
	background-image: linear-gradient(top left 90deg, #b6e2ff 0%, #6ec2e8 100%);
}

input[type=reset]:active {
	background-image: -webkit-gradient(linear, left top, left bottom, from(#6ec2e8),
		to(#b6e2ff));
	background-image: -moz-linear-gradient(top left 90deg, #6ec2e8 0%, #b6e2ff 100%);
	background-image: linear-gradient(top left 90deg, #6ec2e8 0%, #b6e2ff 100%);
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

     marquee {
	    width: 100%;
	    padding: 4px 0;
	    background-color: lightblue;
	    color: blue;
	    font-weight: bold;
      }
  
    
 


</style>
<script type="text/javascript">

function validemlpwd() 
{
  if (loginform.un.value.length == 0 && loginform.pwd.value.length == 0 )
   { 
      alert("User Id and Password Can not Blank");  	
      return false; 
   }  	
}
 
</script>

</head>
<body bgcolor="gray">

<marquee direction="scroll" scrollamount="5">Please Login Here</marquee>

	<form name='loginform'    action="./afterlogin.jsp">

	<!-- 	<img src="bnk.jpg" height="60px" width="150px"> -->
		
		<!-- <h1>Welcome To Odisha Bank</h1> -->

		<!-- Begin Page Content -->
		<div id="container">
		
			<label for="username">USER ID:</label> <input type="text" id="username" name="un" required>
			<label for="password">PASSWORD:</label> <input type="password" id="password" name="pwd" required>
			<div id="lower">
				<input type="submit" value="LOGIN" name="btn-login" onclick="validemlpwd()">&nbsp;&nbsp;&nbsp;<input
					type="reset" value="RESET">
	</form>

	<form method="get" action="./usercreate.jsp">
		<input type="submit" value="CREATE USER" name="btn-crt">
	</form>

	</div>
	<!--/ lower-->
	</div>
	<!--/container-->
	<!-- End Page Content -->

</body>

<div class="footer">
  <p>|| Prasanta Bank ||  ***  Website Designed By: Prasanta Kumar Parida ***</p>
</div>

</html>   