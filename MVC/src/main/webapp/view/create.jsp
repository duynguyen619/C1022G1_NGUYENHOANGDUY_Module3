<%--
  Created by IntelliJ IDEA.
  User: Duy_Nguyen
  Date: 14/02/2023
  Time: 10:20 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
            crossorigin="anonymous"></script>
</head>
<body>
<h1>Book Management</h1>
<h2>
    <a href="/book">List All Book</a>
</h2>
</center>

<div align="center">
    <form method="post">
        <table border="1" cellpadding="5">
            <tr>
                <th>Title:</th>
                <td><input type="text" name="title" id="title" size="45"/></td>
            </tr>
            <tr>
                <th>Page Size:</th>
                <td><input type="text" name="pageSize" id="pageSize" size="45"/></td>
            </tr>
            <tr>
                <th>Author:</th>

                <td><input type="text" name="author" id="author" size="45"/></td>
            </tr>
            <tr>
                <th>Category:</th>
                <td><input type="text" name="category" id="category" size="15"/></td>
            </tr>
            <tr>
                <td colspan="2" align="center"><input type="submit" value="Save"/></td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
