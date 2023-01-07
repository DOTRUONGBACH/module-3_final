<%--
  Created by IntelliJ IDEA.
  User: 84837
  Date: 1/7/2023
  Time: 12:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>infoProduct</title>
    <link href="/css/infoProduct.css" rel="stylesheet">
    <link href="/js/infoProduct.js" rel="script">

    <%--  bootstrap 5  --%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

    <%--  info product  --%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js" rel="script">
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
                    <a class="nav-link" href="#">Trang chủ</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">Nam</a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="#">Link</a></li>
                        <li><a class="dropdown-item" href="#">Another link</a></li>
                        <li><a class="dropdown-item" href="#">A third link</a></li>
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">Nữ</a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="#">Link</a></li>
                        <li><a class="dropdown-item" href="#">Another link</a></li>
                        <li><a class="dropdown-item" href="#">A third link</a></li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Trẻ em</a>
                </li>

                <%-- Thanh Search --%>
                <div class="navbar-nav" style="position: relative; top: 8px; left: 8px">
                    <form>
                        <input type="text">
                        <button type="submit">Search</button>
                    </form>
                </div>

                <%-- Mục Tài khoản --%>
                <div style="position: absolute; left: 80%">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="#">Đăng ký /</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Đăng nhập /</a>
                        </li>
                    </ul>
                </div>
            </ul>
        </div>
    </div>
</nav>
<%--  End Thanh Navbar  --%>

<%--  Info product  --%>
<div>
    <div class="container mt-5 mb-5">
        <div class="row d-flex justify-content-center">
            <div class="col-md-10">
                <div class="card">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="images p-3">
                                <div class="text-center p-4"> <img id="main-image" src="${products.imgMain}" width="250" /> </div>
                                <div class="thumbnail text-center"> <img onclick="change_image(this)" src="${products.imgSub1}" width="100"> <img onclick="change_image(this)" src="${products.imgSub2}" width="100"> </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="product p-4">
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="d-flex align-items-center"> <i class="fa fa-long-arrow-left"></i> <span class="ml-1">Back</span> </div> <i class="fa fa-shopping-cart text-muted"></i>
                                </div>
                                <div class="mt-4 mb-3"> <span class="text-uppercase text-muted brand">Sản phẩm</span>
                                    <h5 class="text-uppercase">${products.hatName}</h5>
                                    <div class="price d-flex flex-row align-items-center">
                                        <span class="act-price">${products.sellPrice}</span>
                                    </div>
                                </div>
                                <p class="about">${products.detail}.</p>
                                <div class="cart mt-8 align-items-center">
                                    <button class="btn btn-danger text-uppercase mr-2 px-4">Add to cart</button>
                                    <button class="btn btn-danger text-uppercase mr-2 px-4">Buy now</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%--  End Info product  --%>

<div>a</div>
<div>a</div>
<div>a</div>
<div>a</div>
<div>a</div>

<%-- Thanh Footer --%>
<footer>
    <div style="text-align: center">
        <h3>Footer</h3>
    </div>
</footer>
</body>
</html>
