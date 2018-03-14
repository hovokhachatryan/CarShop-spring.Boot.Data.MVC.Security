<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 26.02.2018
  Time: 22:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Profile</title>
</head>
<body>
MY PROFILE:<br>
NAME:${user.name}<br>
SURNAME:${user.surname}<br>
EMAIL:${user.email}<br>

MY POSTS:
<ul>
    <c:forEach items="${posts}" var="post">
        <img src="/image?fileName=${post.picture.pic1}" width="100"/>
        <li>${post.mark} ${post.year} <a href="/deleteMyPost?id=${post.id}">X</a></li>
    </c:forEach>
</ul>
</body>
</html>
