<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
 Created by IntelliJ IDEA.
 User: User
 Date: 20.02.2018
 Time: 23:40
 To change this template use File | Settings | File Templates.
--%>

<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>CarShop</title>
    <link rel="stylesheet" type="text/css" href="style/style.css">
    <script src="../js/jquery.js"></script>
</head>
<body>


<img width="100%" height="100" src="img/fon.jpg">
<div class="addPost-logoCarShop">
    <a type="submit" href="/loginSuccess"><img style="width:130px;height:48px" src="img/LogoCarShopddad.jpg"></a>
</div>
<div class="addPost-car">
    <ul>
        <li>
            <spring:message key="main.cars"/>
            <ul>
                <a href="/getPostByMark?mark=MERCEDES">
                    <li>Mercedes-Benz</li>
                </a>
                <a href="/getPostByMark?mark=BMW">
                    <li>BMW</li>
                </a>
                <a href="/getPostByMark?mark=AUDI">
                    <li>AUDI</li>
                </a>
                <a href="/getPostByMark?mark=OPEL">
                    <li>OPEL</li>
                </a>
                <a href="/getPostByMark?mark=TOYOTA">
                    <li>TOYOTA</li>
                </a>
            </ul>
        </li>

    </ul>
</div>
<div class="index-login">
    <a href="/loginView">
        <ul>
            <li> <spring:message key="main.login"/></li>
        </ul>
    </a>
</div>
<div class="index-register">
    <a href="/registerView">
        <ul>
            <li> <spring:message key="main.register"/></li>
        </ul>
    </a>
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

    a {
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
<br><br>

<input id="value" type="text"  placeholder=<spring:message key="placeholder.search"/> />

<div class="wrapper">
    <c:forEach items="${posts}" var="post">
        <a class="image" href="/getPost?id=${post.id}">
            <img src="/image?fileName=${post.picture.pic1}" width="240" height="200"/><br>
            <div style="margin-left: -43%;color: #8bc1ff">${post.mark}
                    ${post.model}<br>
            </div>
            <br>
            <div style="margin-left:-60%;color: black"> ${post.year}</div>
            <div style=" margin-top:-6.9%;margin-left: 60%;color: black"> $ ${post.price}<br></div>
        </a>
    </c:forEach>
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

<script>
    $('#value').keyup(function () {
        var valThis = $(this).val().toLowerCase();
        if (valThis == "") {
            $('.wrapper > a').show();
        } else {
            $('.wrapper > a').each(function () {
                var text = $(this).text().toLowerCase();
                (text.indexOf(valThis) >= 0) ? $(this).show() : $(this).hide();
            });
        }
        ;
    });
</script>


</html>
