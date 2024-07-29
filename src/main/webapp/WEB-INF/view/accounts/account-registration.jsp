<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Регистрация аккаунта</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        h2 {
            text-align: center;
            color: #007bff;
        }

        table {
            margin: 0 auto;
            border-collapse: separate;
            border-spacing: 10px;
        }

        td {
            padding: 5px;
        }

        input[type="submit"] {
            display: block;
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const submitButton = document.querySelector('input[type="submit"]');

            submitButton.addEventListener('click', function(event) {
                const userName = document.querySelector('input[name="name"]').value;
                const password = document.querySelector('input[name="password"]').value;

                if (!userName || !password) {
                    event.preventDefault();
                    alert('Пожалуйста, заполните все поля.');
                }
            });
        });
    </script>
</head>
<body: target="">

    <h2>Регистрация аккаунта</h2>
    <form:form modelAttribute="user" action="save" method="post">
    <table>
        <tr>
            <td><form:label path="name">Имя пользователя:</form:label></td>
            <td><form:input path="name"/></td>
        </tr>
        <tr>
            <td><form:label path="password">Пароль:</form:label></td>
            <td><form:password path="password"/></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="Зарегистрироваться"/></td>
        </tr>
    </table>
    </form:form>
    </body>
</html>
