/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Account;

/**
 *
 * @author ASUS
 */
public class AccountDBContext extends DBContext<Account>{

    @Override
    public ArrayList<Account> list() {
      ArrayList<Account> acc = new ArrayList<>();
        try {
            String sql = "SELECT usename,password FROM Account";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while(rs.next())
            {
                Account d = new Account();
                d.setUsename(rs.getString("usename"));
                d.setPassword(rs.getString("password"));
                acc.add(d);
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return acc;
    }
    

    @Override
    public Account get(String id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void insert(Account model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Account model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Account model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Account getT(String usename, String password) {
        try {
            String sql = "select usename, password ,displayname from Account where usename = ? and password = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, usename);
            stm.setString(2, password);
            ResultSet rs = stm.executeQuery();
            while(rs.next()){
                Account a = new Account();
                a.setUsename(rs.getString("usename"));
                a.setPassword(rs.getString("password"));
                a.setDisplayname(rs.getString("displayname"));
                return a;
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public static void main(String[] args) {
        AccountDBContext db = new AccountDBContext();
        Account t = db.getT("linhntt", "12345");
        System.out.println(t);
    }
    
}
