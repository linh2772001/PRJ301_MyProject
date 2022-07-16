/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.GroupDBContext;
import dal.StudentDBContext;
import dal.SubjectDBContext;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import model.Group;
import model.Student;
import model.Subjects;

/**
 *
 * @author ASUS
 */
public class ListStudentController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        StudentDBContext dbs = new StudentDBContext();
//        ArrayList<Student> stu = dbs.search(id);
        
        String raw_code = request.getParameter("code");
        String code = (raw_code!=null && raw_code.length()>0)?raw_code:null;
        ArrayList<Student> students = dbs.getList(code, id);
        int count =1;
        GroupDBContext db = new GroupDBContext();
        ArrayList<Group> group = db.list();
        request.setAttribute("group", group);
        request.setAttribute("count", count);
        request.setAttribute("id", id);
        request.setAttribute("students", students);
        request.getRequestDispatcher("../view/list.jsp").forward(request, response);
        
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        int id = Integer.parseInt(request.getParameter("gid"));
//        StudentDBContext db = new StudentDBContext();
//        ArrayList  students = db.get(id);
////        ArrayList<Student> students = db.list();
//        request.setAttribute("students", students);
//        request.getRequestDispatcher("../view/list.jsp").forward(request, response);
        processRequest(request, response);

    }

 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
