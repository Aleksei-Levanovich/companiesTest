<%@ page language="java" contentType="text/html; ISO-8859-1" pageEncoding="ISO-8859-1"%>
<html>
<head>
    <script>
        function checkName() {
            var name = document.getElementById("name").value;
            var get = JSON.stringify({"name":name});
            console.log(get);
            var xmlHttp = new XMLHttpRequest();
            xmlHttp.open("POST", "http://localhost:8080/welcome/registration/complete", true);
            xmlHttp.setRequestHeader('Content-type', 'application/json');
            xmlHttp.send(get);
            alert(xmlHttp.status+" "+xmlHttp.statusText+" "+xmlHttp.responseText);
        }
    </script>
</head>
<body>
Welcome
<br>
${registration}
<br>
<form action="/welcome/registration/complete" method="get" enctype="application/json">
    Your Name: <input type="text" id="name" name="name">
    <%--<br>--%>
    <%--Your Second Name: <input type="text" id="secondName" name="secondName">--%>
    <%--<br>--%>
    <%--Your Surname: <input type="text" id="surname" name="surname">--%>
    <%--<br>--%>
    <%--Your Login: <input type="text" id="login" name="login">--%>
    <%--<br>--%>
    <%--Your Password: <input type="password" id="password" name="password">--%>
    <br>
    <input type="button" value="REGISTER" onclick="checkName()">
</form>
</body>
</html>