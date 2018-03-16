<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>ADS</title>
    <link rel="stylesheet" type="text/css" href="../style/style.css">
</head>
<body>

<img width="100%" height="100" src="img/fon.jpg">
<div class="addPost-logoCarShop">
    <a type="submit" href="/loginSuccess"><img style="width:130px;height:48px" src="img/LogoCarShopddad.jpg"></a>
</div>
<div class="addPost-car">
    <ul>
        <li>Մեքենաներ
            <ul>
                <a href="/getPostByMark?mark=MERCEDES">
                    <li>Mercedes-Benz</li>
                </a>
                <a href="/getPostByMark?mark=BMW">
                    <li>BMW</li></a>
                    <a href="/getPostByMark?mark=AUDI">
                        <li>AUDI</li></a>
                        <a href="/getPostByMark?mark=OPEL">
                            <li>OPEL</li></a>
                            <a href="/getPostByMark?mark=TOYOTA">
                                <li>TOYOTA</li></a>
            </ul>
        </li>


    </ul>
</div>
<div class="addPost-myPage">
    <a href="/profile?id=${user.user.id}">
        <ul>
            <li> Իմ Էջը</li>
        </ul>
    </a>
</div>
</div>
<div class="addPost-logout">
    <a href="/logout">
        <ul>
            <li> Ելք</li>
        </ul>
    </a>
</div>
</div>

<div class="addPost-inputs">
    <spring:form action="/addPost" method="post" modelAttribute="post" enctype="multipart/form-data">
        <spring:label cssStyle="color: #000000" path="mark">Մակնիշ<a style="color: red">*</a>:</spring:label>
        <spring:select id="car" path="mark" onchange="ChangeCarList()">
            <form:option value="">
            </form:option>
            <c:forEach items="${marks}" var="mark">
                <form:option value="${mark}">
                    ${mark}
                </form:option>
            </c:forEach>
        </spring:select><br>

        <spring:label cssStyle="color: #000000" path="model">Մոդել<a style="color: red">*</a>:</spring:label>
        <spring:select id="carmodel" path="model">
        </spring:select><br>

        <spring:label cssStyle="color: #000000" path="year">Տարեթիվ<a style="color: red">*</a>:</spring:label>
        <spring:select path="year">
            <c:forEach items="${years}" var="year">
                <form:option value="${year}">
                    ${year}
                </form:option>
            </c:forEach>
        </spring:select><br>


        <spring:label cssStyle="color: #000000" path="price">Գին<a style="color: red">*</a>:</spring:label>
        <spring:input path="price"/>$<br>

        <spring:label cssStyle="color: #000000" path="color">Գույն<a style="color: red">*</a>:</spring:label>
        <spring:input  path="color"/><br>

        <spring:label cssStyle="color: #000000"
                      path="userTelephone">Հեռ․ համար<a style="color: red">*</a>:</spring:label>
        <spring:input path="userTelephone"/><br>
        <%--<spring:select  items="${allCategories}" itemLabel="name"></spring:select><br>--%>
        <%--<spring:select path="brand" items="${allBrands}" itemLabel="name"></spring:select><br>--%>
        <label style="color: #000000" for="image1">Նկար:<a style="color: red">*</a></label>
        <input type="file" id="image1" name="image1"/><br>

        <label style="color: #000000" for="image2">Նկար:</label>
        <input type="file" id="image2" name="image2"/><br>

        <label style="color: #000000" for="image3">Նկար:</label>
        <input type="file" id="image3" name="image3"/><br>

        <label style="color: #000000" for="image4">Նկար:<a style="color: red"></a></label>
        <input type="file" id="image4" name="image4"/><br>

        <label style="color: #000000" for="image5">Նկար:</label>
        <input type="file" id="image5" name="image5"/><br>

        <label style="color: #000000" for="image6">Նկար:</label>
        <input type="file" id="image6" name="image6"/><br>


        <input hidden name="id" value="${currentUser.user.id}">
        <input type="submit" value="Ավելացնել">
    </spring:form>
</div>


<script>
    var carsAndModels = {};

    carsAndModels['MERCEDES'] = ['S CLASS', 'C CLASS', 'E CLASS'];
    carsAndModels['AUDI'] = ['A4', 'A5', 'A6', 'A7'];
    carsAndModels['BMW'] = ['M6', 'X5', 'Z3'];
    carsAndModels['LEXUS'] = ['RX 300', 'RX 450','RX 500'];
    carsAndModels['OPEL'] = ['VECTRA', 'ASTRA', 'ZEMFIRA'];
    carsAndModels['TOYOTA'] = ['PRADO', 'CAMRY', 'LAND CRAUSER'];

    function ChangeCarList() {

        var carList = document.getElementById("car");
        var modelList = document.getElementById("carmodel");
        var selCar = carList.options[carList.selectedIndex].value;

        while (modelList.options.length) {
            modelList.remove(0);
        }
        var cars = carsAndModels[selCar];
        if (cars) {
            var i;
            for (i = 0; i < cars.length; i++) {
                var car = new Option(cars[i],i.stringValue);
                modelList.options.add(car);

            }
        }
    }
</script>
</body>
</html>
