<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 26.02.2018
  Time: 21:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
    <link rel="stylesheet" type="text/css" href="style/style.css">
</head>
<body>
<div>
    <img width="100%" height="100" src="img/fon.jpg">
    <div class="indexLogin-logoCarShop">
        <a  type="submit" href="/loginSuccess"><img style="width:130px;height:48px" src="img/LogoCarShopddad.jpg"></a>
    </div>
    <div class="index-login-cars">
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
    <div class="indexLogin-myPage">
        <a href="#"><ul><li> Իմ Էջը </li></ul></a>
    </div>
    <div class="index-login-logout">
        <a href="/logout"><ul><li> Ելք </li></ul></a>
    </div>

    <style>
        a[type=submit]:hover {
            background-color: #909ca0;
        }

    </style>
    <%--<div style="margin-top:0.5%">--%>
    <%--<img width="100%" height="700"src="../img/LoginFon.jpg">--%>
    <%--</div>--%>
    <%--<a href="/logout">LOGOUT</a><br><br>--%>
    <div class="wrapper">
        <c:forEach items="${posts}" var="post">
            <a href="/getPost?id=${post.id}">
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
</body>
</html>
