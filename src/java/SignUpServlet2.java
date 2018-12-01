import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class SignUpServlet2 extends HttpServlet{
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
             response.setContentType("text/html;charset=UTF-8");
        PrintWriter pw = response.getWriter();
        String URL;
        URL ="jdbc:mysql://localhost:3306/project?useSSL=false&allowPublicKeyRetrieval=true&verifyServerCertificate=false&allowMultiQueries=true";
        try{  
            String name = request.getParameter("fnm");
            
            String email = request.getParameter("emaill");
            String username = request.getParameter("unm");            
            String password = request.getParameter("pswd");
            String cpassword = request.getParameter("cpswd");   
            String mobile = request.getParameter("mob");
            String uniid = request.getParameter("uni_id");

            pw.println(name);
            pw.println(email);
            pw.println(username);          
            pw.println(password);   
             pw.println(cpassword); 
            pw.println(mobile);
            pw.println(uniid);
            
            Class.forName("com.mysql.cj.jdbc.Driver");
            try (Connection con = DriverManager.getConnection(URL,"root","qwerty@")) {
                String q= "insert into signupdata values (?,?,?,?,?,?,?,NULL)";
                PreparedStatement stat = con.prepareStatement(q);
                 stat.setString(1,name);                 
                 stat.setString(2,email);
                 stat.setString(3,username);
                 stat.setString(4,password); 
                 stat.setString(5,cpassword); 
                 stat.setString(6,mobile);
                  stat.setString(7,uniid);
                 
                 int i = stat.executeUpdate();
                 if(i>0){
                     RequestDispatcher rd=request.getRequestDispatcher("LOGIN.jsp");
                     rd.forward(request,response);
                 }
                 else{
                     pw.println("failed to insert the data");
                 }  
                 stat.executeUpdate(q);
                 
            }
        }
        
  catch (Exception e){
  pw.println();
  }
        }
  }
       
    

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}



