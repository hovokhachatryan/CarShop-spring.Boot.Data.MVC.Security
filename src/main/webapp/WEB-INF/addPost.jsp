<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
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

<%--<spring:form action="/addPost" modelAttribute="post" method="post" enctype="multipart/form-data">--%>
    <%--MARK: <spring:input path="mark" title="mark" /><br>--%>
    <%--YEAR: <spring:input path="year" title="year"/><br>--%>
    <%--PRICE: <spring:input path="price" title="price"/><br>--%>
    <%--COLOR: <spring:input path="color" title="color"/><br>--%>
    <%--TEKLEPHONE: <spring:input path="userTelephone" title="telephone"/><br>--%>
    <%--<input type="file" name="image">--%>
    <%--&lt;%&ndash;<input value="${currentUser.user}" type="hidden" name="id">&ndash;%&gt;--%>
    <%--<input type="submit" value="ADD POST">--%>
<%--</spring:form>--%>
<spring:form action="/addPost" method="post" modelAttribute="post" enctype="multipart/form-data">
    <spring:label path="mark">Mark:</spring:label>
    <spring:input path="mark"/><br>

    <spring:label path="year">Year:</spring:label>
    <spring:input path="year"/><br>

    <spring:label path="price">Price:</spring:label>
    <spring:input path="price"/><br>

    <spring:label path="color">Color:</spring:label>
    <spring:input path="color"/><br>

    <spring:label path="userTelephone">Telepohne:</spring:label>
    <spring:input path="userTelephone"/><br>
    <%--<spring:select  items="${allCategories}" itemLabel="name"></spring:select><br>--%>
    <%--<spring:select path="brand" items="${allBrands}" itemLabel="name"></spring:select><br>--%>
    <label for="image">Image:</label>
    <input type="file" id="image" name="image"/><br>
    <input type="submit" value="ADD">
</spring:form>
</body>
</html>
