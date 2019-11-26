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
import java.util.ArrayList;
import java.util.List;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

/**
 *
 * @author MyPC
 */
public class Category {
    private String cate;
    
    public Category () {
        
    }
    
    public Category (String cate) {
        this.cate = cate;
    }
    
    public String getCate () {
        return this.cate;
    }
    
    public void setCate (String cate) {
        this.cate = cate;
    }
    
    public List<Book> list(int number) {
        String query = "Select top " + number + " * from Book where Category = N\'" + this.cate + "\'";
        ArrayList<Book> list = new ArrayList<>();
        try {
            Context initContext = new InitialContext();
            DataSource ds = (DataSource) initContext.lookup("java:comp/env/jdbc/BookStore");
            Connection conn = ds.getConnection();
            Statement state = conn.createStatement();
            ResultSet rs = state.executeQuery(query);
            if (rs.next()) {
                Book book = new Book();
                book.setBookID(rs.getString("BookID"));
                book.setbName(rs.getNString("BName"));
                book.setAuthor(rs.getNString("Author"));
                book.setPrice(rs.getInt("Price"));
                
                list.add(book);
            }
            
        } catch (SQLException | NamingException e) {
            System.out.println(e.getMessage());
        }
        return list;
    }
}
