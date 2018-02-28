<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
 Created by IntelliJ IDEA.
 User: User
 Date: 20.02.2018
 Time: 23:40
 To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>CarShop</title>
    <link rel="stylesheet" type="text/css" href="style/style.css">
</head>
<body>

<div>
<img width="100%" height="100" src="img/fon.jpg">
<div style="margin-left:9%;margin-top:-4.9%">
    <a  type="submit" href="/home"><img style="width:130px;height:48px" src="img/LogoCarShopddad.jpg"></a>
</div>
<div  style="margin-top:-3.7%;margin-left:1%">
    <ul>
        <li>Մեքենաներ
            <ul>
                <li>Mercedes-Benz</li>
                <li>BMW</li>
                <li>Nissan</li>
                <li>Shcoda</li>
                <li>Mitsubishi</li>
            </ul></li>



    </ul>
</div>
<div style="margin-left:74%;margin-top:-3.2%">
    <a href="/loginView"><ul><li> Մուտք </li></ul></a>
</div>
<div style="margin-left:80%;margin-top:-3.4%">
    <a href="/registerView"><ul><li> Գրանցվել </li></ul></a>
</div>

<style>
    a[type=submit]:hover {
        background-color: #909ca0;
    }

    .wrapper {
        width: 1000px;
        margin: auto;
        margin-top: 50px;
    }
    a{
    text-decoration: none;

    }

    .wrapper > a {
        display: block;
        float: left;
        width: 24%;
        background-color: #fbf9ff;
        border-radius: 5px;
        text-align: center;
        margin: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.5); /* Параметры тени */


    }
</style>
<div class="wrapper">
    <c:forEach items="${posts}" var="post">
        <a class="image" href="/getPost?id=${post.id}">
            <img src="/image?fileName=${post.picture.pic1}" width="240" height="200"/><br>
            <div style="margin-left: -43%;color: #8bc1ff">${post.mark}
                        ${post.model}<br></div>
            <br>
                       <div style="margin-left:-60%;color: black"> ${post.year}</div>
            <div style=" margin-top:-6.9%;margin-left: 60%;color: black"> $ ${post.price}<br></div>
        </a>
    </c:forEach>
</div>
</div>

<%--<spring:form action="/search" method="post" modelAttribute="post">--%>
    <%--<spring:label path="mark">Mark:</spring:label>--%>
    <%--<spring:select path="mark"> *--%>
        <%--<form:option disabled="false" value="">--%>
        <%--</form:option>--%>
        <%--<c:forEach items="${marks}" var="mark">--%>
            <%--<form:option value="${mark}">--%>
                <%--${mark}--%>
            <%--</form:option>--%>
        <%--</c:forEach>--%>
    <%--</spring:select>--%>

    <%--<spring:label path="year">Year:</spring:label>--%>
    <%--<spring:select path="year">--%>
        <%--<form:option disabled="false" value="0">--%>
        <%--</form:option>--%>
        <%--<c:forEach items="${years}" var="year">--%>
            <%--<form:option value="${year}">--%>
                <%--${year}--%>
            <%--</form:option>--%>
        <%--</c:forEach>--%>
    <%--</spring:select><br>--%>

    <%--<spring:label path="price">Price:</spring:label>--%>
    <%--<spring:input  path="price"/> *<br>--%>
    <%--<input type="submit" value="SEARCH">--%>
<%--</spring:form>--%>
</body>
</html>
