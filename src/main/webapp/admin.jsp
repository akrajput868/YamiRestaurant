<%-- 
    Document   : adminlogin
    Created on : 13-Apr-2021, 5:14:36 pm
    Author     : ANKIT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="javax.servlet.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">    
	<!-- Site CSS -->
            <link rel="stylesheet" href="css/newcss.css">    
            <!-- Responsive CSS -->
            <link rel="stylesheet" href="css/responsive.css">
            <!-- Custom CSS -->
            <link rel="stylesheet" href="css/custom.css">
    </head>
    <body>
        <!-- Start header -->
	<header class="top-navbar">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<div class="container">
				<a class="navbar-brand" href="index.html">
					<img src="images/logo.png" alt="" />
				</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbars-rs-food" aria-controls="navbars-rs-food" aria-expanded="false" aria-label="Toggle navigation">
				  <span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbars-rs-food">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item"><a class="nav-link" href="index.jsp">Home</a></li>
						<li class="nav-item"><a class="nav-link" href="menu.jsp">Menu</a></li>
						<li class="nav-item"><a class="nav-link" href="booking.jsp">Reservation</a></li>
                                                <li class="nav-item"><a class="nav-link" href="gallery.jsp">Gallery</a></li>
                                                <li class="nav-item"><a class="nav-link" href="contact.jsp">Contact</a></li>
                                                <li class="nav-item active"><a class="nav-link" href="adminlogin.jsp">Admin</a></li>
						
					</ul>
				</div>
			</div>
		</nav>
	</header>
        <br>
	<!-- End header -->
        
        
        <div class="container-fluid  ">
            
            <div class=" row " >
                <div class="ml-auto" style="float: right; margin-right: 15px">
                    
                    <a  href="adminlogin.jsp" class="btn btn-danger btn-sm" type="submit">Log out</a>
                </div> 
            </div>
                <hr>
                
                <h5 class="text-center text-secondary">Booking Details</h5>
                <hr>
                
                
	<div class="row ">
		<div class=" col-md-12">
            <table class="table border">
                  <thead>
                   <tr class=" bg-secondary text-white">
                      <th>S/N</th>
                      <th>Date</th>
                      <th>Time</th>
                      <th>Person</th>  
                      <th>Name</th>
                      <th>Email Address</th>
                      <th>Mobile</th> 
                      <th>Action</th> 
                      
                      
                  </tr>
              </thead>   
              <tbody>
                  <%
                        Connection con;
                        PreparedStatement ps;
                        ResultSet x;
                        Class.forName("com.mysql.jdbc.Driver");
                        con= DriverManager.getConnection("jdbc:mysql://localhost:3306/yrs","root","");
                        
                        String query="select * from booking";
                        Statement st=con.createStatement();
                        
                        x=st.executeQuery(query);
                        
                    while(x.next())
                    {
                         String sn= x.getString("sn");
                    
                   %>
                  
                  
                  
                <tr>
                    <td><%=x.getString("sn")%></td>
                    <td><%=x.getString("date")%></td>
                    <td><%=x.getString("time")%></td>
                    <td><%=x.getString("person")%></td>
                    <td><%=x.getString("name")%></td>
                    <td><%=x.getString("email")%></td>
                    <td><%=x.getString("mobile")%></td>
                    
                    <td><a href="delete.jsp?sn=<%=sn%>" class="btn btn-danger">Delete</a></td>
                </tr>
                <%
                    }
                    
                    %>
               
                                              
              </tbody>
            </table>
            </div>
	</div>
</div>
        
        <!-- Start Footer -->
	<footer class="footer-area bg-f">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-6">
					<h3>About Us</h3>
					<p>Efficiently serving perfectly crispy, paper-thin stuffed dosas, mini idlis, Sagar Ratna is a one-stop-shop for South Indian food (mostly vegetarian). There are franchises all over the city but the original location in Defence Colony Market is utterly magical: don?t miss out on the South Indian coffee, offered in a funky steel glass.</p>
				</div>
				<div class="col-lg-3 col-md-6">
					<h3>Opening hours</h3>
					<p><span class="text-color">Monday: </span>Closed</p>
					<p><span class="text-color">Tue-Wed :</span> 9:Am - 10PM</p>
					<p><span class="text-color">Thu-Fri :</span> 9:Am - 10PM</p>
					<p><span class="text-color">Sat-Sun :</span> 5:PM - 10PM</p>
				</div>
				<div class="col-lg-3 col-md-6">
					<h3>Contact information</h3>
					<p class="lead">Mata Mandir Bhopal, Madhaya pradesh 460027</p>
					<p class="lead"><a href="#">+91 88770947822</a></p>
					<p><a href="#"> yamifood.123@gmail.com</a></p>
				</div>
				<div class="col-lg-3 col-md-6">
					<h3>Subscribe</h3>
					<div class="subscribe_form">
						<form class="subscribe_form">
							<input name="EMAIL" id="subs-email" class="form_input" placeholder="Email Address..." type="email">
							<button type="submit" class="submit">SUBSCRIBE</button>
							<div class="clearfix"></div>
						</form>
					</div>
					
				</div>
			</div>
		</div>
		
		<div class="copyright">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<p class="company-name">All Rights Reserved. &copy; 2021 <a href="#">Yamifood Restaurant</a>   
					
					</div>
				</div>
			</div>
		</div>
		
	</footer>
    </body>
</html>
