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
<form:form modelAttribute="u" method="post" action="deleteuser">
<form:label path="id">Enter the Id to Delete The User:</form:label>
<form:input path="id"/>
<form:button>Click here to delete</form:button>
</form:form>

</body>
</html>