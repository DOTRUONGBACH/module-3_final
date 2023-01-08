package com.example.casem3.model;

public class CartItem {
    private Product product;
    private double sellPrice;
    private int quantity;
    private double totalCost;

    public CartItem(Product product, double sellPrice, int quantity, double totalCost) {
        this.product = product;
        this.sellPrice = sellPrice;
        this.quantity = quantity;
        this.totalCost = totalCost;
    }

    public CartItem() {
    }

    public Product getHat() {
        return product;
    }

    public void setHat(Product product) {
        this.product = product;
    }

    public double getSellPrice() {
        return sellPrice;
    }

    public void setSellPrice(double sellPrice) {
        this.sellPrice = sellPrice;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public void setTotalCost(double totalCost) {
        this.totalCost = totalCost;
    }

    public double getTotalCost() {
        calculateTotalcost();
        return totalCost;
    }

    public void calculateTotalcost(){
        setTotalCost(quantity*sellPrice);
    }

}
