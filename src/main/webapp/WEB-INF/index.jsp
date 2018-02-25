<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
 Created by IntelliJ IDEA.
 User: User
 Date: 20.02.2018
 Time: 23:40
 To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
</head>
<body>
<a href="/loginView">LOGIN</a>
<br>
<a href="/registerView">REGISTER</a><br><br>
<a href="/addPostView" >ADD POST</a>
CARS:<br>
<div style="float: left">
    <c:forEach items="${posts}" var="post">
        <div style="border: black solid 1px">
        <img src="/image?fileName=${post.picUrl}" width="50"/>
        ${post.mark}<br>
        ${post.year}<br>
        ${post.price}<br>

        </div>
    </c:forEach>
</div>





</body>
</html>
