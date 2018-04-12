<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 26.02.2018
  Time: 22:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>${user.user.name} ${user.user.surname}</title>
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <link rel="stylesheet" type="text/css" href="style/style.css">
</head>
<body>
<div>
    <img width="100%" height="100" src="img/fon.jpg">
    <div class="addPost-logoCarShop">
        <a  href="/loginSuccess"><img style="width:130px;height:48px" src="img/LogoCarShopddad.jpg"></a>
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
                <li style="color: black">  <spring:message key="main.add"/></li>
            </ul>
        </a>
    </div>
    <div class="index-login-logout">
        <a  style="color: black" href="/logout"><ul><li> <spring:message key="main.logout"/> </li></ul></a>
    </div>
    <div class="index-armFlag">
        <a  href="profile?id=${user.user.id}&lang=hy"><img  src="../img/if_AM_167756.png"></a>
    </div>

    <div class="indexLogin-ruFlag">
        <a  href="profile?id=${user.user.id}&lang=ru"><img  src="../img/if_RU_167813.png"></a>
    </div>
<br><br><br><br><br>
<div class="row" style="margin-left: -15%">
    <div class="col-md-4 col-md-offset-4">
        <form class="form-horizontal" action="/update">
            <fieldset>

                <legend><spring:message key="main.my profile"/></legend>

                <div class="form-group">
                    <label class="col-sm-2 control-label"><spring:message key="main.name"/> </label>
                    <div class="col-sm-10">
                        <input name="name" type="text" class="form-control" value="${user.user.name}">
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label"><spring:message key="main.surname"/></label>
                    <div class="col-sm-10">
                        <input name="surname" value="${user.user.surname}" type="text" class="form-control">
                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-sm-2 control-label"><spring:message key="main.mail"/></label>
                    <div class="col-sm-10">
                        <input name="email" value="${user.user.email}" type="text" class="form-control">
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label"><spring:message key="main.password"/></label>
                    <div class="col-sm-10">
                        <input  name="password" placeholder="<spring:message key="placeholder.new password"/>" type="password" class="form-control">
                    </div>
                </div>

    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <div class="pull-right">
                <button style="background-color: #af7723;border-color: #af7723;" type="submit" class="btn btn-primary"><spring:message key="main.update"/></button>
            </div>
        </div>
    </div>

    <div hidden class="form-group">
        <label class="col-sm-2 control-label">Id</label>
        <div class="col-sm-4">
            <input name="id" value="${user.user.id}" type="text" class="form-control">
        </div>

    </div>

    </fieldset>
    </form>
</div><!-- /.col-lg-12 -->
</div><!-- /.row -->
<br><br><br>
    <legend style="margin-left: 24%;width: 38%;"><spring:message key="main.my posts"/> </legend>

    <div class="wrapper" style="    margin-left: 28%;
    margin-top: 2.9%;">
        <c:forEach items="${posts}" var="post">
            <a style="text-decoration: none" class="image" href="/getPostLogin?id=${post.id}">
                <img src="/image?fileName=${post.picture.pic1}" width="240" height="200"/><br>
                <div style="margin-left: -43%;color: #8bc1ff">${post.mark}
                        ${post.model}<br>
                </div>
                <br>
                <div style="margin-left:-60%;color: black"> ${post.year}</div>
                <div style=" margin-top:-6.9%;margin-left: 60%;color: black"> $ ${post.price}<br></div>
                <br>
                <a style="margin-left: -24.5%;margin-top: 30%;" href="/deleteMyPost?id=${post.id}" onclick="return confirm('Are you sure you want to search Google?')"><spring:message key="main.delete"/> </a>
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
        a{
            text-decoration: none;

        }

        .wrapper > a {
            display: block;
            float: left;
            width: 24%;
            background-color: #fdfbff;
            border-radius: 5px;
            text-align: center;
            margin: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5); /* Параметры тени */
        }

        .wrapper > a:hover { background-color: #d1d3d6; }
    </style>
</body>
</html>
