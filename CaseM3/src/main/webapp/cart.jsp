<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 1/7/2023
  Time: 8:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form>
    <c:forEach items="${cart.items}" var="c">
<tr>
    <td>${c.getHat().getHatName()}</td>
    <td>${c.quantity * c.sellPrice}</td>
    <td>${c.quantity}</td>
    <a type="button" class="btn btn-danger" href="/item" >Delete</a>
</tr>
    </c:forEach>

</form>
</body>
</html>
