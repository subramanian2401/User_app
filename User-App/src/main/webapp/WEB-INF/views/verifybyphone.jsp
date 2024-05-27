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
<form:form modelAttribute="u" action="verifybyphone" method="post" >
<form:label path="phone">Enter The Phone number</form:label>
<form:input path="phone"/>
<br>
<br>
<form:label path="password">Enter The Password</form:label>
<form:input path="password"/>
<br>
<br>
<form:button>Submit</form:button>
</form:form>
</body>
</html>