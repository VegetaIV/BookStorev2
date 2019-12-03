/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

/**
 *
 * @author MyPC
 */
public class Register {
    private String id;
    
    public Register() {
        
    }
    
    public Register(String name, String mail, String phone, String password) {
        String query = "Select top 1 AccID from Account order by AccID desc";
        String last;
        try {
            Context initContext = new InitialContext();
            Context envContext = (Context) initContext.lookup("java:comp/env");
            DataSource ds = (DataSource) envContext.lookup("jdbc/BookStore");
            Connection conn = ds.getConnection();
            Statement state = conn.createStatement();
            ResultSet rs = state.executeQuery(query);
            String accID = null;
            if (rs.next()) {
                last = rs.getString(1);
                int c, m = 0;
                int k = last.length();
                for (int i=0; i<k; i++) {
                    c = last.charAt(i) - '0';
                    m = m*10 + c;
                }
                int n = m + 1;
                accID = "" + n;
            }
            rs.close();
            query = "Insert into Account (AccID, Mail, Name, Phone, Password)" +
                    " values (\'" + accID + "\', \'" + mail + "\', N\'" + name +
                    "\', \'" + phone + "\', \'" + password + "\')";
            rs = state.executeQuery(query);
            if (rs.next()) {
                this.id = accID;
            }
        } catch(SQLException | NamingException e) {
            System.out.println(e.getMessage());
        }
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }
    
}
