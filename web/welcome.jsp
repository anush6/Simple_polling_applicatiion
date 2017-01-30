<%@ page import ="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome</title>
    </head>
    <body>
        <%
            String s=(String)session.getAttribute("userid");
            out.println("Welcome to online voting "+s);
         %>
         <form action="check.jsp" method="POST">
             <input type="radio" name="party" value="A" checked>Party A<br>
             <input type="radio" name="party" value="B">Party B <br>
             <input type="radio" name="party" value="C">Party C <br>
             <input type="submit" value="vote"/>
         </form>
         <% 
             
             out.println("Already voted then <a href='logout.jsp'>logout</a>");
             Class.forName("com.mysql.jdbc.Driver");
         Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/polling","root","123456");
         Statement stmt=conn.createStatement();
         ResultSet rs;
         int[] a=new int[3];
         String s1="select * from elect";
         rs=stmt.executeQuery(s1);
         int i=0;
         while(rs.next()){
             a[i]=rs.getInt(2);
             i++;
         }
         %>
         <p>
             Current leader board
         <table border="1">
             
             <tbody>
                 <tr>
                     <td>Party A</td>
                     <td><%=a[0]%></td>
                 </tr>
                 <tr>
                     <td>Party B</td>
                     <td><%=a[1]%></td>
                 </tr>
                 <tr>
                     <td>Party C</td>
                     <td><%=a[2]%></td>
                 </tr>
             </tbody>
         </table>

         </p>
    </body>
</html>
