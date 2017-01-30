<%@ page import ="java.sql.*" %>
<%
    String u=request.getParameter("uname");
    String p=request.getParameter("pass");
    String m=request.getParameter("mail");
    String pl=request.getParameter("place");
    int n=0;
    try{
        Class.forName("com.mysql.jdbc.Driver");
         Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/polling","root","123456");
         Statement stmt=conn.createStatement();
         int i=stmt.executeUpdate("insert into user values('"+u+"','"+p+"','"+m+"','"+pl+"',0)");
         if(i>0){
            response.sendRedirect("positive.jsp");
         }
         else{
            response.sendRedirect("negative.jsp");
         }
    }
    catch(Exception e){
    System.out.println("Could not connect to database");
    }
%>