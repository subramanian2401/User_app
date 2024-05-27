<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<style>
  .container {
    margin-top: 50px;
  }
  .form-container {
    background-color: white;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 0 10px blue;
  }
  .form-title {
    text-align: center;
    margin-bottom: 20px;
  }
  .form-group {
    margin-bottom: 20px;
  }
</style>
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-md-8 offset-md-2">
                <div class="form-container">
                    <h2 class="form-title">Registration Form</h2>
                    <form:form modelAttribute="u" action="verifybyemail" method="post">
                        <div class="form-group">
                            <form:label path="email" class="form-label">Enter The Email: </form:label>
                            <form:input path="email" class="form-control" />
                        </div>
                        <div class="form-group">
                            <form:label path="password" class="form-label">Enter The Password</form:label>
                            <form:input path="password" class="form-control" />
                        </div>
                        <form:button class="btn btn-primary" type="submit">Submit</form:button>
                    </form:form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
