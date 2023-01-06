<%--
  Created by IntelliJ IDEA.
  User: 84837
  Date: 1/6/2023
  Time: 7:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
    <link href="css/home.css" rel="stylesheet">

    <%--  bootstrap 5  --%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

    <%--  bootstrap effect list sản phẩm  --%>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://code.jquery.com/jquery-3.3.1.slim.min.js" rel="script">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.bundle.min.js" rel="script">
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
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

<%--  Slide Show  --%>
<div id="demo" class="carousel slide" data-bs-ride="carousel">
    <!-- Indicators/dots -->
    <div class="carousel-indicators">
        <button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
        <button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
        <button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
        <button type="button" data-bs-target="#demo" data-bs-slide-to="3"></button>
    </div>
    <!-- The slideshow/carousel -->
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="https://munonsaigon.com/wp-content/uploads/2016/03/BANNER-MAY-NON-9.jpg" alt="Los Angeles"
                 class="d-block" style="width:100%; height: 500px">
        </div>
        <div class="carousel-item">
            <img src="https://maynon.net/wp-content/uploads/2020/10/may-non-15a74bad482a58_thumb900.jpg" alt="Chicago"
                 class="d-block" style="width:100%; height: 500px">
        </div>
        <div class="carousel-item">
            <img src="https://munonsaigon.com/wp-content/uploads/2016/03/BANNER-MAY-NON-9.jpg" alt="New York"
                 class="d-block" style="width:100%; height: 500px">
        </div>
        <div class="carousel-item">
            <img src="https://munonsaigon.com/wp-content/uploads/2016/03/BANNER-MAY-NON-9.jpg" alt="New York"
                 class="d-block" style="width:100%; height: 500px">
        </div>
    </div>
    <!-- Left and right controls/icons -->
    <button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
        <span class="carousel-control-prev-icon"></span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
        <span class="carousel-control-next-icon"></span>
    </button>
    <div class="navbar navbar-expand-sm navbar-dark" style="background-color: #212529"></div>
</div>
<%--  End Slide Show  --%>

<%--  Img Effect 1  --%>
<div style="margin-top: 2%">
    <div style="text-align: center">
        <h4>Các sản phẩm khuyến mãi</h4>
    </div>
    <div class="container-fluid center-parent center-me"
         style="margin-top: 2%; margin-left: 2%; text-align: center; display: inline-flex">
        <figure class="snip1104 blue col-md-4">
            <img src="https://munonsaigon.com/wp-content/uploads/2016/03/BANNER-MAY-NON-9.jpg" alt="sample35"
                 style="width: 400px; margin-top: 2%"/>
            <figcaption>
                <h2>Sale <span> %</span></h2>
            </figcaption>
            <a href="#"></a>
        </figure>
        <figure class="snip1104 blue col-md-4">
            <img src="https://munonsaigon.com/wp-content/uploads/2016/03/BANNER-MAY-NON-9.jpg" alt="sample35"
                 style="width: 400px; margin-top: 2%"/>
            <figcaption>
                <h2>Sale <span> %</span></h2>
            </figcaption>
            <a href="#"></a>
        </figure>
        <figure class="snip1104 blue col-md-4">
            <img src="https://munonsaigon.com/wp-content/uploads/2016/03/BANNER-MAY-NON-9.jpg" alt="sample35"
                 style="width: 400px; margin-top: 2%"/>
            <figcaption>
                <h2>Sale <span> %</span></h2>
            </figcaption>
            <a href="#"></a>
        </figure>
    </div>
</div>
<%--  End img Effect 1  --%>

<%--  List sản phẩm  --%>
<div style="margin-top: 2%">
    <div style="text-align: center">
        <h4>Cùng xem Nón Nun có gì nhé!</h4>
    </div>
</div>

<div class="container-fluid">
    <div class="py-2">
        <div class="row">
            <!-- product -->
            <div class="col-md-3" style="margin-top: 2%">
                <div class="hover hover-5 text-white rounded"><img
                        src="https://bootstrapious.com/i/snippets/sn-img-hover/hoverSet-10.jpg" alt="">
                    <div class="hover-overlay"></div>
                    <div class="hover-5-content">
                        <h6 class="hover-5-title text-uppercase font-weight-light mb-0">Mũ <strong
                                class="font-weight-bold text-white">Lưỡi chai </strong><span>120.000</span></h6>
                    </div>
                </div>
            </div>
            <!-- product -->
            <div class="col-md-3" style="margin-top: 2%">
                <div class="hover hover-5 text-white rounded"><img
                        src="https://bootstrapious.com/i/snippets/sn-img-hover/hoverSet-10.jpg" alt="">
                    <div class="hover-overlay"></div>
                    <div class="hover-5-content">
                        <h6 class="hover-5-title text-uppercase font-weight-light mb-0">Mũ <strong
                                class="font-weight-bold text-white">Lưỡi chai </strong><span>120.000</span></h6>
                    </div>
                </div>
            </div>
            <!-- product -->
            <div class="col-md-3" style="margin-top: 2%">
                <div class="hover hover-5 text-white rounded"><img
                        src="https://bootstrapious.com/i/snippets/sn-img-hover/hoverSet-10.jpg" alt="">
                    <div class="hover-overlay"></div>
                    <div class="hover-5-content">
                        <h6 class="hover-5-title text-uppercase font-weight-light mb-0">Mũ <strong
                                class="font-weight-bold text-white">Lưỡi chai </strong><span>120.000</span></h6>
                    </div>
                </div>
            </div>
            <!-- product -->
            <div class="col-md-3" style="margin-top: 2%">
                <div class="hover hover-5 text-white rounded"><img
                        src="https://bootstrapious.com/i/snippets/sn-img-hover/hoverSet-10.jpg" alt="">
                    <div class="hover-overlay"></div>
                    <div class="hover-5-content">
                        <h6 class="hover-5-title text-uppercase font-weight-light mb-0">Mũ <strong
                                class="font-weight-bold text-white">Lưỡi chai </strong><span>120.000</span></h6>
                    </div>
                </div>
            </div>
            <!-- product -->
            <div class="col-md-3" style="margin-top: 2%">
                <div class="hover hover-5 text-white rounded"><img
                        src="https://bootstrapious.com/i/snippets/sn-img-hover/hoverSet-10.jpg" alt="">
                    <div class="hover-overlay"></div>
                    <div class="hover-5-content">
                        <h6 class="hover-5-title text-uppercase font-weight-light mb-0">Mũ <strong
                                class="font-weight-bold text-white">Lưỡi chai </strong><span>120.000</span></h6>
                    </div>
                </div>
            </div>
            <!-- product -->
            <div class="col-md-3" style="margin-top: 2%">
                <div class="hover hover-5 text-white rounded"><img
                        src="https://bootstrapious.com/i/snippets/sn-img-hover/hoverSet-10.jpg" alt="">
                    <div class="hover-overlay"></div>
                    <div class="hover-5-content">
                        <h6 class="hover-5-title text-uppercase font-weight-light mb-0">Mũ <strong
                                class="font-weight-bold text-white">Lưỡi chai </strong><span>120.000</span></h6>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%--  End List sản phẩm  --%>


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
