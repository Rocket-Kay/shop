<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <Title>Product Page</Title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

</head>
<body>

<nav role="navigation" class="navbar navbar-default">
    <div class="">
        <a href="https://github.com/Rocket-Kay/EEA" class="navbar-brand">EMusic</a>
    </div>
    <div class="navbar-collapse">
        <ul class="nav navbar-nav">
            <li class="active"><a href="/products">Products</a></li>
            <li><a href="user/carts">Cart</a></li>
        </ul>
    </div>
</nav>

<div class="container">
    <h2>All Products</h2>
    <table class="table table-striped table-hover">
        <thead>
        <tr>
            <th>Photo</th>
            <th>Name</th>
            <th>Description</th>
            <th>Price</th>
            <th>Buy</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="product" items="${products }">
            <tr>
                <td><img alt="Image"
                         src="${pageContext.request.contextPath }/resources/images/${product.photo}"
                         width="50"></td>
                <td>${product.name }</td>
                <td>${product.pdesc }</td>
                <td>${product.price } USD</td>
                <td><a type="button" class="btn btn-success"
                       href="${pageContext.request.contextPath }/cart/buy/${product.id}"><span
                        class="glyphicon glyphicon-shopping-cart"></span></a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</body>

</html>