<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport"
		content="width=device-width,
						initial-scale=1.0">
	<title>Change Password</title>
	
	<style>
	
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
	}
	.center h1{
	text-align: center;
    padding: 0 0 20px 0;
    border-bottom: 1px solid sliver
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
	
	input[type="submit"]{
	margin: 30px 0px 30px 0px;
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
	
	</style>
</head>

<body>
<div class="center">
<h1>Change your Password</h1>
<form action="changepassword" method="post">
			<div class="txt_field">
				<input type="email"
					class="email ele"
					name="email"
					required>
					<label>Email</label>
					<span></span>
			</div>
			<div class="txt_field">
				<input type="password"
					class="password ele"
					name="userOldPassword"
					id="userOldPassword"
					onchange="validateOld()"
					required>
					<label>Old Password</label>
					<span></span>
			</div>
			<div class="txt_field">
				<input type="password"
					class="password ele"
					name="password"
					id="password"
					onkeyup="validateOld()"
					onchange="validatePassword()"
					required>
					<label>Password</label>
					<span></span>
			</div>
			<div class="txt_field">
				<input type="password"
					class="password ele"
					name="confirm_password"
					id="confirm_password"
					onkeyup="validatePassword()"
					required>
					<label>Confirm Password</label>
					<span></span>
			</div>
			<input type="submit" value="Next">
			</form>
</div>
	<script type="text/javascript">
	var s="${msg}";
	if(s.length!=0)
		{
		alert(s);
		}
	var password = document.getElementById("password")

	  , confirm_password = document.getElementById("confirm_password"),oldpass=document.getElementById("userOldPassword");
	
	
	function validateOld(){
	if(oldpass.value != password.value){
	password.setCustomValidity('');
	}
	else {
	password.setCustomValidity("Please enter new Password");
	  }
	}
	
	
	function validatePassword(){
	  if(password.value != confirm_password.value) {
	    confirm_password.setCustomValidity("Passwords Don't Match");
	  } else {
	    confirm_password.setCustomValidity('');
	  }
	}
	</script>
</body>

</html>
