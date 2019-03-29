<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CREATE USER</title>
<style type="text/css">


body {
      font-family: "Consolas";
      margin: 0;
      text-align: justify;
      
       
    }
    
     header {
      background-color: silver; ;
      padding: 2px;
      color: black;
      text-align: center;
    }


label { float: left; width: 300px; color: black; font-weight: bold; }
input[type=text] { float: left; width: 400px; }
input[type=password] { float: left; width: 400px; }

.button {
width: 150px;
text-align: center;
height: 30px;
background-color: #4CAF50; /* Green */
border: none;
color: white;
text-align: center;
text-decoration: none;
display: inline-block;

cursor: pointer;



}
.button:hover {
    background-color: blue; /* Green */
    color: white;

}



.parent{
  text-align:center
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

#container {
    position: fixed;
width: 574px;
height: 275px;
top: 30%;
    left: 50%;
    margin-top: -140px;
    margin-left: -170px;
	background: #c5f7fb;
    border-radius: 22px;
    border: 5px solid #ccc;
    box-shadow: 0 1px 2px rgba(0, 0, 0, .1);
	
}


input[type=text]{

font-weight: bold;
     font-size: small;

}


  input[type=submit] {
    float: right;
    margin-right: 20px;
   margin-top: 39px;
    width: 100px;
   height: 31px;
    font-size: 14px;
    font-weight: bold;
    color: black;
   
  
   
    cursor: pointer;
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
    cursor: pointer;
}

.parent{
  text-align:center;
  margin-right: 20px;
   margin-top: 60px;
width: 550px;
    height: 30px;
  
}




</style>




<script type="text/javascript">


var check = function() {
    if (document.getElementById('password').value ==
        document.getElementById('confirm_password').value) {
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
    var x = document.forms["myForm"]["pwd"].value;
    var y = document.forms["myForm"]["cnfpwd"].value;
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
<form  name="myForm" action="./afterusercreate.jsp" onsubmit="validateForm()" method="post">
 
 
 <div id="container">


<label>USENAME</label><input type="text" name="un" required><br><br>
<label>NAME</label><input type="text" name="nm" required><br><br>

<label>PASSWORD</label><input type="password" name="pwd" id="password" required  /><br><br>
<label>CONFIRM PASSWORD</label><input type="password" name="cnfpwd" id="confirm_password"  onkeyup='check();' required/>  <span id='message'></span><br><br>

<input type="submit" value="PROCEED" id="btn"> &nbsp;&nbsp;&nbsp; <input type="reset" value="RESET">

  <div class="parent">
  <a href="login.jsp">BACK</a>
</div>


</div>
</form> 



</body>
</html>