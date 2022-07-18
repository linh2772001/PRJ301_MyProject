/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import dal.AssessmentDBContext;
import dal.ExamDBContext;
import dal.SubjectDBContext;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import model.Assessment;
import model.Exam;
import model.Subjects;

/**
 *
 * @author ASUS
 */
public class AssessmentController extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        int sid = Integer.parseInt(request.getParameter("sid"));
        int subid = Integer.parseInt(request.getParameter("subid"));
//        String la = "Lab1";
//        String la2 = "lab2";
//        String ass = "Assignment1";
//        String ass2 = "Assignment2";
//        String pe = "Practice Exam";
//        String fe = "Final Exam";
//       
//        
//        request.setAttribute("Lab1", la);
//        request.setAttribute("lab2", la2);
//        request.setAttribute("Assignment1", ass);
//        request.setAttribute("Assignment2", ass2);
//        request.setAttribute("Practice Exam", pe);
//        request.setAttribute("Final Exam", fe);


//        int countw = 0;
//        int counta = 0;
//        int countp = 0;
//        int countpt = 0;
//        int countl = 0;

        SubjectDBContext db = new SubjectDBContext();
        ArrayList<Subjects> subject = db.search(sid);
        request.setAttribute("subject", subject);
        request.setAttribute("sid", sid);

        AssessmentDBContext assdb = new AssessmentDBContext();
        ArrayList<Assessment> assessment = assdb.search(subid);

//        for (Assessment assesment : assessment) {
//            if (assesment.getAname().startsWith("Workshop")) {
//                countw++;
//            }
//            if (assesment.getAname().startsWith("Assignment")) {
//                counta++;
//            }
//            if (assesment.getAname().startsWith("Project")) {
//                countp++;
//            }
//            if (assesment.getAname().startsWith("Progress")) {
//                countpt++;
//            }
//            if (assesment.getAname().startsWith("Lab")) {
//                countl++;
//            }
//        }
        ExamDBContext examdb = new ExamDBContext();
        ArrayList<Exam> exam = examdb.search(sid, subid);
        float total = 0;
        
        for (Exam exam1 : exam) {
            total = total + exam1.getScore()/100*exam1.getAssessment().getWeight();
            
        }
        

//        request.setAttribute("countw", countw);
//        request.setAttribute("counta", counta);
//        request.setAttribute("countp", countp);
//        request.setAttribute("countpt", countpt);
//        request.setAttribute("countl", countl);
        request.setAttribute("assessment", assessment);
        request.setAttribute("exam", exam);
        request.setAttribute("total", total);
        request.getRequestDispatcher("student/subjectmark.jsp").forward(request, response);
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
        processRequest(request, response);
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
