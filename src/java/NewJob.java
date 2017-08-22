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
 * @author Amandeep kaur
 */
public class NewJob extends HttpServlet {

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
        String JOBGROUP=request.getParameter("JobGroup");
        String COMPANY=request.getParameter("Company");
        String STATUS1= request.getParameter("Status");
        String POSITION=request.getParameter("Position");
        String DESCRIPTION=request.getParameter("Description");
        String REQUIREMENTS=request.getParameter("Requirements");
        String SALARY=request.getParameter("Salary");
        
               
     STATUS = request.getParameter("text");
        try {
              
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydatabase", "root", "");
                  PreparedStatement ps = con.prepareStatement("insert into Jobs values(?,?,?,?,?,?,?,?,?)");
                  ps.setString(1,JOBGROUP);
                  ps.setString(2,COMPANY);
                  ps.setString(3,STATUS1); 
                  ps.setString(4,POSITION);
                   ps.setString(5,DESCRIPTION);
                    ps.setString(6,REQUIREMENTS);
                     ps.setString(7,SALARY);
                      
                        
                      
                  ps.executeQuery();
                   session.setAttribute("session_JOBGROUP", JOBGROUP);
                     session.setAttribute("session_COMPANY",COMPANY);
                     session.setAttribute("session_STATUS1", STATUS1);
                     session.setAttribute("session_POSITION",POSITION);
                     session.setAttribute("session_DESCRIPTION",DESCRIPTION);
                     session.setAttribute("session_REQUIREMENTS",REQUIREMENTS);
                     session.setAttribute("session_SALARY", SALARY);
                     

                     response.sendRedirect("NewJob.jsp");
                 
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
