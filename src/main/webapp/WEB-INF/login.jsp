<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="../style/style.css">
</head>
<body>
<img width="100%" height="100" src="../img/fon.jpg">
<div style="margin-left:8.9%;margin-top:-4.9%">
    <a  type="submit" href="/home"><img style="width:130px;height:48px" src="../img/LogoCarShopddad.jpg"></a>
</div>
<div  style="margin-top:-3.4%;margin-left:0.8%">
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
<div style="margin-left:74%;margin-top:-3.3%">
    <ul><li> Իմ Էջը</li></ul>
</div>
</div>
</div>
<div style="margin-top:15%;margin-left:40%;width:300px;height:300px">
    <form action="<c:url value="/loginView"/> " method="post" name="loginForm">
        <label  style="margin-left:1%;margin-top:5% ;color: #000000">  Էլ․Հասցե</label>
        <input style="margin-left:1%;width:290px;margin-top:5% ;" type="email" id="fname" name="j_email" placeholder="Էլ․Հասցե..">

        <label style="margin-top:5% ;margin-left:1%;color: #000000">  Գաղտնաբառ</label>
        <input  style="margin-top:5% ;margin-left:1%;width: 290px" type="password" name="j_password" placeholder="Գաղտնաբառ..">

        <input  style="margin-top:5%;width: 290px;margin-left:1%;" type="submit" value="Մութք">
    </form>

</div>
<div>
    <div style="margin-left:87%;margin-top:-39.4%">
        <a href="/registerView"> <ul><li> Գրանցվել </li></ul></a>
    </div>
</div>


</body>
</html>
