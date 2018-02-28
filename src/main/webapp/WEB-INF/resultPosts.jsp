<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 27.02.2018
  Time: 23:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Posts</title>
</head>
<body>
RESULT:
<div style="float: left">
    <c:forEach items="${posts}" var="post">
        <a href="/getPost?id=${post.id}">
            <div style="float: left">
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
</div>

</body>
</html>
