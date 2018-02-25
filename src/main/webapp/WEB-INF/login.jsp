<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 21.02.2018
  Time: 16:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<div>
    LOGIN:
    <form action="<c:url value="/loginView"/> " method="post" name="loginForm">
        EMAIL  <input type="text" placeholder="email" name="j_email"/><br>
        PASSWORD  <input type="password" placeholder="password" name="j_password"/><br>
        <input type="submit" value="LOGIN"><br>
    </form>
</div>
</body>
</html>
