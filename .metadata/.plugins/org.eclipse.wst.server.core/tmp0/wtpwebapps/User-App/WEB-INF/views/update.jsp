<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form:form modelAttribute="u" action="update" method="post" >
<form:label path="id">Enter The Id</form:label>
<form:input path="id"/>
<br>
<br>
<form:label path="name">Enter The Name</form:label>
<form:input path="name"/>
<br>
<br>
<form:label path="email">Enter The Email ID</form:label>
<form:input path="email"/>
<br>
<br>
<form:label path="gender">Enter The Gender</form:label>
<form:input path="gender"/>
<br>
<br>
<form:label path="phone">Enter The Phone number</form:label>
<form:input path="phone"/>
<br>
<br>
<form:label path="password">Enter The Password</form:label>
<form:input path="password"/>
<br>
<br>
<form:button>Click Here to Update</form:button>

</form:form>

</body>
</html>