<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
<div class="index-logo-carShop">
    <a  href="/home"><img style="width:130px;height:48px" src="img/LogoCarShopddad.jpg"></a>
</div>
<div class="index-car">
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
    <a  href="?lang=hy"><img  src="../img/if_AM_167756.png"></a>
</div>

<div class="index-ruFlag">
    <a  href="?lang=ru"><img  src="../img/if_RU_167813.png"></a>
</div>

<style>
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
    input[type=text] {
        width: 130px;
        box-sizing: border-box;
        border: 2px solid #ccc;
        border-radius: 4px;
        font-size: 16px;
        background-color: white;
        background-position: 10px 10px;
        background-repeat: no-repeat;
        padding: 12px 20px 12px 40px;
        -webkit-transition: width 0.4s ease-in-out;
        transition: width 0.4s ease-in-out;
        margin-left: 18.4%;
        margin-top: 3%;
    }

    input[type=text]:focus {
        width: 63%;
    }
</style>
<br><br>

<div>
<input style="margin-left: 18.5%;"  id="value" type="text"  placeholder=<spring:message key="placeholder.search"/> />
</div>

<div class="wrapper">
    <c:forEach items="${posts}" var="post">
        <a class="image" href="/getPost?id=${post.id}">
            <img src="/image?fileName=${post.picture.pic1}" width="240" height="200"/><br>
            <div style="margin-left: -35%;color: #8bc1ff">${post.mark.toUpperCase()}
                    ${post.model}<br>
            </div>
            <br>
            <div style="margin-left:-60%;color: black"> ${post.year}</div>
            <div style=" margin-top:-6.9%;margin-left: 60%;color: black"> $ ${post.price}<br></div>
        </a>
    </c:forEach>
</div>

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
