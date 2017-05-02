/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.login;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.db.display;
/**
 *
 * @author sachin
 */
public class login_servlet extends HttpServlet {

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
        
                String loginedit=request.getParameter("loginedit");               
                if(loginedit.equals("login"))
                {        
                    String email=request.getParameter("email");
                    String password=request.getParameter("password");
                    try {
                        String result = display.validate(email, password);
                        if(result.equals("failure"))
                        {
                            request.setAttribute("errMsg", "username and password are incorrect");
                            RequestDispatcher rd = request.getRequestDispatcher("/login_page.jsp");
                            rd.forward(request, response); 
                        }
                        else if(result.equals("success"))
                        {
                            String details[] = display.personal_detail(email);
                            HttpSession session=request.getSession(true);                             
                            session.setAttribute("username", "Welcome "+details[0]+" "+details[1]);
                            session.setAttribute("first_name", details[0]);
                            session.setAttribute("last_name", details[1]);
                            session.setAttribute("email", details[2]);
                            session.setAttribute("phone_no", details[3]);
                            getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
                            //RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
                            //rd.forward(request, response);  
                            //response.sendRedirect("/login_page.jsp");
                        }
                    } catch (Exception ex) {
                        Logger.getLogger(login_servlet.class.getName()).log(Level.SEVERE, null, ex);
                    }
                }
                if(loginedit.equals("logout"))
                {
                    HttpSession session=request.getSession(false);  
                    session.invalidate();
                    RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
                    rd.forward(request, response);
                }
                if(loginedit.equals("edit"))
                {
                    HttpSession session = request.getSession(false);   
                    String email= (String) session.getAttribute("email");
                    String f_n=(String) session.getAttribute("first_name");
                    String l_n=(String) session.getAttribute("last_name");
                    String p_no=(String) session.getAttribute("phone_no");
                    try {
                        display.update(f_n,l_n,p_no,email);
                    } catch (Exception ex) {
                        Logger.getLogger(login_servlet.class.getName()).log(Level.SEVERE, null, ex);
                    }
                    getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
                }
                if(loginedit.equals("unregister"))
                {
                    String email=request.getParameter("email");
                    try {
                        display.r(email);
                    } catch (Exception ex) {
                        Logger.getLogger(login_servlet.class.getName()).log(Level.SEVERE, null, ex);
                    }
                    RequestDispatcher rd1 = request.getRequestDispatcher("/index.jsp");
                    rd1.forward(request, response);
                }
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
