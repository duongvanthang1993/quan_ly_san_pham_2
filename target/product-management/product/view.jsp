<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ taglib prefix="c" uri="jakarta.tags.core" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>Chi tiết sản phẩm</title>
            <style>
                body {
                    font-family: Arial, sans-serif;
                    margin: 30px;
                    background-color: #f8f9fa;
                }

                .detail-card {
                    width: 500px;
                    background: #fff;
                    padding: 25px;
                    border-radius: 8px;
                    box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);
                }

                .row {
                    display: flex;
                    margin-bottom: 12px;
                    border-bottom: 1px solid #f1f1f1;
                    padding-bottom: 8px;
                }

                .label {
                    width: 140px;
                    font-weight: bold;
                    color: #555;
                }

                .value {
                    flex: 1;
                    color: #222;
                }

                .price {
                    color: #d9534f;
                    font-weight: bold;
                    font-size: 18px;
                }

                .actions {
                    margin-top: 20px;
                }

                .btn {
                    padding: 8px 16px;
                    border-radius: 4px;
                    text-decoration: none;
                    display: inline-block;
                }

                .btn-warning {
                    background-color: #ffc107;
                    color: #212529;
                    font-weight: bold;
                }

                .btn-secondary {
                    background-color: #6c757d;
                    color: white;
                    margin-left: 10px;
                }
            </style>
        </head>

        <body>

            <div class="detail-card">
                <h2>Thông tin chi tiết sản phẩm</h2>

                <div class="row">
                    <span class="label">ID:</span>
                    <span class="value">${product.id}</span>
                </div>
                <div class="row">
                    <span class="label">Tên sản phẩm:</span>
                    <span class="value"><strong>${product.name}</strong></span>
                </div>
                <div class="row">
                    <span class="label">Giá bán:</span>
                    <span class="value price">$${product.price}</span>
                </div>
                <div class="row">
                    <span class="label">Nhà sản xuất:</span>
                    <span class="value">${product.producer}</span>
                </div>
                <div class="row">
                    <span class="label">Mô tả:</span>
                    <span class="value">${product.description}</span>
                </div>

                <div class="actions">
                    <a href="${pageContext.request.contextPath}/products?action=edit&id=${product.id}"
                        class="btn btn-warning">Sửa sản phẩm này</a>
                    <a href="${pageContext.request.contextPath}/products" class="btn btn-secondary">Quay lại danh
                        sách</a>
                </div>
            </div>

        </body>

        </html>