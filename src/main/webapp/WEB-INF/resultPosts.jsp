<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Posts</title>
    <link rel="stylesheet" type="text/css" href="style/style.css">
</head>
<body>
<img width="100%" height="100" src="img/fon.jpg">
<div class="addPost-logoCarShop">
    <a type="submit" href="/home"><img style="width:130px;height:48px" src="img/LogoCarShopddad.jpg"></a>
</div>
<div class="addPost-car">
    <ul>
        <li>
            <spring:message key="main.cars"/>
            <ul>
                <a href="/getPostByMark?mark=Mercedes-Benz">
                    <li>Mercedes-Benz</li>
                </a>
                <a href="/getPostByMark?mark=Bmw">
                    <li>Bmw</li>
                </a>
                <a href="/getPostByMark?mark=Audi">
                    <li>Audi</li>
                </a>
                <a href="/getPostByMark?mark=Lexus">
                    <li>Lexus</li>
                </a>
                <a href="/getPostByMark?mark=Toyota">
                    <li>Toyota</li>
                </a>
            </ul>
        </li>

    </ul>
</div>
<div class="index-add">
    <a href="/addPostView">
        <ul>
            <li> <spring:message key="main.add"/></li>
        </ul>
    </a>
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

<div class="index-armFlag">
    <a  href="&lang=hy"><img  src="../img/if_AM_167756.png"></a>
</div>

<div class="index-ruFlag">
    <a  href="?lang=ru"><img  src="../img/if_RU_167813.png"></a>
</div>
<br><br><br><br>
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
</body>
</html>