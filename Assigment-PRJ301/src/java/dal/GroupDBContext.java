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
import model.Group;

/**
 *
 * @author ASUS
 */
public class GroupDBContext extends DBContext<Group>{

    @Override
    public ArrayList<Group> list() {
    ArrayList<Group> groups = new ArrayList<>();
        try {
            String sql = "SELECT gid,gname FROM [Group]";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Group d = new Group();
                d.setGid(rs.getInt("gid"));
                d.setGname(rs.getString("gname"));
                groups.add(d);
            }
        } catch (SQLException ex) {
            Logger.getLogger(GroupDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return groups;
    }    

    @Override
    public Group get(String id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void insert(Group model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Group model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Group model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Group getT(String a, String b) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    public static void main(String[] args) {
        GroupDBContext db = new GroupDBContext();
        ArrayList<Group> list = db.list();
        System.out.println(list);
        
    }
    
}
