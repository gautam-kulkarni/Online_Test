<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Question Setter</title>
<style>

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

.input-data input:focus ~ label,
.input-data input:valid ~ label{
  transform: translateY(-20px);
  
}
.wrapper .input-data label{
position: absolute;
bottom: 10px;
left: 0px;
Color: grey;
pointer-events: none;

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
  
<div class="wrapper">
  
<form action="Questions" method="post">
<div class="input-data">
  <input type="text" id="Qname" name="question" required>
  <label for="Qname">Question </label>
  <br><br>
  </div>
  <div class="input-data">
  
  </div>
  <div class="input-data">
  <input type="text" id="O1name" name="option_1" required>
  <label for="O1name">Option 1</label>
  <br><br>
  </div>
  <div class="input-data">
  </div>
  <div class="input-data">
  <input type="text" id="O2name" name="option_2" required>
  <label for="O2name">Option 2</label>
  <br><br>
  </div>
  <div class="input-data">
  </div>
  <div class="input-data">
  <input type="text" id="O3name" name="option_3" required>
  <label for="O3name">Option 3</label>
  <br><br>
  </div>
  <div class="input-data">
  </div>
  <div class="input-data">
  <input type="text" id="O4name" name="option_4" required>
  <label for="O4name">Option 4</label>
  <br><br>
  </div>
  <div class="input-data">
  </div>
  <div class="input-data">
  <input type="text" id="Aname" name="correctAnnswer" required>
  <label for="Aname">Correct Answer</label>
  <br><br>
  </div>
  <div class="input-data" >
  </div>
  <div>
  <select name="q_category" id="qcat">
  <option selected class= "selected">Question Category</option>
    <option value="Verbal">Verbal</option>
    <option value="Quantitative">Quantitative</option>
    <option value="General Knowledge">General knowledge</option>
    <option value="Science">Science</option>
    <option value="Kannada"></option>
  </select>
  
  <br><br>
  </div>
  <div>
  <input onclick="return confirm('Are you sure');" type="submit" value="Submit">
  
  <div class="view">
  <a href="ViewQuestionpage" type="Sumbit">View Question</a>
  </div>
</div>
</form>
</div>
<div class="back">
  <a href="goback" type="Sumbit">Back</a>
  </div>
 <script type="text/javascript">
 var s="${msg}";
 if(s.length!=0){
 	alert(s);
 }
</script>
</body>
</html>