package com.example.casem3.model;

public class Catagory {
    private int idCatagory;
    private String catagoryName;

    public Catagory() {
    }

    public Catagory(int idCatagory, String catagoryName) {
        this.idCatagory = idCatagory;
        this.catagoryName = catagoryName;
    }

    public int getIdCatagory() {
        return idCatagory;
    }

    public void setIdCatagory(int idCatagory) {
        this.idCatagory = idCatagory;
    }

    public String getCatagoryName() {
        return catagoryName;
    }

    public void setCatagoryName(String catagoryName) {
        this.catagoryName = catagoryName;
    }
}
