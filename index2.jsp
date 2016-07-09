

<%@page import="java.io.*"%>
<%@page import="javax.servlet.http.*"%>
<%@page import="javax.servlet.*"%>
<%@page import="java.sql.*"%>
<html>
<head>
  
<body>




<%
		


       
String invname1 = request.getParameter("uname");		
        String pwd1 = request.getParameter("pwd");
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://ec2-52-221-240-28.ap-southeast-1.compute.amazonaws.com:3306/rangde", "sk115", "sk116");
            PreparedStatement pst=conn.prepareStatement("select invname,pwd from investor where invname=? and pwd=?");
			
           
			 
        	 pst.setString(1, invname1);
            pst.setString(2, pwd1);
            ResultSet rs = pst.executeQuery();
			ResultSet rs1 = null; 
        	

				
            if (rs.next() ) 
			{

		
                    out.println("Logged in!");
                } else {
                    out.println("Password did not match username!");
                }
			}
			
		
		catch(SQLException se){
			out.println(se);
		}			
		%>
			
			</body>
			</html>