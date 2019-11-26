/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

/**
 *
 * @author MyPC
 */
public class Login {
    private String id;
    
    public Login () {
        
    } 
    
    public boolean login (String mail, String password) {
        String query = "Select AccID from Account where Mail = \'" + mail + "\' and Password = \'" + password + "\'";
        boolean check = false;
        try {
            Context initContext = new InitialContext();
            Context envContext = (Context) initContext.lookup("java:comp/env");
            DataSource ds = (DataSource) envContext.lookup("jdbc/BookStore");
            Connection conn = ds.getConnection();
            Statement state = conn.createStatement();
            ResultSet rs = state.executeQuery(query);
            if (rs.next()) {
                this.id = rs.getString("AccID");
                check = true;
            }
            else this.id = null;
            
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return check;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }
    
    
}
