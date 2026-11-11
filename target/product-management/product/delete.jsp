<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Xóa sản phẩm</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 30px; background-color: #f8f9fa; }
        .form-container { width: 450px; background: #fff; padding: 25px; border-radius: 8px; box-shadow: 0 1px 3px rgba(0,0,0,0.1); border-left: 5px solid #dc3545; }
        .info-row { margin-bottom: 12px; }
        .info-label { font-weight: bold; color: #555; }
        .btn { padding: 8px 16px; border: none; border-radius: 4px; cursor: pointer; text-decoration: none; display: inline-block; }
        .btn-danger { background-color: #dc3545; color: white; font-weight: bold; }
        .btn-secondary { background-color: #6c757d; color: white; margin-left: 10px; }
    </style>
</head>
<body>

<div class="form-container">
    <h2 style="color: #dc3545;">Xác nhận xóa sản phẩm</h2>
    <p>Bạn có chắc chắn muốn xóa sản phẩm sau khỏi hệ thống không?</p>

    <div class="info-row">
        <span class="info-label">Mã sản phẩm:</span> ${product.id}
    </div>
    <div class="info-row">
        <span class="info-label">Tên sản phẩm:</span> <strong>${product.name}</strong>
    </div>
    <div class="info-row">
        <span class="info-label">Giá:</span> $${product.price}
    </div>
    <div class="info-row">
        <span class="info-label">Nhà sản xuất:</span> ${product.producer}
    </div>

    <form action="${pageContext.request.contextPath}/products" method="post" style="margin-top: 20px;">
        <input type="hidden" name="action" value="delete">
        <input type="hidden" name="id" value="${product.id}">
        <button type="submit" class="btn btn-danger">Xác nhận Xóa</button>
        <a href="${pageContext.request.contextPath}/products" class="btn btn-secondary">Hủy bỏ</a>
    </form>
</div>

</body>
</html>
