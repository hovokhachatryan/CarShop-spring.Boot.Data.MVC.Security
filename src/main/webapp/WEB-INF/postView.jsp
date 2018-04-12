<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 26.02.2018
  Time: 20:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>${post.year} ${post.mark} ${post.model}</title>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
    <link href="themes/css/bootstrappage.css" rel="stylesheet"/>

    <!-- global styles -->
    <link href="themes/css/main.css" rel="stylesheet"/>
    <link href="themes/css/jquery.fancybox.css" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="style/style.css">

    <!-- scripts -->
    <script src="themes/js/jquery-1.7.2.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="themes/js/superfish.js"></script>
    <script src="themes/js/jquery.scrolltotop.js"></script>
    <script src="themes/js/jquery.fancybox.js"></script>
</head>
<body>
<div class="dasdasd" style="">
    <img width="100%" class="fonImage" height="100" src="img/fon.jpg">
</div>

<style>
    .fonImage {
        height: 100
    }
</style>
<div class="addPost-logoCarShop">
    <a type="submit" href="/home"><img style="width:130px;height:48px" src="img/LogoCarShopddad.jpg"></a>
</div>
<div class="addPost-car">
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
    <div class="index-login">
        <a href="/loginView">
            <ul>
                <li><spring:message key="main.login"/></li>
            </ul>
        </a>
    </div>
    <div class="index-register">
        <a href="/registerView">
            <ul>
                <li><spring:message key="main.register"/></li>
            </ul>
        </a>
    </div>
    <div class="index-armFlag">
        <a  href="/getPost?id=${post.id}&lang=hy"><img  src="../img/if_AM_167756.png"></a>
    </div>

    <div class="index-ruFlag">
        <a  href="/getPost?id=${post.id}&lang=ru"><img  src="../img/if_RU_167813.png"></a>
    </div>

</div>
<br><br><br><br><br><br><br><br>

<div id="wraaper" class="container">


    <section class="main-content">
        <div class="row">
            <div class="span9">
                <div class="row">
                    <div  class="span4">
                        <a href="/image?fileName=${post.picture.pic1}" class="thumbnail" data-fancybox-group="group1"
                           title="Photo 1"><img alt="" src="/image?fileName=${post.picture.pic1}"></a>

                        <ul class="thumbnails small">
                            <li class="span1">
                                <a href="/image?fileName=${post.picture.pic2}" class="thumbnail"
                                   data-fancybox-group="group1" title="Photo 2"><img
                                        src="/image?fileName=${post.picture.pic2}" alt=""></a>
                            </li>

                            <li class="span1">
                                <a href="/image?fileName=${post.picture.pic3}" class="thumbnail"
                                   data-fancybox-group="group1" title="Photo 3"><img
                                        src="/image?fileName=${post.picture.pic3}" alt=""></a>
                            </li>

                            <li class="span1">
                                <a href="/image?fileName=${post.picture.pic4}" class="thumbnail"
                                   data-fancybox-group="group1" title="Photo 4"><img
                                        src="/image?fileName=${post.picture.pic4}" alt=""></a>
                            </li>

                            <li class="span1">
                                <a href="/image?fileName=${post.picture.pic5}" class="thumbnail"
                                   data-fancybox-group="group1" title="Photo 5"><img
                                        src="/image?fileName=${post.picture.pic5}" alt=""></a>
                            </li>

                            <li class="span1">
                                <a href="/image?fileName=${post.picture.pic6}" class="thumbnail"
                                   data-fancybox-group="group1" title="Photo 6"><img
                                        src="/image?fileName=${post.picture.pic6}" alt=""></a>
                            </li>
                        </ul>
                    </div>
                    <div class="span5">
                        <address>
                            <h4><spring:message key="car.mark"/>: <span>${post.mark}</span></h4><br>
                            <h4><spring:message key="car.model"/>: <span>${post.model}</span></h4><br>
                            <h4><spring:message key="car.year"/>: <span>${post.year}</span></h4><br>
                            <h4><spring:message key="car.color"/>: <span>${post.color}</span></h4><br>
                            <h4><spring:message key="car.contact"/>: <span>+(374) ${post.userTelephone}</span></h4><br>
                            <h4><spring:message key="car.author"/>: <a href="/profileLook?id=${post.user.id}"><span style="text-decoration: underline">${post.user.name} ${post.user.surname}</span></a></h4><br>
                        </address>
                        <h2><strong><spring:message key="car.price"/>: ${post.price} $</strong></h2>
                    </div>
                </div>
                <div>
                    <h4><spring:message key="car.desc"/>:</h4>
                    <br>
                    <div class="tab-content">
                        <div style="border: solid black 1px;width: 56%;height: 23%;border-radius: 2px;background-color: white;" class="tab-pane active" id="home"><div style="font-size: 15px">${post.description}</div> </div>
                    </div>
                </div>

            </div>
        </div>
    </section>


</div>
</body>
<script src="themes/js/common.js"></script>
<script>
    $(function () {
        $('#myTab a:first').tab('show');
        $('#myTab a').click(function (e) {
            e.preventDefault();
            $(this).tab('show');
        })
    })
    $(document).ready(function () {
        $('.thumbnail').fancybox({
            openEffect: 'none',
            closeEffect: 'none'
        });

        $('#myCarousel-2').carousel({
            interval: 2500
        });
    });
</script>

</html>
