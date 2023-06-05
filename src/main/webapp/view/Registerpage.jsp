<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Page</title>

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
<h1>Register</h1>
<div class="signup-box">
			<form action="Register">
			<div>
			
			<div class="txt_field">
			<span></span>
				<input type="text"
					class="name ele"
					name="username"
					required>
					<label>Name</label>
			</div>
			<div class="txt_field">
					<span></span>
				<input type="email"
					class="email ele"
					name="email"
					required>
					<label>Email address</label>
			</div>
			<div class="txt_field">
					<span></span>
				<input type="password"
					class="password ele"
					name = "password"
					required>
					<label>Password</label>
			</div>
			<div class="txt_field">
					<span></span>
				<input type="password"
					class="password ele"
					required name="Confirm_password">
					<label>Confirm Password</label>
			</div>
				<input type="submit" value="Register">
				<span></span>
				</div>
			</form>
			</div>
</div>
</body>
</html>