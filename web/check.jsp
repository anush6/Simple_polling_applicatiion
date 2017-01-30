<%@ page import ="java.sql.*" %>
<%
    int n=0;
    int n1=0;
   String s=(String)session.getAttribute("userid");
   String s1=request.getParameter("party");
    Class.forName("com.mysql.jdbc.Driver");
         Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/polling","root","123456");
         Statement stmt=conn.createStatement();
         ResultSet rs;
         String q="select * from user where username='"+s+"'";
         rs=stmt.executeQuery(q);
         if(rs.next()){
             n=rs.getInt(5);
         }
         if(n==1){
             out.println("You have already vote kindly <a href='logout.jsp'>logout</a>");
         }
         else{
         String q1="update user set vote=1 where username='"+s+"'";
         stmt.execute(q1);
         String q2;
         if(s1=="A"){
         q2="select * from elect where party='A'";
         }
         else if(s1=="B"){
             q2="select * from elect where party='B'";
         }
         else {
             q2="select * from elect where party='C'";
         }
         rs=stmt.executeQuery(q2);
         if(rs.next()){
             n1=rs.getInt(2);
         }
         n1++;
         String q3="update elect set number="+n1+" where party='"+s1+"'";
         stmt.execute(q3);
         out.println("Responce noted kindly <a href='logout.jsp'>logout</a> ");
         }
%>