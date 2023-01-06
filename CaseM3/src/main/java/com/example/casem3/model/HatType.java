package com.example.casem3.model;

public class HatType {
    private int idHattype;
    private String typeName;

    public HatType() {
    }

    public HatType(int idHattype, String typeName) {
        this.idHattype = idHattype;
        this.typeName = typeName;
    }

    public int getIdHattype() {
        return idHattype;
    }

    public void setIdHattype(int idHattype) {
        this.idHattype = idHattype;
    }

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }
}
