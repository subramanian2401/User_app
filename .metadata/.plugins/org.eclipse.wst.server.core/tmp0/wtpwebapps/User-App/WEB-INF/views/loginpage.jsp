<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Registration Form</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<style>
  body {
    background-color: #f8f9fa;
  }
  .form-container {
    max-width: 500px;
    margin: 0 auto;
    padding: 30px;
    background-color: #fff;
    border-radius: 10px;
    box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.1);
  }
  .form-title {
    text-align: center;
    margin-bottom: 30px;
  }
  .form-group {
    margin-bottom: 20px;
  }
  .form-label {
    color: #495057;
  }
</style>
</head>
<body>

<div class="container">
  <div class="row">
    <div class="col-md-8 offset-md-2">
      <div class="form-container">
        <h2 class="form-title">Register Your Self</h2>
        <form:form modelAttribute="u" action="save" method="post">
          <div class="form-group">
            <label class="form-label" for="name">Enter The Name</label>
            <form:input path="name" placeholder="Your Name" id="name" class="form-control"/>
          </div>
          <div class="form-group">
            <label class="form-label" for="email">Enter The Email ID</label>
            <form:input path="email" id="email" placeholder="Yourmail@gmail.com" class="form-control"/>
          </div>
          <div class="form-group">
            <label class="form-label" for="gender">Enter The Gender</label>
            <form:input path="gender" id="gender" placeholder="male? Female? Others?" class="form-control"/>
          </div>
          <div class="form-group">
            <label class="form-label" for="phone">Mobile Number</label>
            <form:input path="phone" id="phone" placeholder="Your mobile number" class="form-control"/>
          </div>
          <div class="form-group">
            <label class="form-label" for="password">Enter The Password</label>
            <form:input path="password" id="password" placeholder="YourPhoneNumber" type="password" class="form-control"/>
          </div>
          <center><button type="submit" class="btn btn-warning">Register</button></center>
        </form:form>
      </div>
    </div>
  </div>
</div>

</body>
</html>
