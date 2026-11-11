package com.codegym.service;

import com.codegym.model.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Lớp triển khai của ProductService sử dụng Map tĩnh để giả lập lưu trữ dữ liệu sản phẩm.
 */
public class ProductServiceImpl implements ProductService {
    private static Map<Integer, Product> products;

    static {
        products = new HashMap<>();
        products.put(1, new Product(1, "iPhone 15 Pro", 999.0, "Titanium design, A17 Pro chip", "Apple"));
        products.put(2, new Product(2, "Samsung Galaxy S24 Ultra", 1199.0, "Galaxy AI, 200MP camera", "Samsung"));
        products.put(3, new Product(3, "Sony WH-1000XM5", 399.0, "Industry leading noise canceling", "Sony"));
        products.put(4, new Product(4, "Dell XPS 15", 1499.0, "OLED display, Intel Core i7", "Dell"));
        products.put(5, new Product(5, "iPad Air M2", 599.0, "M2 chip, Liquid Retina display", "Apple"));
    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(products.values());
    }

    @Override
    public void save(Product product) {
        products.put(product.getId(), product);
    }

    @Override
    public Product findById(int id) {
        return products.get(id);
    }

    @Override
    public void update(int id, Product product) {
        products.put(id, product);
    }

    @Override
    public void remove(int id) {
        products.remove(id);
    }

    @Override
    public Product findByName(String name) {
        if (name == null || name.trim().isEmpty()) {
            return null;
        }
        for (Product product : products.values()) {
            if (product.getName().toLowerCase().contains(name.trim().toLowerCase())) {
                return product;
            }
        }
        return null;
    }
}
