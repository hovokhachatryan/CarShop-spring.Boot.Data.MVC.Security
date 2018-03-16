<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 14.03.2018
  Time: 20:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>${post.year} ${post.mark} ${post.model}</title>
    <link rel="stylesheet" type="text/css" href="style/style.css">

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
                <a href="/getPostByMarkLogin?mark=MERCEDES">
                    <li>Mercedes-Benz</li>
                </a>
                <a href="/getPostByMarkLogin?mark=BMW">
                    <li>BMW</li>
                </a>
                <a href="/getPostByMarkLogin?mark=AUDI">
                    <li>AUDI</li>
                </a>
                <a href="/getPostByMarkLogin?mark=OPEL">
                    <li>OPEL</li>
                </a>
                <a href="/getPostByMarkLogin?mark=TOYOTA">
                    <li>TOYOTA</li>
                </a>
            </ul>
        </li>

    </ul>
</div>
<div class="indexLogin-myPage">
    <a href="/profile?id=${user.user.id}"><ul><li> <spring:message key="main.profile"/> </li></ul></a>
</div>
<div class="index-login-logout">
    <a href="/logout"><ul><li> <spring:message key="main.logout"/> </li></ul></a>
</div>
<img src="/image?fileName=${post.picture.pic1}" width="300"/><br>
<img src="/image?fileName=${post.picture.pic2}" width="100"/>
<img src="/image?fileName=${post.picture.pic3}" width="100"/>
<img src="/image?fileName=${post.picture.pic4}" width="100"/>
<img src="/image?fileName=${post.picture.pic5}" width="100"/>
<img src="/image?fileName=${post.picture.pic6}" width="100"/><br>
MARK:  ${post.mark}<br>
YEAR:  ${post.year}<br>
MODEL: ${post.model}<br>
PRICE: ${post.price} $<br>
COLOR: ${post.color}<br>
CONTACT: ${post.userTelephone}<br>
AUTHOR: ${post.user.name} ${post.user.surname}<br>
</body>
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

</html>
