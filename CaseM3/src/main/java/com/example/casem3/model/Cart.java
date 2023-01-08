package com.example.casem3.model;

import java.util.List;

public class Cart {
    private Product product;
    private double discount;
    private double total;

    private List<CartItem> items = null;

    public Cart() {
    }

    public Cart(Product product, double discount, double total, List<CartItem> items) {
        this.product = product;
        this.discount = discount;
        this.total = total;
        this.items = items;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public double getDiscount() {
        return discount;
    }

    public void setDiscount(double discount) {
        this.discount = discount;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public List<CartItem> getItems() {
        return items;
    }

    public void setItems(List<CartItem> items) {
        this.items = items;
    }
}
