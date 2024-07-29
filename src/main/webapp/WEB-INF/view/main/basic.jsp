<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Главная страница</title>
    <style>
        /* Основной стиль страницы */
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        header {
            background-color: #007bff;
            padding: 1rem;
            color: #ffffff;
        }

        .nav-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            max-width: 1200px;
            margin: 0 auto;
        }

        .nav-buttons {
            display: flex;
        }

        .nav-button {
            margin: 0 1rem;
            text-decoration: none;
            color: #ffffff;
            font-weight: bold;
            padding: 0.5rem 1rem;
            border-radius: 4px;
            background-color: #0056b3;
            transition: background-color 0.3s;
        }

        .nav-button:hover {
            background-color: #004494;
        }

        main {
            flex: 1;
            padding: 2rem;
        }

        footer {
            background-color: #343a40;
            color: #ffffff;
            text-align: center;
            padding: 1rem;
        }
    </style>
</head>
<body>
<header>
    <div class="nav-container">
        <div class="logo">
            <h1>Магазин</h1>
        </div>
        <div class="nav-buttons">
            <a href="#about" class="nav-button">О нас</a>
            <a href="${pageContext.request.contextPath}/GetShoppings/Online-Store" class="nav-button">Онлайн магазин</a>
            <a href="#login" class="nav-button">Войти</a>
            <a href="${pageContext.request.contextPath}/GetShoppings/registration" class="nav-button">Зарегистрироваться</a>
            <a href="#help" class="nav-button">Помощь</a>
            <a href="#accessories" class="nav-button">Аксессуары</a>
            <a href="#phones" class="nav-button">Телефоны</a>
        </div>
    </div>
</header>

<main>
    <h2>Добро пожаловать в наш магазин!</h2>
    <p>Здесь вы найдете лучшие товары и аксессуары.</p>
</main>

<footer>
    &copy; 2024 Магазин. Все права защищены.
</footer>

<script>
    // JavaScript для динамических эффектов можно добавить здесь
    console.log("JavaScript загружен и работает!");
</script>
</body>
</html>
