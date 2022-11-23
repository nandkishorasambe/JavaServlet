<%-- 
    Document   : Home
    Created on : 22-Nov-2022, 10:13:06 pm
    Author     : NandKishor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
   
    <body>
         <div border="1" align="center">
         <form method="Post" action="employee">
             
            <table width="400px" >
                <tr>
                    <td colspan="2"><h1>ADD EMPLOYEE</h1></td>
                </tr>
                <tr>
                <td >EMPLOYEE ID</td>
                <td><input type="text" name="Eid" id="Eid"></td>   
                </tr>
                <tr>
                <td>Employee Name</td>
                <td><input type="text" name="EName" id="EName"></td>
                </tr>
                <tr>
                <td>Date of Joining</td>
                <td><input type="text" name="DOJ" id="DOJ"></td>
                </tr>  
                
                <tr>
                <td>Year of Experience</td>
                <td><input type="text" name="YOE" id="YOE"></td>
                </tr>
                
                <tr>
                <td>Designation</td>
                <td><input type="text" name="Designation" id="Designation"></td>
                </tr>  
                
                <tr>
                <td  colspan="2"><input type="submit" value="SAVE">
                   <input align="right" type="submit" value="CANCEL"> 
                </tr>
            </table>
         
        </form>
              
        
      </div>  
    </body>
   
</html>
