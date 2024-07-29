<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ru">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Интернет-магазин</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f8f9fa;
      margin: 0;
      padding: 0;
    }

    header {
      background-color: #007bff;
      color: #ffffff;
      padding: 1rem;
      text-align: center;
    }

    .container {
      max-width: 1200px;
      margin: 0 auto;
      padding: 2rem;
    }

    .grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
      gap: 1rem;
    }

    .product-card {
      background-color: #ffffff;
      border-radius: 8px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      overflow: hidden;
      text-align: center;
      transition: transform 0.3s;
    }

    .product-card:hover {
      transform: scale(1.05);
    }

    .product-image {
      width: 100%;
      height: 200px;
      background-color: #e9ecef;
      display: flex;
      align-items: center;
      justify-content: center;
      color: #6c757d;
      font-size: 1.5rem;
    }

    .product-info {
      padding: 1rem;
    }

    .product-info h3 {
      margin: 0;
      font-size: 1.25rem;
      color: #343a40;
    }

    .product-info p {
      margin: 0.5rem 0;
      color: #495057;
    }

    .product-info .price {
      font-size: 1.5rem;
      color: #007bff;
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

    .product-card a {
      text-decoration: none;
      color: inherit;
    }
  </style>
</head>
<body>
<header>
  <h1>Интернет-магазин</h1>
</header>

<div class="container">
  <div class="grid">
    <c:forEach var="product" items="${allShoppings}">
      <div class="product-card">
        <a href="/GetShoppings/Online-store/${product.id}">
          <div class="product-image">
            <!-- Место для фото товара -->
            <span>Фото</span>
          </div>
          <div class="product-info">
            <h3><c:out value="${product.productName}" /></h3>
            <p class="price"><c:out value="${product.price}" /> ₽</p>
          </div>
        </a>
      </div>
    </c:forEach>
  </div>
</div>

<footer>
  &copy; 2024 Ваш Магазин. Все права защищены.
</footer>
</body>
</html>
