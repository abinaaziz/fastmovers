/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class DBConnection {  
    Connection con=null;
    public ResultSet rs=null;
    Statement st=null;
    public DBConnection()
    {
        try 
        {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost/db_fastmovers","root","");
            System.out.println("connected");
        } 
        catch(Exception ex)
        {
            System.out.println(ex);
        }
    }
    //can Avoid this function with ExecuteCommand
    public boolean insert(String str){
        boolean b=false;
        try{
            st=con.createStatement();
            st.executeUpdate(str);
            b=true;
        }catch(SQLException e){
            System.out.println(e);
        }
        return b;
    }
    public boolean executeCommand(String str) {
        boolean bol = false;
        try {

            st = con.createStatement();
            st.executeUpdate(str);
            bol = true;

        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return bol;
    }

    public ResultSet select(String str){
        try{
            st=con.createStatement();
            rs=st.executeQuery(str);
        }catch(Exception ex){
            System.out.println("DBConnection Class Error : "+ex);
        }
        return rs;
    }
    public static void main(String [] args)
    {
        DBConnection s=new DBConnection();
    }
    
}
    
    

