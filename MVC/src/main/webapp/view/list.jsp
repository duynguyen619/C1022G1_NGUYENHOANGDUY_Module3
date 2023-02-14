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
<center>
    <h1>BOOK MANAGEMENT</h1>
    <h2>
        <a href="/book?action=create">Add New Book</a>
    </h2>
</center>
<div class="d-flex justify-content: center">
    <form class="d-flex" action="/book?action=search" method="post">
        <input class="form-control me-2" style="width: 300px" type="search" placeholder="Search" aria-label="Search"
               name="title"
               value="${book.title}">
        <button class="btn btn-outline-success" type="submit">Search</button>
    </form>
</div>
<div align="center">
    <table class="table table-primary table-striped">
        <tr>
            <td>ID</td>
            <td>Title</td>
            <td>Page Size</td>
            <td>Author</td>
            <td>Category</td>
            <td>Edit</td>
            <td>Delete</td>
        </tr>
        <c:forEach var="book" items="${bookList}">
            <tr>
                <td>${book.id}</td>
                <td>${book.title}</td>
                <td>${book.pageSize}</td>
                <td>${book.author}</td>
                <td>${book.category}</td>
                <td>
                    <button>
                        <a style="color: cadetblue" href="/book?action=edit&id=${book.id}">Edit</a>
                    </button>
                </td>
                <td>
                    <button onclick="infoDelete('${book.getId()}','${book.getTitle()}')" type="button"
                            class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal">
                        Delete
                    </button>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>


<%-- modal delete--%>
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Delete Book</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="/book?action=delete" method="post">
                <div class="modal-body">
                    <label for="deleteId"></label><input type="text" hidden id="deleteId" name="id">
                    Bạn có muốn xóa sách <span id="deleteName" style="color: brown; font-weight: bold"></span>
                    không ?
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                    <button type="submit" class="btn btn-primary">Confirm</button>
                </div>
            </form>
        </div>
    </div>
</div>
<script>
    function infoDelete(id, name) {
        document.getElementById("deleteId").value = id;
        document.getElementById("deleteName").innerText = name;
    }
</script>
</body>
</html>
