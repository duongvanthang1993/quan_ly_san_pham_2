<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Cập nhật sản phẩm</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 30px; background-color: #f8f9fa; }
        .form-container { width: 450px; background: #fff; padding: 25px; border-radius: 8px; box-shadow: 0 1px 3px rgba(0,0,0,0.1); }
        .form-group { margin-bottom: 15px; }
        label { display: block; margin-bottom: 5px; font-weight: bold; }
        input[type="text"], input[type="number"], textarea { width: 100%; padding: 8px; box-sizing: border-box; border: 1px solid #ccc; border-radius: 4px; }
        .btn { padding: 8px 16px; border: none; border-radius: 4px; cursor: pointer; text-decoration: none; display: inline-block; }
        .btn-warning { background-color: #ffc107; color: #212529; font-weight: bold; }
        .btn-secondary { background-color: #6c757d; color: white; margin-left: 10px; }
        .alert-success { background-color: #d4edda; color: #155724; padding: 10px; border-radius: 4px; margin-bottom: 15px; }
    </style>
</head>
<body>

<div class="form-container">
    <h2>Cập nhật sản phẩm</h2>

    <c:if test="${not empty message}">
        <div class="alert-success">${message}</div>
    </c:if>

    <form action="${pageContext.request.contextPath}/products" method="post">
        <input type="hidden" name="action" value="edit">
        <input type="hidden" name="id" value="${product.id}">

        <div class="form-group">
            <label for="name">Tên sản phẩm:</label>
            <input type="text" id="name" name="name" value="${product.name}" required>
        </div>

        <div class="form-group">
            <label for="price">Giá sản phẩm ($):</label>
            <input type="number" id="price" name="price" step="0.01" value="${product.price}" required>
        </div>

        <div class="form-group">
            <label for="producer">Nhà sản xuất:</label>
            <input type="text" id="producer" name="producer" value="${product.producer}" required>
        </div>

        <div class="form-group">
            <label for="description">Mô tả sản phẩm:</label>
            <textarea id="description" name="description" rows="3">${product.description}</textarea>
        </div>

        <button type="submit" class="btn btn-warning">Lưu thay đổi</button>
        <a href="${pageContext.request.contextPath}/products" class="btn btn-secondary">Quay lại danh sách</a>
    </form>
</div>

</body>
</html>
