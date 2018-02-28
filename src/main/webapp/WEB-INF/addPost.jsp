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
    <spring:input maxlength="20" path="model"/> *<br>

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
    <spring:input maxlength="9" path="userTelephone"/><br>
    <%--<spring:select  items="${allCategories}" itemLabel="name"></spring:select><br>--%>
    <%--<spring:select path="brand" items="${allBrands}" itemLabel="name"></spring:select><br>--%>
    <label for="image1">Image1:</label>
    <input type="file" id="image1" name="image1"/> *<br>

    <label for="image2">Image2:</label>
    <input type="file" id="image2" name="image2"/> *<br>

    <label for="image3">Image3:</label>
    <input type="file" id="image3" name="image3"/> *<br>

    <label for="image4">Image4:</label>
    <input type="file" id="image4" name="image4"/> *<br>

    <label for="image5">Image5:</label>
    <input type="file" id="image5" name="image5"/> *<br>

    <label for="image6">Image6:</label>
    <input type="file" id="image6" name="image6"/> *<br>

    <input hidden type="text" name="id" value="${currentUser.user.id}">
    <input type="submit" value="ADD">
</spring:form>
</body>
</html>
