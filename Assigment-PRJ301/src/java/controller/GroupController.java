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
import java.awt.AWTEventMulticaster;
import java.util.ArrayList;
import model.Group;
import model.Student;
import model.Subjects;

/**
 *
 * @author ASUS
 */
public class GroupController extends HttpServlet {
   
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
       
      
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
          int subid = Integer.parseInt(request.getParameter("id"));
        SubjectDBContext db = new SubjectDBContext();
        ArrayList<Subjects> subject = db.list();
        request.setAttribute("subject", subject); 
        
        SubjectDBContext dbco = new SubjectDBContext();
        ArrayList<Subjects> subjects = dbco.list();
        request.setAttribute("subjects", subjects);
        
        GroupDBContext dbgroup = new GroupDBContext();
        ArrayList<Group> groups = dbgroup.search(subid);

        request.setAttribute("groups", groups);
        
        request.getRequestDispatcher("student/group.jsp").forward(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
