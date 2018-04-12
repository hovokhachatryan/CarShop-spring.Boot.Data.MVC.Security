<!DOCTYPE html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add Post</title>
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
                    <li>Toyota</li>
                </a>
            </ul>
        </li>
    </ul>
</div>
<div class="addPost-myPage">
    <a href="/profile?id=${currentUser.user.id}">
        <ul>
            <li>Իմ էջը</li>
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
        <spring:input path="price"/><br>

        <spring:label cssStyle="color: #000000" path="color">Գույն<a style="color: red">*</a>:</spring:label>
        <spring:input  maxlength="10"  path="color"/><br>

        <spring:label cssStyle="color: #000000"
                      path="userTelephone">Հեռ․ համար<a style="color: red">*</a>:</spring:label>
        <spring:input  maxlength="9" path="userTelephone"/><br>

        <spring:label cssStyle="color: #000000"
                      path="description">Մեքենաի Մասին</spring:label>
        <spring:input path="description"/><br>

        <label style="color: #000000" for="image1">Նկար1:<a style="color: red"></a></label>
        <input type="file" id="image1" name="image1"/><br>

        <label style="color: #000000" for="image2">Նկար2:</label>
        <input type="file" id="image2" name="image2"/><br>

        <label style="color: #000000" for="image3">Նկար3:</label>
        <input type="file" id="image3" name="image3"/><br>

        <label style="color: #000000" for="image4">Նկար:4<a style="color: red"></a></label>
        <input type="file" id="image4" name="image4"/><br>

        <label style="color: #000000" for="image5">Նկար:5</label>
        <input type="file" id="image5" name="image5"/><br>

        <label style="color: #000000" for="image6">Նկար:6</label>
        <input type="file" id="image6" name="image6"/><br>


        <input hidden name="id" value="${currentUser.user.id}">
        <input type="submit" value="Ավելացնել">
    </spring:form>
</div>


<script>
    var carsAndModels = {};

    carsAndModels['Alfa Romeo'] = ['145', '146', '147','Brera','Crosswagon','GT','GTV','Spider','Sprint'];
    carsAndModels['Audi'] = ['100','200','A1','A2','A3','A4', 'A5', 'A6', 'A7','Q2', 'Q3', 'Q5', 'Q7','R8', 'RS2', 'RS4', 'TT'];
    carsAndModels['Bentley'] = ['Amage','Bentayga','Brooklands','Continental GT','Turbo R','Turo RT','Turbo S'];
    carsAndModels['Bmw'] = ['1 Series','2 Series','3 Series','4 Series','5 Series','6 Series','7 Series','8 Series','M1','M2','M3','M4','M5','M6','R 1200 GS' ,
    'R 1200 R','R 1200 RT','X1','X2','X3','X4','X5','X6'];
    carsAndModels['Bugatti'] = ['Veyron','Chiron'];
    carsAndModels['Cadillac'] = ['Allante','ATS','BLS','Catera','Cimarron','Eldorado','Escalade','SRX','STS','Vizon'];
    carsAndModels['Chevrolet'] = ['Alero','Aveo','Baretta','Blazer','Camaro','Caprice','Colorado','Cobalt','Lacceti','Lanos','Lumina'];
    carsAndModels['Chevrolet'] = ['Alero','Aveo','Baretta','Blazer','Camaro','Caprice','Colorado','Cobalt','Lacceti','Lanos','Lumina'];
    carsAndModels['Citroen'] = ['C1','C2','C3','C4','C5','C6','Jumper','Jumpy','Saxo','Visa','ZX'];
    carsAndModels['Ford'] = ['Aerostar','Aspire','Bronca','Capri','Edge','Escape','F-550','F150','F250','F350','Focus'];
    carsAndModels['Honda'] = ['Accord','Ascot','Beat','Capa','CB','Civic','Edix','Element','GB','Goldwing','NSX'];
    carsAndModels['Hummer'] = ['H1','H2','H3'];
    carsAndModels['Hyundai'] = ['Accent','Atos','Avante','Genesis','Getz','Santa Fe','Solaris','Sonata','Tuscon','Trajet','Tiburon'];
    carsAndModels['Kia'] = ['Avella','Besta','Cadenz','Capital','Carens','Elan','Forte','Joice','K2500','K2700','Rio'];
    carsAndModels['Land Rover'] = ['Defender','Discovery','Range Rover','Range Rover Sport','Range Rover Evoque','Range Rover Velar'];
    carsAndModels['Lexus'] = ['ES Series','GS Series','GX SERIES','LC Series','IS Series','LS Series','LX Series','RC Series','RX Series','SC Series'];
    carsAndModels['Mazda'] = ['2','3','4','5','6','Atenza','Axela','B Series','E Series','Tirbute'];
    carsAndModels['Mercedes-Benz'] = ['A-Series','A 150','A 160','A 170','A 180','A 45 AMG','AMG GT','C-Class','C 160','C 180',
        'C 200','C 220','C 240','C 270','CE-CLASS' ,'CL 420','CL 500','CL 55 AMG','CLA-CLASS','CLC-CLASS','CLC 240','CLC 270','CLK-CLASS','E-CLASS','E 200','E 230','E 240',
        'E 260','E 270','E 280','G-CLASS','G 230','G 240','G 300','G 400','G 500','E 280','G-CLASS','G230','G240','G300','G400','ML-CLASS','ML 230','ML 240','ML 250','ML 260','S-CLASS','S 250' ,
        'S 270','S 280','S 300','S 320','S 400','S 450','S 500','S 55 AMG','S 550','Vaneo','Viano','Vito'];
    carsAndModels['Mitshubishi'] = ['Airtek','ASX','Canter','Carisma','Chelenger','Dingo','Dion','Expo','Externa','Lancer'];
    carsAndModels['Nissan'] = ['AD','Almera','Altima','Avnir','BAssara','Cargo','Cedric','Cherry','GT-R','Interstar','Qashqai','Quest','Teana','Terrano','X-Trail','Xterra'];
    carsAndModels['Niva'] = ['2121','2329 Пикап','4x4 Urban'];
    carsAndModels['Opel'] = ['Antara','Arena','Astra','Cavalier','Corsa','Dimplomat','GT','Mervia','Monza','Nova','Omega','Rekord','Senator','Terrano','Vectra','Vita'];
    carsAndModels['Porsche'] = ['356','718','911','912','914','Boxster','Carrera GT','Cayanne','Cayman','Macan','Panamera'];
    carsAndModels['Toyota'] = ['Allex','Aristo','Brevis','Camry','Chaser','Kluger','Land Cruiser 100','Land Cruiser 200','Land Cruiser Prado','Probox','Progres','Rav 4','Sienta','Supra','WILL','Yaris'];

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
