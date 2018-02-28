<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 25.02.2018
  Time: 15:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin</title>
</head>
<body>
WELCOME ADMIN:<br>
All Users:
<ul>
    <c:forEach items="${users}" var="user">
        <li>${user.name} ${user.surname} <a href="/deleteUser?id=${user.id}">X</a></li>
    </c:forEach>
</ul>
<br>
All Posts:
<ul>
    <c:forEach items="${posts}" var="post">
        <img src="/image?fileName=${post.picture.pic1}" width="50"/>
        <li>${post.mark} ${post.year} <a href="/deletePost?id=${post.id}">X</a></li>
    </c:forEach>
</ul>

</body>
</html>
