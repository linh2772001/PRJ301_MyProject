/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author ASUS
 */
public class Teacher {
   private int lid ;
   private String lname ;
   private String lmember ;
   private boolean lgenger ;
   private Group group;
   private Subjects subjects;

    public Group getGroup() {
        return group;
    }

    public void setGroup(Group group) {
        this.group = group;
    }

    public Subjects getSubjects() {
        return subjects;
    }

    public void setSubjects(Subjects subjects) {
        this.subjects = subjects;
    }

    public int getLid() {
        return lid;
    }

    public void setLid(int lid) {
        this.lid = lid;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public String getLmember() {
        return lmember;
    }

    public void setLmember(String lmember) {
        this.lmember = lmember;
    }

    public boolean isLgenger() {
        return lgenger;
    }

    public void setLgenger(boolean lgenger) {
        this.lgenger = lgenger;
    }
   
    
}
