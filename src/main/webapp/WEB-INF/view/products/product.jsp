<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Детали продукта</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 2rem;
        }

        .product-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 2rem;
        }

        .product-header h1 {
            margin: 0;
            font-size: 2rem;
            color: #343a40;
        }

        .product-images {
            display: flex;
            flex-wrap: wrap;
            gap: 1rem;
        }

        .product-image {
            flex: 1 1 calc(33.333% - 1rem);
            box-sizing: border-box;
            background-color: #ffffff;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .product-image img {
            width: 100%;
            height: auto;
            display: block;
        }

        .product-info {
            margin-top: 1rem;
        }

        .product-info p {
            font-size: 1.25rem;
            color: #495057;
        }

        footer {
            background-color: #343a40;
            color: #ffffff;
            text-align: center;
            padding: 1rem;
            position: fixed;
            width: 100%;
            bottom: 0;
        }
    </style>
</head>
<body>
<div class="container">
    <c:choose>
        <c:when test="${not empty product}">
            <div class="product-header">
                <h1><c:out value="${product.productName}"/></h1>
            </div>

            <div class="product-images">
                <c:forEach var="image" items="${productImages}">
                    <div class="product-image">
                        <img src="${image.url}" alt="Фото продукта"/></div>
                </c:forEach>
            </div>

            <div class="product-info">
                <p>Цена: <c:out value="${product.price}"/> ₽</p>
            </div>
        </c:when>
        <c:otherwise>
            <p>Продукт не найден.</p>
        </c:otherwise>
    </c:choose>
</div>

<footer>
    &copy; 2024 Ваш Магазин. Все права защищены.
</footer>
</body>
</html>
