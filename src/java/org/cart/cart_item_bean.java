/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.cart;

/**
 *
 * @author sachin
 */
public class cart_item_bean {
    private String aa_name;
    private String aa_isbn;
    private String aa_author;
    private double aa_price;
    private int aa_quantity;
    private double aa_totalcost;
     
    public String getaa_name() {
        return aa_name;
    }
    public void setaa_name(String aa_name) {
        this.aa_name = aa_name;
    }
    public String getaa_isbn() {
        return aa_isbn;
    }
    public void setaa_isbn(String aa_isbn) {
        this.aa_isbn = aa_isbn;
    }
    public String getaa_author() {
        return aa_author;
    }
    public void setaa_author(String aa_author) {
        this.aa_author = aa_author;
    }
    public double getaa_price() {
        return aa_price;
    }
    public void setaa_price(double aa_price) {
        this.aa_price = aa_price;
    }
    public int getaa_quantity() {
        return aa_quantity;
    }
    public void setaa_quantity(int aa_quantity) {
        this.aa_quantity = aa_quantity;
    }
    public double getaa_totalcost() {
        return aa_totalcost;
    }
    public void setaa_totalcost(double aa_totalcost) {
        this.aa_totalcost = aa_totalcost;
    }
}
