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
import model.Student;
import model.Subjects;
import model.Teacher;

/**
 *
 * @author ASUS
 */
public class SubjectDBContext extends DBContext<Subjects> {

    @Override
    public ArrayList<Subjects> list() {
        ArrayList<Subjects> sub = new ArrayList<>();
        try {
            String sql = "SELECT [subid]\n"
                    + "      ,[subname]\n"
                    + "      ,[subcode]\n"
                    + "  FROM [Subjects]";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Subjects s = new Subjects();
                s.setSubid(rs.getInt("subid"));
                s.setSubcode(rs.getString("subcode"));
                s.setSubname(rs.getString("subname"));
                sub.add(s);
            }
        } catch (SQLException ex) {
            Logger.getLogger(SubjectDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return sub;
    }

    public ArrayList<Subjects> search(int sid) {
        ArrayList<Subjects> sub = new ArrayList<>();
        try {
            String sql = "SELECT Student.sid , Student.sname,Subjects.subname  ,Subjects.subcode ,Subjects.subid\n"
                    + "FROM     Student INNER JOIN\n"
                    + "                      [Enroll Subjects]   ON [Enroll Subjects].sid = Student.sid INNER JOIN\n"
                    + "                      Subjects ON [Enroll Subjects].subid = Subjects.subid\n"
                    + "					  where  Student.sid = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, sid);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Subjects s = new Subjects();
                s.setSubid(rs.getInt("subid"));
                s.setSubcode(rs.getString("subcode"));
                s.setSubname(rs.getString("subname"));
                Student student = new Student();
                student.setSid(rs.getInt("sid"));
                student.setSname(rs.getString("sname"));
//                stu.setCode(rs.getString("code"));
//                stu.setSmember(rs.getString("smember"));

//                stu.setSimg(rs.getString("simg"));
//                stu.setSgender(rs.getBoolean("sgender"));
//                stu.setSdob(rs.getDate("sdob"));
//                stu.setSaddress(rs.getString("saddress"));
                s.setStudent(student);
                sub.add(s);

            }
        } catch (SQLException ex) {
            Logger.getLogger(SubjectDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return sub;
    }

    public ArrayList<Subjects> searchTecher(int lid) {
        ArrayList<Subjects> sub = new ArrayList<>();
        try {
            String sql = "SELECT Subjects.subid, Subjects.subcode,Subjects.subname,Teacher.lid, Teacher.lname \n"
                    + "                    FROM   Teacher INNER JOIN\n"
                    + "                               [Teacher Subjects] ON Teacher.lid = [Teacher Subjects].lid INNER JOIN\n"
                    + "                                 Subjects ON [Teacher Subjects].subid = Subjects.subid\n"
                    + "                    			 where Teacher.lid = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, lid);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Subjects s = new Subjects();
                s.setSubid(rs.getInt("subid"));
                s.setSubcode(rs.getString("subcode"));
                s.setSubname(rs.getString("subname"));

                Teacher tec = new Teacher();
                tec.setLid(rs.getInt("lid"));
                tec.setLname(rs.getString("lname"));
                s.setTeacher(tec);
                sub.add(s);
            }
        } catch (SQLException ex) {
            Logger.getLogger(StudentDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return sub;
    }

    @Override
    public Subjects get(String id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void insert(Subjects model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Subjects model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Subjects model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Subjects getT(String a, String b) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public static void main(String[] args) {
        SubjectDBContext db = new SubjectDBContext();
        ArrayList<Subjects> search = db.search(4);
        System.out.println("" + search);
        ArrayList<Subjects> list = db.list();
        System.out.println("" + list);
    }

}
