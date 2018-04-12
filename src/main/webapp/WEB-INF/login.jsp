<%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="../style/style.css">
</head>
<body>
<img width="100%" height="100" src="img/fon.jpg">
<div class="addPost-logoCarShop">
    <a href="/home"><img style="width:130px;height:48px" src="img/LogoCarShopddad.jpg"></a>
</div>
<div class="login-meqenamer">
    <ul>
        <li><spring:message key="main.cars"/>
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

<div class="index-register">
    <a href="/registerView"><ul><li> <spring:message key="main.register"/> </li></ul></a>
</div>
<div class="index-armFlag">
    <a  href="?lang=hy"><img  src="../img/if_AM_167756.png"></a>
</div>

<div class="login-ruFlag">
    <a  href="?lang=ru"><img  src="../img/if_RU_167813.png"></a>
</div>


<div style="margin-top:15%;margin-left:40%;width:300px;height:300px">
    <form action="<c:url value="/loginView"/> " method="post" name="loginForm">
        <label  style="margin-left:1%;margin-top:5% ;color: #000000">  <spring:message key="main.mail"/> </label>
        <input style="margin-left:1%;width:290px;margin-top:5% ;" type="email" id="fname" name="j_email" placeholder=<spring:message key="placeholder.mail"/>>

        <label style="margin-top:5% ;margin-left:1%;color: #000000">  <spring:message key="main.password"/></label>
        <input  style="margin-top:5% ;margin-left:1%;width: 290px" minlength="5" type="password" name="j_password" placeholder=<spring:message key="placeholder.password"/>>

        <input  style="margin-top:5%;width: 290px;margin-left:1%;" type="submit" value=<spring:message key="main.login"/>>
    </form>

</div>

</body>


</html>
