<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Danh sách sản phẩm</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 30px; background-color: #f8f9fa; }
        h1 { color: #333; }
        .action-bar { display: flex; justify-content: space-between; align-items: center; margin-bottom: 20px; }
        .btn { padding: 8px 14px; text-decoration: none; border-radius: 4px; font-weight: bold; display: inline-block; }
        .btn-success { background-color: #28a745; color: white; border: none; }
        .btn-primary { background-color: #007bff; color: white; border: none; cursor: pointer; padding: 8px 12px; }
        .btn-warning { background-color: #ffc107; color: #212529; font-size: 13px; padding: 4px 8px; }
        .btn-danger { background-color: #dc3545; color: white; font-size: 13px; padding: 4px 8px; }
        .btn-info { background-color: #17a2b8; color: white; font-size: 13px; padding: 4px 8px; }
        table { width: 100%; border-collapse: collapse; background: #fff; box-shadow: 0 1px 3px rgba(0,0,0,0.1); }
        th, td { border: 1px solid #dee2e6; padding: 12px; text-align: left; }
        th { background-color: #343a40; color: white; }
        tr:nth-child(even) { background-color: #f2f2f2; }
        tr:hover { background-color: #e9ecef; }
        .search-box input[type="text"] { padding: 8px; width: 220px; border: 1px solid #ccc; border-radius: 4px; }
        .alert { padding: 12px; margin-bottom: 20px; border-radius: 4px; }
        .alert-info { background-color: #d1ecf1; color: #0c5460; border: 1px solid #bee5eb; }
        .alert-warning { background-color: #fff3cd; color: #856404; border: 1px solid #ffeeba; }
    </style>
</head>
<body>

    <h1>Quản lý sản phẩm</h1>

    <div class="action-bar">
        <a href="${pageContext.request.contextPath}/products?action=create" class="btn btn-success">+ Thêm mới sản phẩm</a>

        <div class="search-box">
            <form action="${pageContext.request.contextPath}/products" method="post" style="margin: 0;">
                <input type="hidden" name="action" value="search">
                <input type="text" name="searchName" placeholder="Nhập tên sản phẩm cần tìm..." required>
                <button type="submit" class="btn btn-primary">Tìm kiếm</button>
            </form>
        </div>
    </div>

    <!-- Thông báo kết quả tìm kiếm nếu có -->
    <c:if test="${not empty notFoundMessage}">
        <div class="alert alert-warning">${notFoundMessage}</div>
    </c:if>

    <c:if test="${not empty searchResult}">
        <div class="alert alert-info">
            <strong>Kết quả tìm kiếm phù hợp:</strong> ${searchResult.name} | Giá: $${searchResult.price} | Hãng: ${searchResult.producer}
            | <a href="${pageContext.request.contextPath}/products?action=view&id=${searchResult.id}">Xem chi tiết</a>
        </div>
    </c:if>

    <!-- Bảng danh sách sản phẩm -->
    <table>
        <thead>
            <tr>
                <th>STT</th>
                <th>Tên sản phẩm</th>
                <th>Giá ($)</th>
                <th>Mô tả</th>
                <th>Nhà sản xuất</th>
                <th style="text-align: center;">Thao tác</th>
            </tr>
        </thead>
        <tbody>
            <c:choose>
                <c:when test="${not empty products}">
                    <c:forEach var="product" items="${products}" varStatus="status">
                        <tr>
                            <td>${status.count}</td>
                            <td><strong>${product.name}</strong></td>
                            <td>${product.price}</td>
                            <td>${product.description}</td>
                            <td>${product.producer}</td>
                            <td style="text-align: center;">
                                <a href="${pageContext.request.contextPath}/products?action=view&id=${product.id}" class="btn btn-info">Xem</a>
                                <a href="${pageContext.request.contextPath}/products?action=edit&id=${product.id}" class="btn btn-warning">Sửa</a>
                                <a href="${pageContext.request.contextPath}/products?action=delete&id=${product.id}" class="btn btn-danger">Xóa</a>
                            </td>
                        </tr>
                    </c:forEach>
                </c:when>
                <c:otherwise>
                    <tr>
                        <td colspan="6" style="text-align: center; color: #888;">Chưa có sản phẩm nào trong hệ thống!</td>
                    </tr>
                </c:otherwise>
            </c:choose>
        </tbody>
    </table>

</body>
</html>
