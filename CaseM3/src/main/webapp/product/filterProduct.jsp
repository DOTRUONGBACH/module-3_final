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
            <c:forEach var="h" items="${hatTypes}">
              <li><a class="dropdown-item" href="/filterProduct?idHatType=${h.idHattype}&idCate=1&fullName=${fullName}">${h.typeName}</a></li>
            </c:forEach>
          </ul>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">Nữ</a>
          <ul class="dropdown-menu">
            <c:forEach var="h" items="${hatTypes}">
              <li><a class="dropdown-item" href="/filterProduct?idHatType=${h.idHattype}&idCate=2&fullName=${fullName}">${h.typeName}</a></li>
            </c:forEach>
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
        <c:if test="${('fullName') == null}">
          <div style="position: absolute; left: 80%">
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link btn btn-dark" data-bs-toggle="modal" data-bs-target="#myModal-1" href="#">Đăng ký /</a>
              </li>
              <li class="nav-item">
                <a class="nav-link btn btn-dark" data-bs-toggle="modal" data-bs-target="#myModal-2" >Đăng nhập /</a>
              </li>
            </ul>
          </div>
        </c:if>

        <%-- Login success --%>
        <c:if test="${('fullName') != null}">
          <div style="position: absolute; left: 80%">
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link" href="#">Hello ${fullName} /</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">Giỏ hàng /</a>
              </li>
            </ul>
          </div>
        </c:if>
      </ul>
    </div>
  </div>
</nav>
<%--  End Thanh Navbar  --%>

<div class="container-fluid" style="margin-top: 2%">
  <div style="text-align: center">
    <h4>${hatType.typeName}</h4>
  </div>
</div>

<div class="container-fluid">
  <div class="py-2">
    <div class="row">
      <c:forEach var="p" items="${products}">
        <!-- product -->
        <div class="col-md-3" style="margin-top: 2%">
          <div class="hover hover-5 text-white rounded">
            <img src="${p.imgMain}">
            <div class="hover-overlay"></div>
            <div class="hover-5-content">
              <h6 class="hover-5-title text-uppercase font-weight-light mb-0">
                <span><a class="btn btn-danger" href="/infoProduct?hatId=${p.hatId}">Mua hàng</a></span>
                <br><br>
                <strong class="font-weight-bold text-white">${p.hatName} </strong>
                <span>${p.sellPrice}</span>
              </h6>
            </div>
          </div>
        </div>
        <!-- End product -->
      </c:forEach>
    </div>
  </div>
</div>

</body>
</html>
