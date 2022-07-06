/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author ASUS
 */
public class Mark {
    private int  mid;
    private int lab1;
    private int lab2;
    private int  ass1;
    private int ass2 ;
    private int pe;
    private int fe ;
    private Student student;
    private Subjects subjects;

    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }

    public Subjects getSubjects() {
        return subjects;
    }

    public void setSubjects(Subjects subjects) {
        this.subjects = subjects;
    }

    public int getMid() {
        return mid;
    }

    public void setMid(int mid) {
        this.mid = mid;
    }

    public int getLab1() {
        return lab1;
    }

    public void setLab1(int lab1) {
        this.lab1 = lab1;
    }

    public int getLab2() {
        return lab2;
    }

    public void setLab2(int lab2) {
        this.lab2 = lab2;
    }

    public int getAss1() {
        return ass1;
    }

    public void setAss1(int ass1) {
        this.ass1 = ass1;
    }

    public int getAss2() {
        return ass2;
    }

    public void setAss2(int ass2) {
        this.ass2 = ass2;
    }

    public int getPe() {
        return pe;
    }

    public void setPe(int pe) {
        this.pe = pe;
    }

    public int getFe() {
        return fe;
    }

    public void setFe(int fe) {
        this.fe = fe;
    }


}
