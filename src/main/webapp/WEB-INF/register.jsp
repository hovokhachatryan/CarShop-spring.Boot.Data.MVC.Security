<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 21.02.2018
  Time: 16:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
</head>
<body>
<div>
    REGISTER:
    <spring:form action="/addUser" modelAttribute="user" method="post" >
        NAME:<spring:input path="name" title="name"/> <br>
        SURNAME:<spring:input path="surname" title="surname"/><br>
        EMAIL:<spring:input path="email" title="email"/><br>
        PASSWORD:<spring:input path="password" title="password"/><br>
        <input type="submit" value="REGISTER">
    </spring:form>
</div>
</body>
</html>
