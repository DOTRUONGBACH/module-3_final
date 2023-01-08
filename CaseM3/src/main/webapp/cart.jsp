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
    <title>Cart</title>
    <link href="css/home.css" rel="stylesheet">
    <link href="css/cart.css" rel="stylesheet">

    <%--  bootstrap 5  --%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

    <%--  Cart  --%>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js" rel="script">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js" rel="script">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
</head>
<body>
<%-- Thanh Navbar --%>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Logo</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="collapsibleNavbar">

            <%-- Mục menu --%>
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="/home">Trang chủ</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">Nam</a>
                    <ul class="dropdown-menu">
                        <c:forEach var="h" items="${hatTypes}">
                            <li><a class="dropdown-item"
                                   href="/filterProduct?idHatType=${h.idHattype}&idCate=1&fullName=${fullName}">${h.typeName}</a>
                            </li>
                        </c:forEach>
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">Nữ</a>
                    <ul class="dropdown-menu">
                        <c:forEach var="h" items="${hatTypes}">
                            <li><a class="dropdown-item"
                                   href="/filterProduct?idHatType=${h.idHattype}&idCate=2&fullName=${fullName}">${h.typeName}</a>
                            </li>
                        </c:forEach>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link btn btn-dark" href="/filterProduct?idHatType=5&idCate=3&fullName=${fullName}">Trẻ em</a>
                </li>

                <%-- Thanh Search --%>
                <div class="navbar-nav" style="position: relative; top: 8px; left: 8px">
                    <form action="/search" method="get">
                        <input type="text" name="search">
                        <button type="submit">Search</button>
                    </form>
                </div>

                <%-- Mục Tài khoản --%>
                <c:if test="${sessionScope.get('fullName') == null}">
                    <div style="position: absolute; left: 80%">
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <a class="nav-link btn btn-dark" data-bs-toggle="modal" data-bs-target="#myModal-1"
                                   href="#">Đăng ký /</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link btn btn-dark" data-bs-toggle="modal" data-bs-target="#myModal-2">Đăng
                                    nhập /</a>
                            </li>
                        </ul>
                    </div>
                </c:if>

                <%-- Login success --%>
                <c:if test="${sessionScope.get('fullName') != null}">
                    <div style="position: absolute; left: 70%">
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <div class="dropdown">
                                    <div class="dropdown-toggle btn btn-dark" data-bs-toggle="dropdown">
                                        Hello ${fullName} /
                                    </div>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item" href="/logout">Đăng xuất</a></li>
                                    </ul>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="/item">Giỏ hàng /</a>
                            </li>
                        </ul>
                    </div>
                </c:if>
            </ul>
        </div>
    </div>
</nav>
<%--  End Thanh Navbar  --%>

<%--  Cart  --%>
<div class="container mt-5 p-3 rounded cart">
    <div class="row no-gutters">
        <div class="col-md-8">
            <div class="product-details mr-2">
                <div class="d-flex flex-row align-items-center">
                    <span class="ml-2">
                    <form action="/product/infoProduct.jsp" method="get">
                    <button type="submit" class="btn btn-success">
                        <i class="fa fa-long-arrow-left"></i>  BACK
                    </button>
                    </form>
                    </span>
                </div>
                <hr>
                <h6 class="mb-0">Shopping cart</h6>
                <div class="d-flex justify-content-between">
                    <div class="d-flex flex-row align-items-center"><span class="text-black-50">Sort by:</span>
                        <div class="price ml-2"><span class="mr-1">price</span><i class="fa fa-angle-down"></i></div>
                    </div>
                </div>
                <c:forEach items="${cart.items}" var="c">
                    <div class="d-flex justify-content-between align-items-center mt-3 p-2 items rounded">
                        <div class="d-flex flex-row"><img class="rounded" src="${c.getHat().getImgMain()}"
                                                          width="50">
                            <div class="ml-2"><span
                                    class="font-weight-bold d-block">${c.getHat().getHatName()}</span><span
                                    class="spec"></span></div>
                        </div>
                        <div class="d-flex flex-row align-items-center"><span class="d-block">${c.quantity}</span><span
                                style="margin-right: 10px"
                                class="d-block ml-4 font-weight-bold">${c.getTotalCost()}</span>
                            <a type="button" class="btn btn-danger" href="/deleteitem?name=${c.getHat().getHatName()}">Delete</a>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
        <div class="col-md-4">
            <div class="payment-info">
                <div class="d-flex justify-content-between align-items-center"><span>Card details</span><img
                        class="rounded"
                        src="https://png.pngtree.com/png-vector/20190623/ourlarge/pngtree-accountavataruser--flat-color-icon--vector-icon-banner-templ-png-image_1491720.jpg"
                        width="30"></div>
                <span class="type d-block mt-3 mb-1">Card type</span><label class="radio"> <input type="radio"
                                                                                                  name="card"
                                                                                                  value="payment"
                                                                                                  checked> <span><img
                    width="30" src="https://img.icons8.com/color/48/000000/mastercard.png"/></span> </label>

                <label class="radio"> <input type="radio" name="card" value="payment"> <span><img width="30"
                                                                                                  src="https://img.icons8.com/officel/48/000000/visa.png"/></span>
                </label>

                <label class="radio"> <input type="radio" name="card" value="payment"> <span><img width="30"
                                                                                                  src="https://img.icons8.com/ultraviolet/48/000000/amex.png"/></span>
                </label>


                <label class="radio"> <input type="radio" name="card" value="payment"> <span><img width="30"
                                                                                                  src="https://img.icons8.com/officel/48/000000/paypal.png"/></span>
                </label>
                <hr class="line">
                <div class="d-flex justify-content-between information">
                    <span>Total(Incl. taxes)</span><span>ToTal:${sessionScope.get("total")}</span></div>
                <button class="btn btn-primary btn-block d-flex justify-content-between mt-3" type="button">
                    <span>ToTal:${sessionScope.get("total")}</span><span>Checkout<i
                        class="fa fa-long-arrow-right ml-1"></i></span></button>
            </div>
        </div>
    </div>
</div>
<%--  End Cart  --%>
</body>
</html>
