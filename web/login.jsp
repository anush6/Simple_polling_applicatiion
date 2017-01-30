<%@ page import ="java.sql.*" %>
<%
    String u=request.getParameter("username");
    String p=request.getParameter("password");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/polling","root","123456");
    Statement st = con.createStatement();
    ResultSet rs;
    rs=st.executeQuery("select * from user where username='"+u+"' and password='"+p+"'");
    if(rs.next()){
        session.setAttribute("userid", u);
        response.sendRedirect("welcome.jsp");
    }
    else{
        out.println("Invalid username or password <a href='index.jsp'>Try again</a>");
    }
%>
