<%@ page language="java" contentType="text/html; ISO-8859-1" pageEncoding="ISO-8859-1"%>
<html>
<head>
    <script>
        function checkName() {
            var name = document.getElementById("name");
            name = name.value;
            alert(name)
        }
    </script>
</head>
<body>
Welcome
<br>
${registration}
<br>
<form action="./complete" method="get">
    Your Name: <input type="text" id="name">
    <br>
    Your Second Name: <input type="text" id="secondName">
    <br>
    Your Surname: <input type="text" id="surname">
    <br>
    Your Login: <input type="text" id="login">
    <br>
    Your Password: <input type="password" id="password">
    <br>
    <input type="button" onclick="checkName()">
</form>
</body>
</html>