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
    <title>Post</title>
</head>
<body>
            <img src="/image?fileName=${post.picture.pic1}" width="300"/><br>
            <img src="/image?fileName=${post.picture.pic2}" width="100"/>
            <img src="/image?fileName=${post.picture.pic3}" width="100"/>
            <img src="/image?fileName=${post.picture.pic4}" width="100"/>
            <img src="/image?fileName=${post.picture.pic5}" width="100"/>
            <img src="/image?fileName=${post.picture.pic6}" width="100"/><br>
              MARK:  ${post.mark}<br>
              YEAR:  ${post.year}<br>
              MODEL: ${post.model}<br>
              PRICE: ${post.price} $<br>
              COLOR: ${post.color}<br>
              CONTACT: ${post.userTelephone}<br>
              AUTHOR: ${post.user.name} ${post.user.surname}<br>
</body>
</html>
