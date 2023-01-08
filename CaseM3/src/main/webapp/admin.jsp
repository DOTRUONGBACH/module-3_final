<%--
  Created by IntelliJ IDEA.
  User: 84837
  Date: 1/8/2023
  Time: 12:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin</title>
    <link href="css/admin.css" rel="stylesheet">

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

                <%-- Thanh Search --%>
                <div class="navbar-nav" style="position: relative; top: 8px; left: 8px">
                    <form>
                        <input type="text">
                        <button type="submit">Search</button>
                    </form>
                </div>

                <%-- Login success --%>
                <c:if test="${sessionScope.get('fullName') != null}">
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

<%--  Menu control  --%>
<div style="margin-top: 30px; margin-left: 50px">
    <div style="text-align: center"><h3>Admin</h3><br></div>
    <hr>
    <div id="table-control">
        <h5>Manage Account</h5>
        <a style="width: 250px" class="btn btn-primary">Search Account</a><br><br>
        <a style="width: 250px" class="btn btn-success">Add Account</a><br><br>
        <hr>
        <h5>Manage Product</h5>
        <a style="width: 250px" class="btn btn-primary"> Search Product</a><br><br>
        <a style="width: 250px" class="btn btn-success">Add Product</a><br><br>
        <hr>
    </div>
</div>
<%--  End menu control  --%>

<%--  Display  --%>
<div>
    <%--  Display Account  --%>
    <div id="displayAccount">
        <div style="text-align: center"><h3>Account</h3><br></div>
        <hr>
        <table class="table table-striped">
            <tr>
                <th>Account ID</th>
                <th colspan="2">Username</th>
                <th colspan="2">Full Name</th>
                <th>Age</th>
                <th colspan="2">Phone Number</th>
            </tr>
            <tr>
                <td>23</td>
                <td colspan="2">hunganh2002</td>
                <td colspan="2">Hùng Anh</td>
                <td>20</td>
                <td colspan="2">0837112007</td>
            </tr>
            <tr>
                <td colspan="8" style="text-align: center">
                    <a style="width: 200px; margin-left: 50px" class="btn btn-warning">Edit Account</a>
                    <a style="width: 200px; margin-left: 50px" class="btn btn-danger">Delete Account</a><br>
                </td>
            </tr>
            <%--  End Display Account  --%>
            <tr><td colspan="5"></td></tr>

            <%--  Display Product  --%>
            <tr>
                <td colspan="8"><div style="text-align: center"><h3>Product</h3><br></div></td>
            </tr>

            <tr>
                <th>Product ID</th>
                <th>Name product</th>
                <th>Img Main</th>
                <th>Img Sub1</th>
                <th>Img Sub2</th>
                <th>Sell Price</th>
                <th>Quantity</th>
                <th>Detail</th>
            </tr>
            <tr>
                <td>23</td>
                <td>hunganh2002</td>
                <td>Hùng Anh</td>
                <td>20</td>
                <td>0837112007</td>
                <td>0837112007</td>
                <td>0837112007</td>
                <td>0837112007</td>
            </tr>
            <tr>
                <td colspan="8" style="text-align: center">
                    <a style="width: 200px; margin-left: 50px" class="btn btn-warning">Edit Product</a>
                    <a style="width: 200px; margin-left: 50px" class="btn btn-danger">Delete Product</a><br>
                </td>
            </tr>
            <%--  End Display Product  --%>
        </table>
    </div>
</div>
<%--  End Display  --%>
</body>
</html>
