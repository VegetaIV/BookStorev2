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
public class Book {

    private String bookID;
    private String bName;
    private String author;
    private int price;
    private int amount;
    private String content;

    public Book() {

    }

    public Book(String id) {
        String query = "Select * from Book where BookID = \'" + id + "\'";
        try {
            Context initContext = new InitialContext();
            Context envContext = (Context) initContext.lookup("java:comp/env");
            DataSource ds = (DataSource) envContext.lookup("jdbc/BookStore");
            Connection conn = ds.getConnection();
            Statement state = conn.createStatement();
            ResultSet rs = state.executeQuery(query);
            if (rs.next()) {
                this.bookID = id;
                this.bName = rs.getNString("BName");
                this.author = rs.getNString("Author");
                this.price = rs.getInt("Price");
                this.amount = rs.getInt("Amount");
                this.content = rs.getNString("Content");
            }
            rs.close();
        } catch (SQLException | NamingException ex) {
            System.err.println(ex);
        }
    }

    public String getBookID() {
        return bookID;
    }

    public void setBookID(String bookID) {
        this.bookID = bookID;
    }

    public String getbName() {
        return bName;
    }

    public void setbName(String bName) {
        this.bName = bName;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
