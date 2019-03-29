<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Password Change- Prasanta Bank</title>

<style type="text/css">
html, body {
	width: 100%;
	height: 100%;
	font-family: "Helvetica Neue", Helvetica, sans-serif;
	color: white;
	-webkit-font-smoothing: antialiased;
}


label {
	color: black;
    display: inline-block;
    margin-left: 15px;
    padding-top: 30px;
    font-size: 14px;
    font-weight: bold;
}
}


#container {
	position: fixed;
    width: 640px;
    height: 380px;
    top: 50%;
    left: 50%;
    margin-top: -140px;
    margin-left: -170px;
    background: #f9fdfd;
    border-radius: 22px;
    border: 5px solid #ccc;
    box-shadow: 0 1px 2px rgba(0, 0, 0, .1);
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
input {
	font-family: "Helvetica Neue", Helvetica, sans-serif;
	font-size: 12px;
	outline: none;
}

form {
	margin: 0 auto;
	margin-top: 20px;
}  


input[type=submit] {
	float: right;
	margin-right: 20px;
	margin-top: 20px; 
	width: 210px;
	height: 30px;
	font-size: 14px;
	font-weight: bold;
	color: black;
/* 	background-color: ; /*IE fallback*/ */
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
     
</style>


<script>
$(document).ready(function(){
    $('button').attr('disabled',false);
});
</script>



<script type="text/javascript">


var check = function() {
    if (document.getElementById('newpwd').value ==
        document.getElementById('repwd').value) {
        document.getElementById('message').style.color = 'green';
        document.getElementById('message').innerHTML = 'MATCHED';
        document.getElementById("btn").disabled = false;
    } else {
    		document.getElementById('message').style.color = 'red';
        document.getElementById('message').innerHTML = 'NOT MATCHING';
        document.getElementById("btn").disabled = true;
    }
}


function validateForm() {
    var x = document.forms["myForm"]["newpwd"].value;
    var y = document.forms["myForm"]["repwd"].value;
    if (x==y) {
      
    }
        else
        	{
        	alert("Password Not Matched");      
        	}
    }



</script>

</head>
<body>
<form name="myForm" action="./afterpwdupdate.jsp" method="post">

<div id="container">
<label>USER NAME</label><input type="text" name="usrnm" required="required">
<label>OLD PASSWORD</label><input type="password" name="oldpwd" required="required">
<label>NEW PASSWORD</label><input type="password" name="newpwd" required="required">
<label>RETYPE NEW PASSWORD</label><input type="password" name="repwd" required="required">
	<div id="lower">
		
		<input type="submit" id="btn" class="button"  value="UPDATE PASSWORD">
	
	
</form>
		<form method="post" action="./homepage.jsp">
			<input type="submit" id="btn" value="BACK" name="btn-crt">
			
		</form>
	</div>
</div>  
</body>
</html>