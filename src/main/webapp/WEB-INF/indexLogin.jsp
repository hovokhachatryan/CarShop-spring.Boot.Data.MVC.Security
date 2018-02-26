<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 26.02.2018
  Time: 21:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
</head>
<body>
<%--<a href="/loginView">LOGIN</a>--%>
<br>
<%--<a href="/registerView">REGISTER</a><br><br>--%>
<a href="/logout">LOGOUT</a><br><br>
<%--<a href="/addPostView" >ADD POST</a>--%>
CARS:<br>
<div style="float: left">
    <c:forEach items="${posts}" var="post">
        <a href="/getPost?id=${post.id}">
            <div style="border: #2c2c2c solid 1px">
                <img src="/image?fileName=${post.picUrl}" width="200"/><br>
                    ${post.mark}<br>
                    ${post.model}<br>
                    ${post.year}<br>
                $ ${post.price}<br>
            </div>
        </a>
    </c:forEach>
</div>
</body>
</html>
