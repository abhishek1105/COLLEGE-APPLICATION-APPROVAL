
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<%@page import="javax.servlet.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>COLLEGE APPLICATION APPROVAL</title>
    </head>
    <body>
        <%
         String user=request.getParameter("user");
            String pass=request.getParameter("pwsd");
            String url = "jdbc:mysql://localhost:3306/project?useSSL=false&allowPublicKeyRetrieval=true&verifyServerCertificate=false&allowMultiQueries=true";
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn =DriverManager.getConnection(url,"root","qwerty@");
            String query="select * from signupdata";
//            String query2="select details.father_name from details inner join signupdata on details.name=signupdata.name";
            Statement st=conn.createStatement();
            ResultSet rs=st.executeQuery(query);
//            rs=st.executeQuery(query2);
            while(rs.next())
            {
      String username=rs.getString("username");
      String pass1=rs.getString("password");
      String cname=rs.getString("name");
      String cemail=rs.getString("email");
      String cmobile=rs.getString("mobile");
      String cid=rs.getString("id");
//      String cfathername=rs.getString("father_name");
      if(pass.equals(pass1))
      {
          if(user.equals(username)  )
          {
                RequestDispatcher rd=request.getRequestDispatcher("HOMEPAGE.jsp");
                HttpSession s= request.getSession();
               s.setAttribute("cuser",user);                
             s.setAttribute("cname",cname);
              s.setAttribute("cemail",cemail);
              s.setAttribute("cmobile",cmobile);
              s.setAttribute("cid",cid);
//              s.setAttribute("fathername",cfathername);
             
               rd.forward(request,response);
              
          }  }   }           
        %>
    </body>
</html>