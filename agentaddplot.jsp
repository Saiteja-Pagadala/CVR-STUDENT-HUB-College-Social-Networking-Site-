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
                    <nav class="navbar tm-main-nav">

                        <button class="navbar-toggler hidden-md-up" type="button" data-toggle="collapse" data-target="#tmNavbar">
                            &#9776;
                        </button>
                        
                        <div class="collapse navbar-toggleable-sm" id="tmNavbar">
                            <ul class="nav navbar-nav">
                               <!-- <li class="nav-item">
                                    <a href="#agentpm.jsp" class="nav-link">Plot Management</a>
                                </li>-->
                                <li class="nav-item active">
                                    <a href="#adminlogin.jsp" class="nav-link">Add Plot</a>
                                </li>
                                <li class="nav-item">
                                    <a href="agentupdateplot.jsp" class="nav-link">Update Details</a>
                                </li>
                                <li class="nav-item">
                                    <a href="agentoptions.jsp" class="nav-link">Back</a>
                                </li>
                            </ul>                        
                        </div>
                        
                    </nav>  

                </div>                                  
            </div>            
        </div>

        <div class="tm-home-img-container">
            <img src="img/tm-home-img.jpg" alt="Image" class="hidden-lg-up img-fluid">
			<center>
			<section>
			<form action="addplotinsert.jsp" method="post" style="padding-top: 80px;">
			<table cellspacing="" cellpadding="">
			<div><h3>Plot Details</h3></div>
			<div>
			<tr>
			<th><label>Seller Name</label></th>
			<td style="padding-bottom: 10px;padding-left: 10px;"><input type="text" name="sname" placeholder="enter seller name" required></td>
			</tr>
			</div>
			<div>
			<tr>
			<th><label>Location</label></th>
			<td style="padding-bottom: 10px;padding-left: 10px;"><input type="text" name="loc" placeholder="enter location of plot" required></td>
			</tr>
			</div>
			<div>
			<tr>
			<th><label>Area(sq.ft.)</label></th>
			<td style="padding-bottom: 10px;padding-left: 10px;"><input type="text" name="area" placeholder="enter area of plot" required></td>
			</tr>
			</div>
			<div>
			<tr>
			<th><label>Amount</label></th>
			<td style="padding-bottom: 10px;padding-left: 10px;"><input type="text" name="amount" placeholder="enter amount" required></td>
			</tr>
			</div>
			<div>
			<tr>
			<th><label>Phone</label></th>
			<td style="padding-bottom: 10px;padding-left: 10px;"><input type="text" name="phone" placeholder="enter phone" required></td>
			</tr>
			</div>
			<!--<div>
			<tr>
			<th><label>Image</label></th>
			<td style="padding-bottom: 10px;padding-left: 10px;"><input type="file" name="img" id="img" required></td>
			</tr>
			</div>-->
			<div>
			<tr>
			<th><label>Status</label></th>
			<td style="padding-bottom: 10px;padding-left: 10px;"><input type="text" name="status" value="vacant" readonly required></td>
			</tr>
			</div>
			<div>
			<td><input type="submit" value="Add"></td>
			<td><input type="reset" value="Reset"></td>
			</div>
			
			</table>
			
			</form>
			</section></center>
			
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