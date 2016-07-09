<html>
<head><title>First JSP</title>
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>

  <%
   try {
var a = getParameter("name");            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/rangde", "root", "sowmya562");
            Statement st = conn.createStatement();
            ResultSet rec = st.executeQuery("SELECT sector from table(sector)");
			
        while (a==getString()) {
var x = getString(1);
var y = getString(2);
var z = getString(3);

}
       st.close();
        } catch(SQLException d) {
            System.out.println(d);
        } catch(ClassNotFoundException f) {
            System.out.println(f);
        }
%>
<div class="container">
  <h2>Stacked Progress Bars</h2>
  <p>Create a stacked progress bar by placing multiple bars into the same div with class .progress:</p>
  <div class="progress">
    <div class="progress-bar progress-bar-success" role="progressbar" style="width:y%">
      amount sanctioned
    </div>
    <div class="progress-bar progress-bar-warning" role="progressbar" style="width:Z%">
      remaining amount needed
    </div>
    
  </div>
</div>

if(z>1000)
{
	 <div class="row">
        <div class="col s12 m6">
          <div class="card blue-grey darken-1">
            <div class="card-content white-text">
              <span class="card-title">Card Title</span>
              <p>The needed money is huge if possible contribute more</p>
            </div>
            <div class="card-action">
              
            </div>
          </div>
        </div>
      </div>
            
}
else
{
	 <div class="row">
        <div class="col s12 m6">
          <div class="card blue-grey darken-1">
            <div class="card-content white-text">
              <span class="card-title">Card Title</span>
              <p>even your small contribution will help the needed</p>
            </div>
            <div class="card-action">
            </div>
          </div>
        </div>
      </div>
            
}
</body>
</html>