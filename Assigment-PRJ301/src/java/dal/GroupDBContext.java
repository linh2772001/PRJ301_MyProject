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
import model.Subjects;
import model.Teacher;

/**
 *
 * @author ASUS
 */
public class GroupDBContext extends DBContext<Group> {

    public ArrayList<Group> search(int subid) {
        ArrayList<Group> group = new ArrayList<>();
        try {
            String sql = "SELECT *\n"
                    + "                    FROM   [Group] INNER JOIN\n"
                    + "                               [Subject Group] ON [Group].gid = [Subject Group].gid INNER JOIN\n"
                    + "                               Subjects ON [Subject Group].subid = Subjects.subid\n"
                    + "                    		 where Subjects.subid = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, subid);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Group g = new Group();
                g.setGid(rs.getInt("gid"));
                g.setGname(rs.getString("gname"));
                Subjects s = new Subjects();
                s.setSubid(rs.getInt("subid"));
                s.setSubname(rs.getString("subname"));
                s.setSubcode(rs.getString("subcode"));
                g.setSubjects(s);
                group.add(g);
            }
        } catch (SQLException ex) {
            Logger.getLogger(StudentDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return group;
    }

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

    public ArrayList<Group> searchtecher(int lid, int subid) {
        ArrayList<Group> group = new ArrayList<>();
        try {
            String sql = "SELECT [Group].gid,[Group].gname, Teacher.lid, Subjects.subid, Subjects.subcode,Subjects.subname\n" +
"                                     FROM   [Group] INNER JOIN\n" +
"                                                  [Teacher Group] ON [Group].gid = [Teacher Group].gid INNER JOIN\n" +
"                                                   Teacher ON [Teacher Group].lid = Teacher.lid INNER JOIN\n" +
"                                                   [Teacher Subjects] ON Teacher.lid = [Teacher Subjects].lid INNER JOIN\n" +
"                                                   Subjects ON [Teacher Subjects].subid = Subjects.subid INNER JOIN\n" +
"                                               [Subject Group] ON [Group].gid = [Subject Group].gid AND Subjects.subid = [Subject Group].subid\n" +
"                                        		  where Teacher.lid = ? and Subjects.subid = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, lid);
            stm.setInt(2, subid);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Group g = new Group();
                g.setGid(rs.getInt("gid"));
                g.setGname(rs.getString("gname"));
                Subjects s = new Subjects();
                s.setSubid(rs.getInt("subid"));
                s.setSubcode(rs.getString("subcode"));
                s.setSubname(rs.getString("subname"));
                Teacher teacher = new Teacher();
                teacher.setLid(rs.getInt("lid"));
                g.setTeacher(teacher);
                g.setSubjects(s);
                group.add(g);
            }
        } catch (SQLException ex) {
            Logger.getLogger(StudentDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return group;
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
