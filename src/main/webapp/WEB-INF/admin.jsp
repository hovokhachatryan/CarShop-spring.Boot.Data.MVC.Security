<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 25.02.2018
  Time: 15:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin</title>
    <link rel="stylesheet" type="text/css" href="style/style.css">

</head>
<body>
<img width="100%" height="100" src="img/fon.jpg">
<div class="addPost-logoCarShop">
    <a  href="/adminPage"><img style="width:130px;height:48px" src="img/LogoCarShopddad.jpg"></a>
</div>
<div class="index-login-cars">
    <ul>
        <li><spring:message key="main.cars"/>
            <ul>
                <a href="/getPostByMarkLogin?mark=Mercedes-Benz">
                    <li>Mercedes-Benz</li>
                </a>
                <a href="/getPostByMarkLogin?mark=Bmw">
                    <li>Bmw</li>
                </a>
                <a href="/getPostByMarkLogin?mark=Audi">
                    <li>Audi</li>
                </a>
                <a href="/getPostByMarkLogin?mark=Lexus">
                    <li>Lexus</li>
                </a>
                <a href="/getPostByMarkLogin?mark=Toyota">
                    <li>Lexus</li>
                </a>
            </ul>
        </li>

    </ul>
</div>
<div class="indexLogin-add">
    <a href="/addPostView">
        <ul>
            <li> <spring:message key="main.add"/></li>
        </ul>
    </a>
</div>
<div class="indexLogin-myPage">
    <a href="/profile?id=${user.id}"><ul><li> <spring:message key="main.profile"/> </li></ul></a>
</div>
<div class="index-login-logout">
    <a href="/logout"><ul><li> <spring:message key="main.logout"/> </li></ul></a>
</div>
<div class="index-armFlag">
    <a  href="?lang=hy"><img  src="../img/if_AM_167756.png"></a>
</div>

<div class="index-ruFlag">
    <a  href="?lang=ru"><img  src="../img/if_RU_167813.png"></a>
</div>

<br><br><br>
<div style="    margin-top: 3%;
    margin-left: 6%;">
    <ul>
    <c:forEach items="${users}" var="user">
        <a href="/profileLook?id=${user.id}"><li> ${user.name} ${user.surname}</a> <a style="color: red" href="/deleteUser?id=${user.id}"><li><spring:message key="main.delete"/></li></a><br><br>
    </c:forEach>
    </ul>
</div>
<br>

<div class="wrapper" style="    margin-left: 28%;
    margin-top: -4.9%;">
    <c:forEach items="${posts}" var="post">
        <a class="image" href="/getPostLogin?id=${post.id}">
            <img src="/image?fileName=${post.picture.pic1}" width="240" height="200"/><br>
            <div style="margin-left: -43%;color: #8bc1ff">${post.mark}
                    ${post.model}<br>
            </div>
            <br>
            <div style="margin-left:-60%;color: black"> ${post.year}</div>
            <div style=" margin-top:-6.9%;margin-left: 60%;color: black"> $ ${post.price}<br></div>
            <br>
            <a style="    margin-left: -24.5%;
    margin-top: 30%;" href="/deletePost?id=${post.id}"><spring:message key="main.delete"/></a>
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
