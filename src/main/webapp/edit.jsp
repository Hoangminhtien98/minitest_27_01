<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 1/27/2022
  Time: 2:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/products?action=editPost" method="post">
    <label for="id">ID: <br>
        <input type="text" id="id" name="id">
    </label><br>
    <label for="name">Name: <br>
        <input type="text" id="name" name="name">
    </label><br>
    <label for="price">Price: <br>
        <input type="text" id="price" name="price">
    </label><br>
    <label for="amount">Amount: <br>
        <input type="text" id="amount" name="amount">
    </label><br>
    <label for="describe">Describe: <br>
        <input type="text" id="describe" name="describe">
    </label><br>
    <input type="submit" value="Edit" >
</form>
</body>
</html>
