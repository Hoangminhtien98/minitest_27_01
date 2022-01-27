<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 1/27/2022
  Time: 2:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>All Products</h1>
<a href="${pageContext.request.contextPath}/products?action=sortIncrease">Sort Increase</a>
<a href="${pageContext.request.contextPath}/products?action=sortDecrease">Sort Decrease</a>
<c:if test="listProduct.isEmpty()">
    <p style="color: red">Không có sản phẩm nào</p>
</c:if>

<c:url value="/products" var="url">
    <c:param name="action" value="createGet"/>
</c:url>

<a href="${url}">Create new product</a>
<table border="1" width="600" cellpadding="2" cellspacing="2">
    <tr>
        <td>ID</td>
        <td>Name</td>
        <td>Price</td>
        <td>Amount</td>
        <td>Describe</td>
        <td colspan="2">Action</td>
    </tr>
    <c:forEach items="${listProduct}" var="product">
    <tr>
        <td>${product.getId()}</td>
        <td>${product.getName()}</td>
        <td>${product.getPrice()}</td>
        <td>${product.getAmount()}</td>
        <td>${product.getDescribe()}</td>
        <td><a href="/products?action=delete&id=${product.getId()}">Delete</a></td>
        <td><a href="/products?action=editGet&id=${product.getId()}">Edit</a></td>
    </tr>
    </c:forEach>
</table>
</body>
</html>
