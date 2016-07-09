<html>
<head><title>First JSP</title></head>
<body>
  <%
   try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc://localhost:3306/rangde", "root", "");
            Statement st = conn.createStatement();
            ResultSet rec = st.executeQuery("SELECT * from progress");
 
        while (rec.next()) {
var x = getString(1);
var y = getString(2);
var z = x-y;
update progress set Remaning=z where Need_money=x and Collected_money=y;
}
       st.close();
        } catch(SQLException d) {
            System.out.println(d);
        } catch(ClassNotFoundException f) {
            System.out.println(f);
        }
%>
</body>
</html>