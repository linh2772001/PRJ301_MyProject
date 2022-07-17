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
import model.Assessment;
import model.Exam;
import model.Student;

/**
 *
 * @author ASUS
 */
public class ExamDBContext extends DBContext<Exam>{

    @Override
    public ArrayList<Exam> list() {
ArrayList<Exam> exams = new ArrayList<>();
        try {
            String sql = "SELECT A.* FROM\n"
                    + "(SELECT eid,sid,aid,score,date FROM Exam) A\n"
                    + "INNER JOIN\n"
                    + "(SELECT sid,aid,MAX(date) as date FROM Exam\n"
                    + "GROUP BY sid,aid) B\n"
                    + "ON A.aid = B.aid AND A.sid = B.sid AND A.date = B.date";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Exam e = new Exam();
                e.setEid(rs.getInt("eid"));

                Assessment a = new Assessment();
                a.setAid(rs.getInt("aid"));

                Student s = new Student();
                s.setSid(rs.getInt("sid"));

                e.setScore(rs.getFloat("score"));
                e.setDate(rs.getDate("date"));

                e.setAssessment(a);
                e.setStudent(s);

                exams.add(e);

            }
        } catch (SQLException ex) {
            Logger.getLogger(StudentDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return exams;
    }    

    @Override
    public Exam get(String id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void insert(Exam model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Exam model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Exam model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Exam getT(String a, String b) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    
}
