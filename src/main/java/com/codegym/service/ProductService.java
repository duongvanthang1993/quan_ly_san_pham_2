package com.codegym.service;

import com.codegym.model.Product;
import java.util.List;

/**
 * Interface định nghĩa các phương thức nghiệp vụ quản lý sản phẩm.
 */
public interface ProductService {
    /**
     * Lấy toàn bộ danh sách sản phẩm.
     */
    List<Product> findAll();

    /**
     * Lưu thông tin sản phẩm mới hoặc cập nhật.
     */
    void save(Product product);

    /**
     * Tìm kiếm sản phẩm theo ID.
     */
    Product findById(int id);

    /**
     * Cập nhật thông tin sản phẩm theo ID.
     */
    void update(int id, Product product);

    /**
     * Xóa sản phẩm theo ID.
     */
    void remove(int id);

    /**
     * Tìm kiếm sản phẩm theo tên.
     */
    Product findByName(String name);
}

