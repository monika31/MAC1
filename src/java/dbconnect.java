import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class dbconnect {
    private Connection con;
    private Statement st;
    private ResultSet rs;
    public dbconnect() throws ClassNotFoundException 
    {
    try { 
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306", "root", "1234");
        st = con.createStatement();
    }
    catch(SQLException ex)
    {
    System.out.println("Error:" +ex);
    }
    }
    public void getData()
    { 
        try
        {
        String query = "insert into registration values('Vaibhav Jain','','')";
        st.executeQuery(query);
        System.out.println("Records from database");
        /*while(rs.next())
        {
            
            String StudentID = rs.getString("StudentID");        
            String FirstName = rs.getString("FirstName");
        }*/
        }
        catch(SQLException ex)
                {
                    System.out.println("Error:" +ex);
                }
    }
    }
    
    

