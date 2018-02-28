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
WELCOME: ${user.user.name} ${user.user.surname}
<br>
<a href="/profile?id=${user.user.id}">MY PROFILE</a><br>
<a href="/logout">LOGOUT</a><br><br>
<a href="/addPostView" >ADD POST</a><br><br>
ALL POSTS:<br>
    <c:forEach items="${posts}" var="post">
        <a href="/getPost?id=${post.id}">
            <div style=" float: left">
            <div style="border: #2c2c2c solid 1px">
                <img src="/image?fileName=${post.picture.pic1}" width="200" height="200"/><br>
                    ${post.mark}<br>
                    ${post.model}<br>
                    ${post.year}<br>
                $ ${post.price}<br>
            </div>
            </div>
        </a>
    </c:forEach>
</body>
</html>
