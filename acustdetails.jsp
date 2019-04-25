<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Material Sale</title>
<!--
Classic Template
http://www.templatemo.com/tm-488-classic
-->
    <!-- load stylesheets -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400">  <!-- Google web font "Open Sans" -->
    <link rel="stylesheet" href="css/bootstrap.min.css">                                      <!-- Bootstrap style -->
    <link rel="stylesheet" href="css/templatemo-style.css">                                   <!-- Templatemo style -->

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
          <![endif]-->
</head>

    <body>
       
        <div class="tm-header">
            <div class="container-fluid">
                <div class="tm-header-inner">
                    <a href="#" class="navbar-brand tm-site-name">Material Sale</a>
                    
                    <!-- navbar -->
                    <nav class="navbar tm-main-nav" style="padding-left: 0px;padding-right: 0px;">

                        <button class="navbar-toggler hidden-md-up" type="button" data-toggle="collapse" data-target="#tmNavbar">
                            &#9776;
                        </button>
                        
                        <div class="collapse navbar-toggleable-sm" id="tmNavbar">
                            <ul class="nav navbar-nav">
								<li class="nav-item ">
                                    <a href="" class="nav-link">Admin</a>
                                </li>
                                <li class="nav-item">
                                    <a href="aplotdetails.jsp" class="nav-link">Product Details</a>
                                </li>
                                <li class="nav-item">
                                    <a href="aagentdetails.jsp" class="nav-link">Seller Details</a>
                                </li>
                                <li class="nav-item active">
                                    <a href="acustdetails.jsp" class="nav-link">Buyer Details</a>
                                </li>
								
                                <li class="nav-item">
                                    <a href="index.html" class="nav-link">Logout</a>
                                </li>
                            </ul>                        
                        </div>
                        
                    </nav>  

                </div>                                  
            </div>            
        </div>
<%@page import="java.sql.*"%>
<%
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3306/msale";
String name="root";
String pwd="root";
Connection con=DriverManager.getConnection(url,name,pwd);
String sql="select * from custreg";
Statement ps=con.createStatement();
ResultSet rs=ps.executeQuery(sql);
%>
       <div class="tm-home-img-container">
            <img src="img/tm-home-img.jpg" alt="Image" class="hidden-lg-up img-fluid">
			<center>
			<section>
			<!--<form action="asearch1.jsp" method="post" style="padding-top: 30px;">
			<table cellspacing="" cellpadding="">
			<div><h3>Search Customer Details</h3></div>
			<div>
			<tr>
			<td style="padding-bottom: 10px;"><input type="email" name="search" placeholder="enter customer email" required></td>
			</tr></div>
			<tr><div>
			<td><input type="submit" value="Search"></td>
			</tr>
			</div>
			</table>
			</form>-->
			</section></center>
			<section>
			<center style="padding-top: 80px;">
			<table border="1">
			<tr>
			<th>Buyer Name</th>
			<th>Email</th>
			<th>Phone</th>
			<th>Gender</th>
			</tr>
			<%
			while(rs.next())
			{%>
		<tr>
		<td><%=rs.getString(2)%></td>
		<td><%=rs.getString(3)%></td>
		<td><%=rs.getString(5)%></td>
		<td><%=rs.getString(6)%></td>
			</tr><%}%>
			</table>
			</center>
			</section>
        </div>



        
        <footer class="tm-footer">
            <div class="container-fluid">
                <div class="row">
                    
                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3 col-xl-3">
                        
                        <div class="tm-footer-content-box">
                            
                        </div>
                                                
                    </div>

                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3 col-xl-3">
                        
                        
                    </div>

                    <!-- Add the extra clearfix for only the required viewport 
                        http://stackoverflow.com/questions/24590222/bootstrap-3-grid-with-different-height-in-each-item-is-it-solvable-using-only
                    -->
                    <div class="clearfix hidden-lg-up"></div>

                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3 col-xl-3">

                       
                        
                    </div>

                    <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3 col-xl-3">

                       
                        
                    </div>


                </div>

                <div class="row">
                    <div class="col-xs-12 tm-copyright-col">
                        <p class="tm-copyright-text">Copyright &copy 2018 Material Sale</p>
                    </div>
                </div>
            </div>
        </footer>

        <!-- load JS files -->
        <script src="js/jquery-1.11.3.min.js"></script>             <!-- jQuery (https://jquery.com/download/) -->
        <script src="https://www.atlasestateagents.co.uk/javascript/tether.min.js"></script> <!-- Tether for Bootstrap, http://stackoverflow.com/questions/34567939/how-to-fix-the-error-error-bootstrap-tooltips-require-tether-http-github-h --> 
        <script src="js/bootstrap.min.js"></script>                 <!-- Bootstrap (http://v4-alpha.getbootstrap.com/) -->
       
</body>
</html>