<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>CarShop</title>
    <link rel="stylesheet" type="text/css" href="../style/style.css">
</head>
<body>
<img width="100%" height="100" src="img/fon.jpg">
<div style="margin-left:9%;margin-top:-4.9%">
    <a  type="submit" href="/loginSuccess"><img style="width:130px;height:48px" src="img/LogoCarShopddad.jpg"></a>
</div>
<div  style="margin-top:-3.7%;margin-left:1%">
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
    <a><ul><li> Իմ Էջը </li></ul></a>
</div>
</div>
<div style="margin-left:80%;margin-top:-3.4%">
    <a href="/logout"><ul><li> Ելք </li></ul></a>
</div>
</div>
<div style="width:25%;height:25%; margin-top:7%;margin-left:35%">
    <spring:form action="/addPost" method="post" modelAttribute="post" enctype="multipart/form-data">
        <spring:label cssStyle="color: #000000" path="mark" >Մակնիշ<a style="color: red">*</a>:</spring:label>
        <spring:select path="mark">
            <c:forEach items="${marks}" var="mark">
                <form:option value="${mark}">
                    ${mark}
                </form:option>
            </c:forEach>
        </spring:select><br>

        <spring:label cssStyle="color: #000000" path="model">Մոդել<a style="color: red">*</a>:</spring:label>
        <spring:input path="model"/><br>

        <spring:label cssStyle="color: #000000" path="year">Տարեթիվ<a style="color: red">*</a>:</spring:label>
        <spring:select path="year">
            <c:forEach items="${years}" var="year">
                <form:option value="${year}">
                    ${year}
                </form:option>
            </c:forEach>
        </spring:select><br>


        <spring:label cssStyle="color: #000000" path="price">Գին<a style="color: red">*</a>:</spring:label>
        <spring:input path="price"/><br>

        <spring:label cssStyle="color: #000000" path="color">Գույն<a style="color: red">*</a>:</spring:label>
        <spring:input path="color"/><br>

        <spring:label cssStyle="color: #000000" path="userTelephone">Հեռ․ համար<a style="color: red">*</a>:</spring:label>
        <spring:input path="userTelephone"/><br>
        <%--<spring:select  items="${allCategories}" itemLabel="name"></spring:select><br>--%>
        <%--<spring:select path="brand" items="${allBrands}" itemLabel="name"></spring:select><br>--%>
        <label style="color: #000000" for="image1">Նկար:<a style="color: red">*</a></label>
        <input type="file" id="image1" name="image1"/><br>

        <label style="color: #000000" for="image2">Նկար:<a style="color: red">*</a></label>
        <input type="file" id="image2" name="image2"/><br>

        <label style="color: #000000" for="image3">Նկար:<a style="color: red">*</a></label>
        <input type="file" id="image3" name="image3"/><br>

        <label style="color: #000000" for="image4">Նկար:<a style="color: red">*</a></label>
        <input type="file" id="image4" name="image4"/><br>

        <label style="color: #000000" for="image5">Նկար:<a style="color: red">*</a></label>
        <input type="file" id="image5" name="image5"/><br>

        <label style="color: #000000" for="image6">Նկար:<a style="color: red">*</a></label>
        <input type="file" id="image6" name="image6"/><br>


        <input hidden name="id" value="${currentUser.user.id}">
        <input type="submit" value="Ավելացնել">
    </spring:form>
</div>
>>>>>>> Stashed changes
</body>
</html>
