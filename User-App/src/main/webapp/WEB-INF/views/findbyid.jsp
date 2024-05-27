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
<form:form modelAttribute="u" action="findbyid" method="post" >
<form:label path="id">Enter The Id find User Details</form:label>
<form:input path="id"/>
<form:button>Click to find Details</form:button>
<br>
<br>
</form:form>

</body>
</html>