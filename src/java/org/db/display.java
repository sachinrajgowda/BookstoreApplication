/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author sachin
 */
public class display {

    public static Connection getConnection()
    {
        String dburl = "jdbc:mysql://localhost:3306/login";
        String username = "root";
        String password = "root";
        Connection con = null;         
            try {  
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection(dburl, username, password);
            }catch (SQLException | ClassNotFoundException e) {
            }
            return con;
    }
    /*
    *
    *@param args
    */
    //String f_name,String l_name,String email, String password,String p_no
    public static void setuser(String f_name,String l_name,String email, String password,String p_no) throws Exception 
    {   
        Connection con = getConnection();
        Statement stmt = null;
        ResultSet res = null;
        try
        {
            stmt = con.createStatement();
            
            String sql="INSERT INTO user (first_name,last_name,email,password,phone_no) " + "VALUES ('"+f_name+"','"+l_name+"','"+email+"','"+password+"','"+p_no+"')";
            //res = stmt.executeQuery(sql);
            stmt.executeUpdate(sql);                
        }  
        finally 
        {
            if (res!=null) { res.close(); } 
            if (stmt!=null) { stmt.close(); }
            if (con!=null) { con.close(); }  
        }
    }
    public static String[] personal_detail(String emailid) throws Exception
    {
        Connection con = getConnection();
        Statement stmt = null;
        ResultSet res = null;
        String[] details = new String[4];
        try
        {
            String psql="SELECT * FROM user WHERE email=?";
            PreparedStatement pstmt = con.prepareStatement(psql);
            pstmt.setString(1, emailid);
            res = pstmt.executeQuery();
            while(res.next())
            {
                    details[0]=res.getString("first_name");
                    details[1]=res.getString("last_name");
                    details[2]=res.getString("email");
                    details[3]=res.getString("phone_no");
            }    
        } 
        finally 
        {
            if (res!=null) { res.close(); } 
            if (stmt!=null) { stmt.close(); }
            if (con!=null) { con.close(); }  
        }
        return details;
    }
    public static String validate(String email, String password) throws Exception
    {
        Connection con = getConnection();
        Statement stmt = null;
        ResultSet res = null;
        try
        {
            stmt = con.createStatement();
            
            String sql="SELECT email,password FROM user";
            res = stmt.executeQuery(sql);
            while(res.next())
            {
                if((res.getString("email").equals(email))&&(res.getString("password").equals(password)))
                {
                    return "success";
                }
            }    
        } 
        finally 
        {
            if (res!=null) { res.close(); } 
            if (stmt!=null) { stmt.close(); }
            if (con!=null) { con.close(); }  
        }
        return "failure";
    }
    
    public static void update(String first_name,String last_name,String phone_no,String email) throws Exception 
    {   
        Connection con = getConnection();
        Statement stmt = null;
        ResultSet res = null;
        try
        {
            stmt = con.createStatement();
            String psql="UPDATE user SET first_name=?,last_name=?,phone_no=? WHERE email=?";
            PreparedStatement pstmt = con.prepareStatement(psql);
            pstmt.setString(1, first_name);
            pstmt.setString(2, last_name);
            pstmt.setString(3, phone_no);
            pstmt.setString(4, email);
            pstmt.executeUpdate();                
        } 
        finally 
        {
            if (res!=null) { res.close(); } 
            if (stmt!=null) { stmt.close(); }
            if (con!=null) { con.close(); }  
        }
    }
    
    public static void r(String em) throws Exception 
        {   
        Connection con = getConnection();
        Statement stmt = null;
        ResultSet res = null;
        try
        {
            stmt = con.createStatement();
            String psql="DELETE FROM user WHERE email=?";
            PreparedStatement pstmt = con.prepareStatement(psql);
            pstmt.setString(1, em);
            pstmt.executeUpdate();                
        } 
        finally 
        {
            if (res!=null) { res.close(); } 
            if (stmt!=null) { stmt.close(); }
            if (con!=null) { con.close(); }  
        }
    }   
}
