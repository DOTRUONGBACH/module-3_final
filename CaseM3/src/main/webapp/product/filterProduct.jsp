<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 84837
  Date: 1/8/2023
  Time: 5:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Filter Product</title>
    <link href="css/home.css" rel="stylesheet">
    <link href="css/filterProduct" rel="stylesheet">

    <%--  bootstrap 5  --%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

    <%--  filter product  --%>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js" rel="script">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js" rel="script">
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
                                <a class="nav-link btn btn-dark" href="#">Giỏ hàng /</a>
                            </li>
                        </ul>
                    </div>
                </c:if>
            </ul>
        </div>
    </div>
</nav>
<%--  End Thanh Navbar  --%>

<!--  Model register  -->
<div class="modal fade" id="myModal-1">
    <div class="modal-dialog">
        <div class="modal-content">
            <!-- Modal Header -->
            <div class="modal-header">
                <h4 class="modal-title">Register</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
            </div>
            <!-- Modal body -->
            <div class="modal-body" style="left: 35px">
                <form action="/register" method="post">
                    <label>Username:</label><br>
                    <input type="text" name="username" placeholder="Enter username" style="width: 380px"><br>
                    <label>Password:</label><br>
                    <input type="password" name="password" placeholder="Enter password" style="width: 380px"><br>
                    <label>Full Name:</label><br>
                    <input type="text" name="fullName" placeholder="Enter full name" style="width: 380px"><br>
                    <label>Your Age:</label><br>
                    <input type="text" name="age" placeholder="Enter your age" style="width: 380px"><br>
                    <label>Phone Number:</label><br>
                    <input type="text" name="phone" placeholder="Enter your phone number " style="width: 380px"><br><br>
                    <button type="button" class="btn btn-danger" data-bs-dismiss="modal"
                            style="position: absolute; left: 40px">Close
                    </button>
                    <button class="btn btn-success" type="submit" style="position: absolute; left: 360px">Submit
                    </button>
                    <br>
                </form>
            </div>
        </div>
    </div>
</div>
<%--  End Model register  --%>

<!--  Model login  -->
<div class="modal fade" id="myModal-2">
    <div class="modal-dialog">
        <div class="modal-content">
            <!-- Modal Header -->
            <div class="modal-header">
                <h4 class="modal-title">Login</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
            </div>
            <!-- Modal body -->
            <div class="modal-body" style="left: 35px">
                <form action="/login" method="post">
                    <label>Username:</label><br>
                    <input type="text" name="username" placeholder="Enter username" style="width: 380px"><br>
                    <label>Password:</label><br>
                    <input type="password" name="password" placeholder="Enter password" style="width: 380px">
                    <br><br>
                    <button type="button" class="btn btn-danger" data-bs-dismiss="modal"
                            style="position: absolute; left: 46px;">Close
                    </button>
                    <button class="btn btn-success" type="submit" style="position: absolute; left: 320px">Submit
                    </button>
                    <br>
                </form>
            </div>
        </div>
    </div>
</div>
<%--  End Model login  --%>

<div class="container-fluid" style="margin-top: 2%">
    <div style="text-align: center">
        <h4>${hatType.typeName}</h4>
    </div>
</div>


<%--  filter product  --%>
<div class="container mt-5 mb-5">
    <div class="d-flex justify-content-center row">
        <div class="col-md-10">
            <c:forEach var="p" items="${products}">
                <div class="row p-2 bg-white border rounded">
                    <div class="col-md-3 mt-1"><img class="img-fluid img-responsive rounded product-image"
                                                    src="${p.imgMain}"></div>
                    <div class="col-md-6 mt-1">
                        <h5>${p.hatName}</h5>
                        <div class="d-flex flex-row">
                            <div class="ratings mr-2"><i class="fa fa-star"></i><i class="fa fa-star"></i><i
                                    class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i></div>
                            <span>310</span>
                        </div>
                        <p class="text-justify text-truncate para mb-0">${p.detail}<br><br></p>
                    </div>
                    <div class="align-items-center align-content-center col-md-3 border-left mt-1">
                        <div class="d-flex flex-row align-items-center">
                            <h4 class="mr-1">${p.sellPrice}</h4><span class="strike-text"></span>
                        </div>
                        <h6 class="text-success"></h6>
                        <div class="d-flex flex-column mt-4">
                            <button class="btn btn-primary btn-sm" type="button">Add to cart</button>
                            <button class="btn btn-outline-primary btn-sm mt-2" type="button">Detail</button>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>
<%--  End filter product  --%>

</body>
</html>
