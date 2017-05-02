/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.cart;
import java.util.ArrayList;
/**
 *
 * @author sachin
 */
public class cart_bean {
    private ArrayList alCartItems = new ArrayList();
    private double order_total ;
    public int getLineItemCount() 
    {
        return alCartItems.size();
    }
    
    public void deleteCartItem(String strItemIndex) 
    {
        int iItemIndex = 0;
        try 
        {
            iItemIndex = Integer.parseInt(strItemIndex);
            alCartItems.remove(iItemIndex - 1);
            calculate_order_total();
        } 
        catch(NumberFormatException e) 
        {
            System.out.println("Error while deleting cart item: "+e.getMessage());
            e.printStackTrace();
        }
    }
    
    public void updateCartItem(String strItemIndex, String strQuantity) 
    {
        double aa_totalcost = 0.0;
        double aa_price = 0.0;
        int aa_quantity = 0;
        int iItemIndex = 0;
        cart_item_bean cartItem = null;
        try 
        {
            iItemIndex = Integer.parseInt(strItemIndex);
            aa_quantity = Integer.parseInt(strQuantity);
            if(aa_quantity>0) 
            {
                cartItem = (cart_item_bean)alCartItems.get(iItemIndex-1);
                aa_price = cartItem.getaa_price();
                aa_totalcost = aa_price*aa_quantity;
                cartItem.setaa_quantity(aa_quantity);
                cartItem.setaa_totalcost(aa_totalcost);
                calculate_order_total();
            }
        } 
        catch (NumberFormatException e) 
        {
            System.out.println("Error while updating cart: "+e.getMessage());
            e.printStackTrace();
        }
    }
    
    public void addCartItem(String name, String isbn, String author, String price, String quantity) 
    {
        double totalcost = 0.0;
        double aa_price = 0.0;
        int aa_quantity = 0;
        cart_item_bean cartItem = new cart_item_bean();
        try 
        {
            aa_price = Double.parseDouble(price);
            aa_quantity = Integer.parseInt(quantity);
            if(aa_quantity>0) 
            {
                totalcost = aa_price*aa_quantity;
                cartItem.setaa_name(name);
                cartItem.setaa_isbn(isbn);
                cartItem.setaa_author(author);
                cartItem.setaa_price(aa_price);
                cartItem.setaa_quantity(aa_quantity);
                cartItem.setaa_totalcost(totalcost);
                alCartItems.add(cartItem);
                calculate_order_total();
            }
        } 
        catch (NumberFormatException e) 
        {
            System.out.println("Error while parsing from String to primitive types: "+e.getMessage());
            e.printStackTrace();
        }
    }
    
    public void addCartItem(cart_item_bean cartItem) 
    {
        alCartItems.add(cartItem);
    }
  
    public cart_item_bean getCartItem(int iItemIndex) 
    {
        cart_item_bean cartItem = null;
        if(alCartItems.size()>iItemIndex) 
        {
            cartItem = (cart_item_bean) alCartItems.get(iItemIndex);
        }
        return cartItem;
    }
  
    public ArrayList getCartItems() 
    {
        return alCartItems;
    }
    public void setCartItems(ArrayList alCartItems) 
    {
        this.alCartItems = alCartItems;
    }
    
    public double getorder_total() {
        return order_total;
    }
    public void setorder_total(double order_total) 
    {
        this.order_total = order_total;
    }
    
    protected void calculate_order_total() 
    {
        double dblTotal = 0;
        for(int counter=0;counter<alCartItems.size();counter++) 
        {
            cart_item_bean cartItem = (cart_item_bean) alCartItems.get(counter);
            dblTotal+=cartItem.getaa_totalcost();
        }
        setorder_total(dblTotal);
    }
}
