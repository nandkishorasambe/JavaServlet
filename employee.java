
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.*;
import java.sql.*;
import java.util.logging.*;

@WebServlet("/employee")

public class employee extends HttpServlet{
     int i;
     public Connection con;
     public PreparedStatement pst;
     public  int row;
     public ResultSet rs;
    @Override
    public void doPost(HttpServletRequest req,HttpServletResponse rsp)throws IOException,ServletException
    {
         
        rsp.setContentType("text/html");
        PrintWriter out = rsp.getWriter();
        
       
        
        try{
            i++;//external
            Class.forName("com.mysql.cj.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost/employeedetails","root","Nk@123");
            String Eid=req.getParameter("Eid");
            String EName=req.getParameter("EName");
            String DOJ=req.getParameter("DOJ");
            String YOE=req.getParameter("YOE");
            String Designation=req.getParameter("Designation");
            
            pst=con.prepareStatement("insert into columeemployee(Eid,Ename,DOJ,YOE,Designation)values(?,?,?,?,?)");
            
             pst.setString(1,Eid);
             pst.setString(2,EName);
             pst.setString(3,DOJ);
             pst.setString(4,YOE);
             pst.setString(5,Designation);
             pst.executeUpdate();
             
             //external add start
             pst = con.prepareStatement("select * from columeemployee");
           
            rs = pst.executeQuery();
            
                RequestDispatcher rd=req.getRequestDispatcher("Home.jsp"); //external call to index.html home page
                 rd.include(req, rsp);//external
               }
            catch (ClassNotFoundException ex) {
          
    
             Logger.getLogger(employee.class.getName()).log(Level.SEVERE,null,ex);

       
        //external code add end
              
            } catch (SQLException ex) {
           out.println("<font color='red'> Record Failed </font>");
        }
        
        out.print("");
    }
         public void destory()
    {
        i = 0;
    }
}


