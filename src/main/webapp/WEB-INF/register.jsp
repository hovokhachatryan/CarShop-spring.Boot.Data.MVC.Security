<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 21.02.2018
  Time: 16:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
    <link rel="stylesheet" type="text/css" href="../style/style.css">
</head>
<body>
<div>

    <img width="100%" height="100" src="img/fon.jpg">
    <div style="margin-left:8.9%;margin-top:-5.2%">
        <a  type="submit" href="/home"><img style="width:130px;height:48px" src="img/LogoCarShopddad.jpg"></a>
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
<div style="margin-top:10%;margin-left:33%;width:500px;height:300px">
    <form action="/addUser" modelAttribute="" method="post" >
    <%--NAME:<spring:input path="name" title="name" /> * <br>--%>
    <%--SURNAME:<spring:input path="surname" title="surname"/> *<br>--%>
    <%--EMAIL:<spring:input path="email" title="email"/> *<br>--%>
    <%--PASSWORD:<spring:input path="password" title="password"/> *<br>--%>
    <label style="color: #000000">Անուն</label>
    <input type="text" name="name" placeholder="Անուն..">
        <label style="color: #000000">Ազգանուն</label>
        <input type="text" name="surname" placeholder="Ազգանուն..">
            <label style="color: #000000">էլ․ Հասցե</label>
            <input type="email" name="email" placeholder="Էլ․ Հասցե..">
                <label style="color: #000000">Գաղտնաբառ</label>
                <input type="password" name="password" placeholder="Գախնաբառ..">
                    <input type="submit" value="Գրանցվել">
                        </form>
</div>
<div>
    <div style="margin-left:87%;margin-top:-34.3%">
        <a href="/loginView"><ul><li> Մութք </li></ul></a>
    </div>
</div>
</div>
</body>
</html>