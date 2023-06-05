<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> Viewpoint</title>


<style>

.content-table{
border-collapse: collapse;
margin: 3vw  0px 0px 1vw;
font-size: 0.98em;
min-width: 600px;
border-radius: 5px 5px 0px 0px;
overflow:hidden;
box-shadow: 0 0 20px rgba(0,0,0,0.15);
position: sticky; 

}

.content-table thead th{
background-color:#00986f;
color:#fff;
text-align:left;
}
.content-table th,
.content-table td{
padding: 12px 15px;
}

.content-table tbody tr{
border-bottom: 1px solid #dddddd;

}

.content-table tbody tr:nth-of-type(even){
background-color: #f3f3f3;

}
.content-table tbody tr:last-of-type{
border-bottom: 2px solid #00986f;
}
a{
display: block;
    background: #00986f;
    color: #fff;
    height: 30px;
    border-radius: 20px;
    text-decoration: none;
    font-size: 20px;
    width: 80px;
    text-align: center;
}
btn-danger {
display: block;
    background: red;
    color: #fff;
    height: 30px;
    border-radius: 20px;
    text-decoration: none;
    font-size: 20px;
    width: 80px;
    text-align: center;

}

.back a{
	padding: 10px 10px 10px 10px;
    height: 29px;
    width: 158px;
    background: red;
    margin: 15px 1200px;
    place-items: baseline;
    text-align: center;
    border-radius: 32px;
    text-decoration: none;
    font-size: 20px;
    font-weight: 700;
    color: #fff;
}
h1{
    text-align: center;
    }
}
</style>
</head>

<body>

<div class="back">
  <a href="goback" type="Sumbit">Back</a>
  </div>
  <h1>VIEWPOINT</h1>

<c:if test="${list.size()>0 }">
<table class="content-table">
<thead>
<tr>
<th>Questions</th>
<th>Option 1</th>
<th>Option 2</th>
<th>Option 3</th>
<th>Option 4</th>
<th>Q category</th>
<th>Correct Answer</th>
<th>Delete</th>
<th>Update</th>
</tr>
</thead>
<c:forEach var="que"  items="${list}">
<tbody>
<tr>
<td>${que.question}</td>
<td>${que.option_1}</td>
<td>${que.option_2}</td>
<td>${que.option_3}</td>
<td>${que.option_4}</td>
<td>${que.q_category}</td>
<td>${que.correctAnnswer}</td>
<td><a href="/delete?id=${que.q_id}" class="btn btn-danger" onclick="return confirm('Are you sure?');">Delete</a></td>
      <td ><a href="/updatepage?questions=${que.q_id}" class="btn btn-primary">Update</a></td>
    </tr>
</c:forEach>
</tbody>
</table>
</c:if>
<script type="text/javascript">
var s="${msg}";
if(s.length!=0){
	alert(s);
}
</script>
</body>
</html>