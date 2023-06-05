<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="m" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Control Desk</title>
<link rel="stylesheet" href="styles2.css">
</head>
<body>
<div class=center>
<h1>CONTROL DESK</h1>
<div class="create">
    <a href="Questions" type="Submit">Create Test</a>
   </div>
   <div class="view">
    <a href="ViewQuestionpage" type="Sumbit">View Question</a>
   </div>
   <div class="logout">
   <a href="logout" type="Submit" onclick="logout()">Logout</a>
   </div>
   <div class="Fpassword">
	<a href="ForgotPassword" class="pass">Change Password</a>
	</div> 
  </div>
  <div class="ExamS">
   <a href="Exams" type="Submit">Schedule Exam</a>
   </div>
   
   
   <!-- Table start here -->
   
<m:if test="${list.size()>0 }">   
<table class="content-table">
<thead>
<tr>
<th>Time</th>
<th>Date</th>
<th>Exam</th>
<th>Delete</th>
<!-- <th>Update</th> -->
</tr>
</thead>
<m:forEach var="exe"  items="${list}">
<tbody>
<tr>
<td>${exe.time}</td>
<td>${exe.date}</td>
<td>${exe.qcategory}</td>
<td><a href="/deleted?id=${exe.e_id}" class="delete" onclick="return confirm('Are you sure?');" style="    display: block;
    background: red;
    color: #fff;
    height: 30px;
    border-radius: 20px;
    text-decoration: none;
    font-size: 20px;
    width: 80px;
    text-align: center;
    padding: 7px 0px 0px 0px;">Delete</a></td>
</tr>
</m:forEach>
</tbody>
</table>
</m:if>
   
   
<script type="text/javascript">
var s="${msg}";
if(s.length!=0){
	alert(s);
}
</script>
</body>
</html>