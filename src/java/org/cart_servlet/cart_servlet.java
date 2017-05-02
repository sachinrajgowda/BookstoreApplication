/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.cart_servlet;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.cart.cart_bean;

/**
 *
 * @author sachin
 */
public class cart_servlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                String action = request.getParameter("action");
                if(action!=null && !action.equals("")) 
                {
                    if(action.equals("add")) 
                    {
                        addToCart(request);
                        RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
                        rd.forward(request, response);
                    } 
                    if (action.equals("Update")) 
                    {
                        updateCart(request);
                        RequestDispatcher rd = request.getRequestDispatcher("/cart.jsp");
                        rd.forward(request, response);
                    } 
                    if (action.equals("Delete")) 
                    {
                        deleteCart(request);
                        RequestDispatcher rd = request.getRequestDispatcher("/cart.jsp");
                        rd.forward(request, response);
                    }
                }
            }
    
            protected void addToCart(HttpServletRequest request) 
            {
                HttpSession session = request.getSession();
                String aa_name = request.getParameter("aa_name");
                String aa_isbn = request.getParameter("aa_isbn");
                String aa_author = request.getParameter("aa_author");
                String aa_price = request.getParameter("aa_price");
                String aa_quantity = request.getParameter("aa_quantity");
                cart_bean cartBean = null;
                Object objCartBean = session.getAttribute("cart");
                if(objCartBean!=null) 
                {
                    cartBean = (cart_bean) objCartBean ;
                } 
                else 
                {
                    cartBean = new cart_bean();
                    session.setAttribute("cart", cartBean);
                }
                    cartBean.addCartItem(aa_name, aa_isbn, aa_author, aa_price, aa_quantity);
            }
            
            protected void updateCart(HttpServletRequest request) 
            {
                HttpSession session = request.getSession();
                String quantity = request.getParameter("aa_quantity");
                String strItemIndex = request.getParameter("itemIndex");
                cart_bean cartBean = null;
                Object objCartBean = session.getAttribute("cart");
                if(objCartBean!=null) 
                {
                    cartBean = (cart_bean) objCartBean ;
                } 
                else 
                {
                    cartBean = new cart_bean();
                }
                cartBean.updateCartItem(strItemIndex, quantity);
            }
            
            protected void deleteCart(HttpServletRequest request) 
            {
                HttpSession session = request.getSession();
                String strItemIndex = request.getParameter("itemIndex");
                cart_bean cartBean = null;
                Object objCartBean = session.getAttribute("cart");
                if(objCartBean!=null) 
                {
                    cartBean = (cart_bean) objCartBean ;
                } 
                else 
                {
                    cartBean = new cart_bean();
                }
                cartBean.deleteCartItem(strItemIndex);
            }
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
