<%-- 
    Document   : Home
    Created on : 22-Nov-2022, 6:02:47 pm
    Author     : NandKishor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
      
    </head>
    <div class="container col-md-5" width="50%">
    <body>
        <div class="topnav" border="1">
    <center>
        <p>Employee Details</P>
        <table width="60%" border="1">
            
            <tr>
            
               
                <form method="Post" action="employee">
                     
                   <input type="submit" value="ADD">
            </form>
            
            <from action="" method="get">
                <input type="text"class="fore-control" name="Ename" placeholder="Search hear"/>
            </from>
               </tr>
            <tr>
                
                <td width="10%">Eid</td>
                <td>EName</td>
                <td>DOJ</td>
                <td>YOE</td>
                <td>Designation</td>
            </tr>
       
        <%
         
             Connection conn=null;
             Statement st=null;
             ResultSet rs=null;
             try{
             
                   conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/employeedetails","root","Nk@123");
             st=conn.createStatement();
       
             
             String Ename = request.getParameter("Ename");
             if (Ename != null && name.length() > 0) {
             String qry = statement.executeQuery("select * from columeemployee WHERE EName = '" + Ename + "'");
             } else{
             qry = statement.executeQuery("select * from columeemployee");
             }
       
             //String qry=" select * from columeemployee";
             rs=st.executeQuery(qry);
             while(rs.next())
             {
             %>
             <tr>
                 <td><%= rs.getString(1)%></td>
                 <td><%= rs.getString(2)%></td>
                 <td><%= rs.getString(3)%></td>
                 <td><%= rs.getString(4)%></td>
                 <td><%= rs.getString(5)%></td>
                 <!-- comment --><!-- = mince print out -->
           
             </tr>
             
             <%
            }
             
            }catch(Exception ex){
            
            }
          
            %>
           
             </table>
           </center>
         </div>
    </body>
   
</html>
