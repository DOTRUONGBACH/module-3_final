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
            </ul>

            <%-- Thanh Search --%>
            <div style="position: absolute; left: 80%">
                <form>
                    <input type="text">
                </form>
            </div>

            <%-- Mục Tài khoản --%>
            <div style="position: absolute; left: 80%">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="#">Đăng ký</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Đăng nhập</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</nav>

<footer>
    <div>
        <h3>Footer</h3>
    </div>
</footer>
</body>
</html>
