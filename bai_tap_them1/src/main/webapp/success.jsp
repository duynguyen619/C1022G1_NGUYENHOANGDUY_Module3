<%@ page import="java.util.Date" %>
<%@ page import="java.util.Date" %>
<%--
  Created by IntelliJ IDEA.
  User: Duy_Nguyen
  Date: 07/02/2023
  Time: 10:26 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Success</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
          rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
          crossorigin="anonymous">
</head>
<body>
<div id="current-time"></div>
<div class="alert alert-success">
    <strong>Thành công!</strong> Dùng cho một hành động thành công hoặc tích cực.
</div>
<%--<script>--%>
<%--    var curDate = new Date()--%>
<%--    var curTime = curDate.getHours() + ":" + curDate.getMinutes() + ":" + curDate.getSeconds();--%>
<%--    var curDay = curDate.getDate();--%>
<%--    var curMonth = curDate.getMonth() + 1;--%>
<%--    var curYear = curDate.getFullYear();--%>
<%--    document.getElementById('current-time').innerHTML = curDay + "/" + curMonth + "/" + curYear + "/" + curTime;--%>
<%--</script>--%>
<h1>ADIN ĐÃ ĐĂNG NHẬP VÀO LÚC:</h1>
</center>
<p>Today's date: <%= (new Date()).toString()%>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</html>
