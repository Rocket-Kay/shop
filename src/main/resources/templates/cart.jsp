<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Cart Page</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

</head>
<body>

<div class="container">
    <h2>Your Shopping Cart</h2>
    <table class="table table-striped">
        <thead>
        <tr>
            <th>Option</th>
            <th>Name</th>
            <th>Photo</th>
            <th>Price</th>
            <th>Quantity</th>
            <th>Sub Total</th>
        </tr>
        </thead>
        <tbody>
        <c:set var="total" value="0"></c:set>
        <c:forEach var="item" items="${sessionScope.cart }">
            <c:set var="total" value="${total + item.product.price *item.qty }"></c:set>
            <tr>
                <td align="center"><a
                        href="${pageContext.request.contextPath }/cart/remove/${item.product.id }"
                        onclick="return confirm('Are you sure?')">Remove</a></td>
                <td>${item.product.name }</td>
                <td><img alt="Image"
                         src="${pageContext.request.contextPath }/resources/images/${product.photo}"
                         width="50"></td>
                <td>${item.product.price }</td>
                <td>${item.qty }</td>
                <td>${item.product.price * item.qty }</td>
            </tr>
        </c:forEach>
        <tr>
            <td colspan="6" align="right">Sum</td>
            <td>${total }</td>
        </tr>
        </tbody>
    </table>
    <div><a class="button" href="${pageContext.request.contextPath }/product">Continue
        Shopping</a>
    </div>
</div>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</body>
</html>