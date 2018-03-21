<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 19.03.2018
  Time: 23:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>${user.name} ${user.surname}</title>
</head>
<body>

NAME:${user.name}<br>
SURNAME:${user.surname}<br>
EMAIL:${user.email}<br>
POSTS:
<ul>
    <c:forEach items="${posts}" var="post">
        <img src="/image?fileName=${post.picture.pic1}" width="100"/>
        <li>${post.mark} ${post.year} </li>
    </c:forEach>
</ul>
</body>
</html>
