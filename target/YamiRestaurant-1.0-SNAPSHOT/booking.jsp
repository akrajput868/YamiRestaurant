<%-- 
    Document   : booking
    Created on : Mar 8, 2021, 12:38:08 AM
    Author     : Ankit Kumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reservation</title>
        
        <link rel="stylesheet" href="css/bootstrap.min.css">    
	<!-- Site CSS -->
    <link rel="stylesheet" href="css/style.css">    
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
						<li class="nav-item active"><a class="nav-link" href="booking.jsp">Reservation</a></li>
                                                <li class="nav-item"><a class="nav-link" href="gallery.jsp">Gallery</a></li>
                                                <li class="nav-item"><a class="nav-link" href="contact.jsp">Contact</a></li>
						<li class="nav-item"><a class="nav-link" href="adminlogin.jsp">Admin</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>
         
         <div class="all-page-title page-breadcrumb">
		<div class="container text-center">
			<div class="row">
				<div class="col-lg-12">
					<h1>Table Booking</h1>
				</div>
			</div>
		</div>
	</div>
         
         
         <!-- Start Reservation -->
	<div class="reservation-box">
		<div class="container">
			
			<div class="row">
				<div class="col-lg-12 col-sm-12 col-xs-12">n  
					<div class="contact-block">
						<form  action="booking" method="POST" id="contactForm">
							<div class="row">
								<div class="col-md-6">
									<h3>Book a table</h3>
									<div class="col-md-12">
										<div class="form-group">
                                                      
                                                                                    <input class="form-control" type="date" name="txtdate" >
                                                                                </div>                                
									</div>
									<div class="col-md-12">
										<div class="form-group">
                                                                                    <input id="input_time" class="time form-control picker__input" name="txttime" placeholder="Please enter time ( Example: 2:45 pm ) ">
											<div class="help-block with-errors"></div>
										</div>                                 
									</div>
									<div class="col-md-12">
										<div class="form-group">
                                                                                    <select class="custom-select d-block form-control" name="txtperson" required data-error="Please select Person">
											  <option disabled selected>Select Person*</option>
											  <option value="1">1</option>
											  <option value="2">2</option>
											  <option value="3">3</option>
											  <option value="4">4</option>
											  <option value="5">5</option>
											  <option value="6">6</option>
											  
											</select>
											<div class="help-block with-errors"></div>
										</div> 
									</div>
								</div>
								<div class="col-md-6">
									<h3>Contact Details</h3>
									<div class="col-md-12">
										<div class="form-group">
											<input type="text" class="form-control" id="name" name="txtname" placeholder="Your Name" required data-error="Please enter your name">
											<div class="help-block with-errors"></div>
										</div>                                 
									</div>
									<div class="col-md-12">
										<div class="form-group">
											<input type="text" placeholder="Your Email" id="email" class="form-control" name="txtemail" required data-error="Please enter your email">
											<div class="help-block with-errors"></div>
										</div> 
									</div>
									<div class="col-md-12">
										<div class="form-group">
											<input type="text" placeholder="Your Numbar" id="phone" class="form-control" name="txtmobile" required data-error="Please enter your Numbar">
											<div class="help-block with-errors"></div>
										</div> 
									</div>
								</div>
								<div class="col-md-12">
									<div class="submit-button text-center">
										<button class="btn btn-common" id="submit" type="submit">Book Table</button>
										<div id="msgSubmit" class="h3 text-center hidden"></div> 
										<div class="clearfix"></div> 
									</div>
								</div>
							</div>            
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Reservation -->
       
        
        
        <footer class="footer-area bg-f">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-6">
					<h3>About Us</h3>
					<p>Efficiently serving perfectly crispy, paper-thin stuffed dosas, mini idlis, Sagar Ratna is a one-stop-shop for South Indian food (mostly vegetarian). There are franchises all over the city but the original location in Defence Colony Market is utterly magical: don’t miss out on the South Indian coffee, offered in a funky steel glass.</p>
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
	<!-- End Footer -->
	
	

	<!-- ALL JS FILES -->
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
    <!-- ALL PLUGINS -->
	<script src="js/jquery.superslides.min.js"></script>
	<script src="js/custom.js"></script>
        
        
        
    </body>
</html>
