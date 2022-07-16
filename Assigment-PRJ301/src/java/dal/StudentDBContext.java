/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Group;
import model.Student;

/**
 *
 * @author ASUS
 */
public class StudentDBContext extends DBContext<Student> {

  
    public ArrayList<Student> getList(String code, int sid) {
        ArrayList<Student> students = new ArrayList<>();
        HashMap<Integer, Object> params = new HashMap<>();
        try {
            String sql = "SELECT *\n"
                    + "                     FROM   [Group] INNER JOIN\n"
                    + "                             Enroll ON [Group].gid = Enroll.gid INNER JOIN\n"
                    + "                              Student ON Enroll.sid = Student.sid\n"
                    + "                    		 where [Group].gid = ? and (1=1)";
            Integer index = 1;
            if (code != null) {
                sql += " AND Student.code like '%'+?+'%'";
                index++;
                params.put(index, code);
            }
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, sid);
            for (Map.Entry<Integer, Object> entry : params.entrySet()) {
                Integer key = entry.getKey();
                Object val = entry.getValue();
                stm.setObject(key, val);
            }
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Student s = new Student();
                s.setSid(rs.getInt("sid"));
                s.setCode(rs.getString("code"));
                s.setSmember(rs.getString("smember"));
                s.setSname(rs.getString("sname"));
                s.setSimg(rs.getString("simg"));
                s.setSgender(rs.getBoolean("sgender"));
                s.setSdob(rs.getDate("sdob"));
                s.setSaddress(rs.getString("saddress"));
                Group group = new Group();
                group.setGid(rs.getInt("gid"));
                group.setGname(rs.getString("gname"));
                s.setGroup(group);
                students.add(s);
            }
        } catch (SQLException ex) {
            Logger.getLogger(StudentDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return students;
    }

    public ArrayList get(int gid) {
        ArrayList<Student> students = new ArrayList<>();
        try {
            String sql = "SELECT   * \n"
                    + "FROM   [Group] INNER JOIN\n"
                    + "                      Enroll ON Enroll.gid = [Group].gid INNER JOIN\n"
                    + "                      Student ON Enroll.sid = Student.sid\n"
                    + "					  where [Group].gid=? ";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, gid);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Student s = new Student();
                s.setSid(rs.getInt("sid"));
                s.setCode(rs.getString("code"));
                s.setSmember(rs.getString("smember"));
                s.setSname(rs.getString("sname"));
                s.setSgender(rs.getBoolean("sgender"));
                s.setSdob(rs.getDate("sdob"));
                s.setSimg(rs.getString("simg"));
                s.setSaddress(rs.getString("saddress"));

                Group g = new Group();
                g.setGid(rs.getInt("gid"));
                g.setGname(rs.getString("gname"));
                s.setGroup(g);
                students.add(s);

            }
        } catch (SQLException ex) {
            Logger.getLogger(StudentDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return students;
    }

    @Override
    public void insert(Student model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Student model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Student model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Student getT(String a, String b) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Student get(String id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public static void main(String[] args) {
        StudentDBContext db = new StudentDBContext();
        ArrayList<Student> get = db.getList("HE000001", 1);
        System.out.println(get);

    }

    @Override
    public ArrayList<Student> list() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

  

}
