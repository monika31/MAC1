/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import java.awt.Component;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



/**  
 *
 * @author Monika
 */
public class Students extends HttpServlet {

 private Component rootPane;
    private String STATUS;

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession session= request.getSession();
        String ID=request.getParameter("StudentID");
        String FNAME=request.getParameter("StudentFirstName");
        String LNAME=request.getParameter("StudentLastName");
        String GENDER=request.getParameter("Gender");
        String COUNTRY=request.getParameter("Country");
        String SEMESTER = request.getParameter("Semester");
        String YEAR= request.getParameter("Year");
        String EMAIL_ID=request.getParameter("Email_id");
        
     STATUS = request.getParameter("text");
        try {
              
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydatabase", "root", "");
                  PreparedStatement ps = con.prepareStatement("insert into Students values(?,?,?,?,?,?,?,?)");
                  ps.setString(1,ID);
                  ps.setString(2,FNAME);
                   ps.setString(3,LNAME);
                   ps.setString(4, GENDER);
                   ps.setString(5, COUNTRY);
                   ps.setString(6, SEMESTER);
                      ps.setString(7, YEAR);
                  ps.setString(8,EMAIL_ID);
                      
                        
                      
                  ps.executeQuery();
                   session.setAttribute("session_ID",ID);
                     session.setAttribute("session_FNAME",FNAME);
                     session.setAttribute("session_LNAME",LNAME);
                     session.setAttribute("session_GENDER",GENDER);
                     session.setAttribute("session_Country", COUNTRY);
                     session.setAttribute("session_SEMESTER", SEMESTER);
                     session.setAttribute("session_YEAR",YEAR );
                     session.setAttribute("session_EMAIL_ID",EMAIL_ID);

                     response.sendRedirect("Profile.jsp");
                 
        }
                  catch(IOException | ClassNotFoundException | SQLException e)
                  {
                  System.out.println(e);
                  }
      
                  }
    
/**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
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
    
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
