<%@ page contentType="text/html;charset=UTF-8" language="java" isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>404 - Không tìm thấy</title>
    <style>
        body { font-family: Arial, sans-serif; text-align: center; padding-top: 80px; background-color: #f8f9fa; }
        h1 { font-size: 72px; color: #dc3545; margin-bottom: 10px; }
        p { font-size: 18px; color: #666; }
        .btn { display: inline-block; margin-top: 20px; padding: 10px 20px; background-color: #007bff; color: #fff; text-decoration: none; border-radius: 4px; }
    </style>
</head>
<body>
    <h1>404</h1>
    <h2>Không tìm thấy sản phẩm hoặc trang yêu cầu!</h2>
    <p>Sản phẩm bạn đang tìm kiếm có thể không tồn tại hoặc đã bị xóa.</p>
    <a href="${pageContext.request.contextPath}/products" class="btn">Về trang danh sách sản phẩm</a>
</body>
</html>
