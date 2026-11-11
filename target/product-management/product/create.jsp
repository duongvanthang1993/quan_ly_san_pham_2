<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Thêm mới sản phẩm</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 30px; background-color: #f8f9fa; }
        .form-container { width: 450px; background: #fff; padding: 25px; border-radius: 8px; box-shadow: 0 1px 3px rgba(0,0,0,0.1); }
        .form-group { margin-bottom: 15px; }
        label { display: block; margin-bottom: 5px; font-weight: bold; }
        input[type="text"], input[type="number"], textarea { width: 100%; padding: 8px; box-sizing: border-box; border: 1px solid #ccc; border-radius: 4px; }
        .btn { padding: 8px 16px; border: none; border-radius: 4px; cursor: pointer; text-decoration: none; display: inline-block; }
        .btn-success { background-color: #28a745; color: white; }
        .btn-secondary { background-color: #6c757d; color: white; margin-left: 10px; }
        .alert-success { background-color: #d4edda; color: #155724; padding: 10px; border-radius: 4px; margin-bottom: 15px; }
    </style>
</head>
<body>

<div class="form-container">
    <h2>Thêm sản phẩm mới</h2>

    <c:if test="${not empty message}">
        <div class="alert-success">${message}</div>
    </c:if>

    <form action="${pageContext.request.contextPath}/products" method="post">
        <input type="hidden" name="action" value="create">

        <div class="form-group">
            <label for="name">Tên sản phẩm:</label>
            <input type="text" id="name" name="name" required placeholder="Nhập tên sản phẩm">
        </div>

        <div class="form-group">
            <label for="price">Giá sản phẩm ($):</label>
            <input type="number" id="price" name="price" step="0.01" required placeholder="Nhập giá">
        </div>

        <div class="form-group">
            <label for="producer">Nhà sản xuất:</label>
            <input type="text" id="producer" name="producer" required placeholder="Nhập tên hãng">
        </div>

        <div class="form-group">
            <label for="description">Mô tả sản phẩm:</label>
            <textarea id="description" name="description" rows="3" placeholder="Nhập mô tả"></textarea>
        </div>

        <button type="submit" class="btn btn-success">Lưu sản phẩm</button>
        <a href="${pageContext.request.contextPath}/products" class="btn btn-secondary">Quay lại danh sách</a>
    </form>
</div>

</body>
</html>
