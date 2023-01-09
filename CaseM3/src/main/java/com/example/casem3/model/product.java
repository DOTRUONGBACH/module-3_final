package com.example.casem3.model;

    public class Product {
        private int hatId;
        private String hatName;
        private String imgMain;
        private String imgSub1;
        private String imgSub2;
        private double sellPrice;
        private int quantity;
        private String detail;
        private int idHattype;
        private int idCatagory;

        public Product() {
        }

        public Product(int hatId, String hatName, String imgMain, String imgSub1, String imgSub2, double sellPrice, int quantity, String detail, int idHattype, int idCatagory) {
            this.hatId = hatId;
            this.hatName = hatName;
            this.imgMain = imgMain;
            this.imgSub1 = imgSub1;
            this.imgSub2 = imgSub2;
            this.sellPrice = sellPrice;
            this.quantity = quantity;
            this.detail = detail;
            this.idHattype = idHattype;
            this.idCatagory = idCatagory;
        }

        public Product(String hatName, String imgMain, String imgSub1, String imgSub2, double sellPrice, int quantity, String detail) {
            this.hatName = hatName;
            this.imgMain = imgMain;
            this.imgSub1 = imgSub1;
            this.imgSub2 = imgSub2;
            this.sellPrice = sellPrice;
            this.quantity = quantity;
            this.detail = detail;
        }

        public Product(int hatid, String hatName, String imgMain, String imgSub1, String imgSub2, double sellPrice, int quantity, String detail) {
            this.hatId = hatid;
            this.hatName = hatName;
            this.imgMain = imgMain;
            this.imgSub1 = imgSub1;
            this.imgSub2 = imgSub2;
            this.sellPrice = sellPrice;
            this.quantity = quantity;
            this.detail = detail;
        }

        public int getHatId() {
            return hatId;
        }

        public void setHatId(int hatId) {
            this.hatId = hatId;
        }

        public String getHatName() {
            return hatName;
        }

        public void setHatName(String hatName) {
            this.hatName = hatName;
        }

        public String getImgMain() {
            return imgMain;
        }

        public void setImgMain(String imgMain) {
            this.imgMain = imgMain;
        }

        public String getImgSub1() {
            return imgSub1;
        }

        public void setImgSub1(String imgSub1) {
            this.imgSub1 = imgSub1;
        }

        public String getImgSub2() {
            return imgSub2;
        }

        public void setImgSub2(String imgSub2) {
            this.imgSub2 = imgSub2;
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

        public String getDetail() {
            return detail;
        }

        public void setDetail(String detail) {
            this.detail = detail;
        }

        public int getIdHattype() {
            return idHattype;
        }

        public void setIdHattype(int idHattype) {
            this.idHattype = idHattype;
        }

        public int getIdCatagory() {
            return idCatagory;
        }

        public void setIdCatagory(int idCatagory) {
            this.idCatagory = idCatagory;
        }
    }


