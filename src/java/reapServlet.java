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



public class reapServlet extends HttpServlet{
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
             response.setContentType("text/html;charset=UTF-8");
        PrintWriter pw = response.getWriter();
        String URL;
        URL ="jdbc:mysql://localhost:3306/project?useSSL=false&allowPublicKeyRetrieval=true&verifyServerCertificate=false&allowMultiQueries=true";
        try{  
            String  sdate= request.getParameter("date");            
            String  ssname= request.getParameter("sname");
            String  sid= request.getParameter("id");            
            String  sfname= request.getParameter("fname");
            String  sreap= request.getParameter("reap");   
            String  sbranch= request.getParameter("branch");
            String  ssem= request.getParameter("sem");
            String  ssubject= request.getParameter("subject");
           
            
            Class.forName("com.mysql.cj.jdbc.Driver");
            try (Connection con = DriverManager.getConnection(URL,"root","qwerty@")) {
                String q= "insert into reappear values (?,?,?,?,?,?,?,?)";
                PreparedStatement stat = con.prepareStatement(q);
                 stat.setString(1,ssname); 
                 stat.setString(2,sid); 
                 stat.setString(3,sfname); 
                 stat.setString(4,sreap); 
                 stat.setString(5,sbranch); 
                 stat.setString(6,ssem); 
                 stat.setString(7,ssubject);
                 stat.setString(8,sdate); 
                 
                 int i = stat.executeUpdate();
                 if(i>0){
                     RequestDispatcher rd=request.getRequestDispatcher("reappear.jsp");
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



