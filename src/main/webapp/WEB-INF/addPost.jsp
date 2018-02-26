<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 22.02.2018
  Time: 21:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Post</title>
</head>
<body>
ADD POST<br>
<spring:form action="/addPost" method="post" modelAttribute="post" enctype="multipart/form-data">
    <spring:label path="mark">Mark:</spring:label>
    <spring:select path="mark"> *
        <c:forEach items="${marks}" var="mark">
            <form:option value="${mark}">
                ${mark}
            </form:option>
        </c:forEach>
    </spring:select><br>

    <spring:label path="model">Model:</spring:label>
    <spring:input path="model"/> *<br>

    <spring:label path="year">Year:</spring:label>
    <spring:select path="year">
        <c:forEach items="${years}" var="year">
            <form:option value="${year}">
                ${year}
            </form:option>
        </c:forEach>
    </spring:select><br>


    <spring:label path="price">Price:</spring:label>
    <spring:input path="price"/> *<br>

    <spring:label path="color">Color:</spring:label>
    <spring:input path="color"/> *<br>

    <spring:label path="userTelephone">Telepohne:</spring:label>
    <spring:input path="userTelephone"/><br>
    <%--<spring:select  items="${allCategories}" itemLabel="name"></spring:select><br>--%>
    <%--<spring:select path="brand" items="${allBrands}" itemLabel="name"></spring:select><br>--%>
    <label for="image">Image:</label>
    <input type="file" id="image" name="image"/> *<br>
    <input hidden type="text" name="id" value="${currentUser.user.id}">
    <input type="submit" value="ADD">
</spring:form>
</body>
</html>
