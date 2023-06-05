<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport"
		content="width=device-width,
						initial-scale=1.0">
	<title>Login</title>
	
	<style type="text/css">
	body{
	margin:0;
	padding:0;
	font-family:montserrat;
	background:linear-gradient(120deg, #2980b9,#8e44ad);
	height:100vh;
	overflow:hidden;
	}
	.center{
	position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    width: 400px;
    background: white;
    border-radius: 10px;
    height: 336px;
    text-align: center;
	}
	
	.center h1{
	text-align: center;
    padding: 0 0 20px 0;
	
	}
	
	.center form{
	padding: 0 40px;
    box-sizing: border-box;
	
	}
	
	form .txt_field{
	position: relative;
   
	}
	.txt_field input{
	width: 100%;
	padding: 10px;
	height: 40px;
	font-size: 16px;
	border: none;
	outline: none;
	backgorund: none;
	}
	
	.txt_field label{
	position: absolute;
    top: 50%;
    left: 5px;
    color: #adadad;
    transform: translateY(-50%);
    font-size: 16px;
    pointer-events: none;
    transition: .5s;
	
	}
	.txt_field  span::before{
	content: '';
    position: absolute;
    top: 40px;
    left: 0px;
    width: 100%;
    height: 2px;
    background: #2691d9;
    transition: .5s;
	
	}
	.txt_field input:focus ~ label,
	.txt_field input:valid ~ label{
	top: -5px;
	color: #2691d9;
	}
	.txt_field input:focus ~ before,
	.txt_field input:valid ~ before{
	width: 100%;
	}
	.pass{
	margin:20px 0 30px 0px;
	cursor: pointer;
	color: black;
	text-align: end;
		
	}
	.pass:hover{
	color:Blue;
	}
	
	a{
	text-decoration: none;
	}
	
	input[type="submit"]{
	width: 100%;
	height: 50px;
	border: 1px solid;;
	background: #2691d9;
	border-radius: 25px;
	font-size:18px;
	color: #e9f4fb;
	font-weight: 700;
	cursor: pointer;
	outline: none;
	
	}
	input[type="submit"]:hover{
	border-color: #2691d9;
	transition: .5s;
	}
	.Register{
	margin: 30px 45px 20px 55px;
	color:black;
	}
	
	.Register:hover{
	color:blue;
	}
	</style>
</head>

<body>
<div class="center">
<h1>Login</h1>
			<div class="login-box">
			
			<form action="Login" method="post">
			
			<div class="txt_field">
				<input type="email"
					class="email ele"
					 name="email"  required>
					 <label>Email Address</label>
					 <span> </span>
			</div>
			
			<div class="txt_field">
				<input type="password"
					class="password ele"
					name="password" required>
					<label>Password</label>
					<span></span>
			</div>
				<input type="submit" value="Login">
			<div >
					<a href="Registerpage"><div class="Register">Not a Member? Register Here</div></a>
			</div>
			</form>
			</div>
</div>	
<script type="text/javascript">
var s="${msg}";
if(s.length!=0){
	alert(s);
}
</script>
</body>

</html>
