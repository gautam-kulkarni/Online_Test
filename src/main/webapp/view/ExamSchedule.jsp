<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Scheduler</title>
<style type="text/css">


*{
margin:0;
padding:0;
outline:none;
box-sizing:border-box;
}

body{
display: flex;
align-item: center;
justify-content: center;
min-height: 100vh;
background:  #00986f;
}

.wrapper{
width: 60vw;
background: #fff;
padding: 30px;
box-shadow: 0px 0px 10px rgba(0,0,0,0.1);

}
.wrapper .input-data{
height:40px;
width: 100%;
font-size:16px;
position: relative;
}

.wrapper .input-data input{
height: 100%;
width: 100%;
border: none;
font-size: 14px;
border-bottom: 2px solid silver;
}

.wrapper .input-data label{
    position: absolute;
    bottom: 40px;
    left: 0px;
    Color: grey;
    pointer-events: none;
}

}


input[type="submit"]{
	position: absolute;
	width: 20vw;
	height: 50px;
	border: 1px solid;;
	background: #00986f;
	border-radius: 25px;
	font-size:18px;
	color: #e9f4fb;
	font-weight: 700;
	cursor: pointer;
	outline: none;
	margin: 55px 20px 24px 2px;
	
	}
	input[type="submit"]:hover{
	border-color: #00986f;
	transition: .5s;
	}
	select{
	position:absolute;
	width:15vw;
	padding: 5px 10px;
	font-size:16px;
	border-radius:20px;
	
	
	}
	
	.view a{
	display: block;
    display: block;
    padding: 10px 10px 10px 10px;
    height: 51px;
    width: 235px;
    background: #00986f;
    position: absolute;
    margin: 55px 326px;
    place-items: baseline;
    text-align: center;
    border-radius: 32px;
    text-decoration: none;
    font-size: 20px;
    font-weight: 700;
    position: absolute;
    color: #fff;
}

.back a{
	display: block;
    padding: 10px 10px 10px 10px;
    height: 46px;
    width: 180px;
    background: red;
    margin: 10px 40px;
    place-items: baseline;
    text-align: center;
    border-radius: 32px;
    text-decoration: none;
    font-size: 20px;
    font-weight: 700;
    position: fixed;
    color: #fff;
    top: 0;
}

</style>
</head>
<body>
<br></br>
<br></br>
<br></br>
<br></br>

<div class="wrapper">
<form action="ExamS"  method="post">
<div class="input-data">
  <input type="time" id="time" name="Time" required>
  <label for="time">Time</label>
  <br><br>
  </div>
  <div class="input-data">
  </div>
  
  <div class="input-data">
  <input type="date" id="date" name="date" required>
  <label for="date"> Date </label>
  <br><br>
  </div>
  <div class="input-data">
  </div>
  <select name="qcategory" id="qcat">
  <option selected class= "selected">Subject</option>
    <option value="Verbal">Verbal</option>
    <option value="Quantitative">Quantitative</option>
    <option value="General Knowledge">General knowledge</option>
  </select>
  <br><br>
  <div class="view"><input   onclick="validateDateTime(event)"  type="submit" value="Submit" 
  	style="display: block;
    display: block;
    padding: 10px 10px 10px 10px;
    height: 51px;
    width: 235px;
    background: #00986f;
    position: absolute;
    margin: 49px 0px;
    place-items: baseline;
    text-align: center;
    border-radius: 32px;
    text-decoration: none;
    font-size: 20px;
    font-weight: 700;
    position: absolute;
    color: #fff;"></div>
</form>
</div>

<div class="back">
  <a href="goback" type="Sumbit">Back</a>
  </div>
  <script type="text/javascript">
	function validateDateTime(event) {
		        var subject = document.getElementById("qcat").value;
		        var time = document.getElementById("time").value;
		        var date = document.getElementById("date").value;
		        if (subject.trim() === "" || time.trim() === "" || date.trim() === "") {
		          alert("!!! Please fill all the required fields !!!")
		          event.preventDefault();
		          return;
		        }
		        var selectedDateTime = new Date(date + 'T' + time);
		        var currentDateTime = new Date();
		        if (selectedDateTime < currentDateTime) {
		          alert("!!! Please select a future date and time !!!");
		          event.preventDefault();
		        }
		        else {
		          alert("Schedule submitted successfully !!!")
		        }
		      }
  </script>

</body>
</html>