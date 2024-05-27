<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <link href="<%= request.getContextPath() %>/WEB-INF/views/css/style.css" rel="stylesheet" type="text/css">
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
   
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="btn-group" role="group">
<button onclick="openRegisterform()" class="btn btn-success"> Register</button>
<button onclick="openupdateform()" class="btn btn-primary"> Update User</button>
<button onclick="verifybyphone()" class="btn btn-dark">Login via Mobile</button>
<button onclick="verifybyemail()" class="btn btn-dark">Login via Email</button>
<button onClick="deleteuser()" class="btn btn-danger">Remove User</button>
</div>
<script >
function openRegisterform() {
    window.location.href = "open-login"; 
}
function openupdateform() {
    window.location.href = "open-update";
}

function verifybyphone() {
	window.location.href= "open-verifybyphone";
}
function verifybyemail() {
	window.location.href= "open-verifybyemail";
}
function deleteuser() {
	window.location.href= "open-deleteuser";
}
</script>
</body>
</html>