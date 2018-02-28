<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
ALL POSTS:<br>
SERCH:<br>
<div>
    <%--<form action="/search" method="get">--%>
    <%--MARK: <select name="mark">--%>
    <%--<option value="" disabled selected></option>--%>
    <%--<c:forEach items="${marks}" var="mark">--%>
    <%--<option>${mark}</option>--%>
    <%--</c:forEach>--%>
    <%--</select>--%>

    <%--YEAR: <select name="year">--%>
    <%--<option value="" disabled selected></option>--%>
    <%--<c:forEach items="${years}" var="year">--%>
    <%--<option>${year}</option>--%>
    <%--</c:forEach>--%>
    <%--</select>--%>

    <%--PRICE <input type="number" name="price">--%>
    <%--<input type="submit" value="SEARCH">--%>
    <%--</form>--%>
    <spring:form action="/search" method="post" modelAttribute="post">
        <spring:label path="mark">Mark:</spring:label>
        <spring:select path="mark"> *
            <form:option disabled="false" value="">
            </form:option>
            <c:forEach items="${marks}" var="mark">
                <form:option value="${mark}">
                    ${mark}
                </form:option>
            </c:forEach>
        </spring:select>

        <spring:label path="year">Year:</spring:label>
        <spring:select path="year">
            <form:option disabled="false" value="0">
            </form:option>
            <c:forEach items="${years}" var="year">
                <form:option value="${year}">
                    ${year}
                </form:option>
            </c:forEach>
        </spring:select><br>

        <spring:label path="price">Price:</spring:label>
        <spring:input  path="price"/> *<br>
        <input type="submit" value="SEARCH">
    </spring:form>
</div>
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
