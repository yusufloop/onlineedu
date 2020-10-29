<?php
    $con = mysqli_connect("localhost", "id15158503_mama1", "!havj&ER[pK<Hy)8","id15158503_mama") or die("Error connecting to database: ".mysqli_error());
    /*
        localhost - it's location of the mysql server, usually localhost
        root - your username
        third is your password
         
        if connection fails it will stop loading the page and display an error
    */
    $sql ="SELECT * FROM PersonalInfo INNER JOIN Graduation ON PersonalInfo.MatricNo = Graduation.MatricNo";
     
    $result = mysqli_query($con,$sql)or die(mysqli_error()); 
    //connect
    $result1 = mysqli_query($con,$sql)or die(mysqli_error()); 
    
    $row = mysqli_fetch_assoc($result);
         
?>


<!doctype html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
     <title> Education | Template </title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="manifest" href="site.webmanifest">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

	<!-- CSS here -->
	<link rel="stylesheet" href="assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/css/owl.carousel.min.css">
	<link rel="stylesheet" href="assets/css/slicknav.css">
    <link rel="stylesheet" href="assets/css/flaticon.css">
    <link rel="stylesheet" href="assets/css/gijgo.css">
	<link rel="stylesheet" href="assets/css/animate.min.css">
	<link rel="stylesheet" href="assets/css/magnific-popup.css">
	<link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
	<link rel="stylesheet" href="assets/css/themify-icons.css">
	<link rel="stylesheet" href="assets/css/slick.css">
	<link rel="stylesheet" href="assets/css/nice-select.css">
	<link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
    <!--? Preloader Start -->
    <div id="preloader-active">
        <div class="preloader d-flex align-items-center justify-content-center">
            <div class="preloader-inner position-relative">
                <div class="preloader-circle"></div>
                <div class="preloader-img pere-text">
                    <img src="assets/img/logo/loder.png" alt="">
                </div>
            </div>
        </div>
    </div>
    <!-- Preloader Start -->
  <header>
        <!-- Header Start -->
        <div class="header-area">
            <div class="main-header ">
                <div class="header-top d-none d-lg-block">
                    <!-- Left Social -->
                    <div class="header-left-social">
                        <ul class="header-social">    
                            <li><a href="https://twitter.com/k_t_darulnaim?lang=en"><i class="fab fa-twitter"></i></a></li>
                            <li><a href="https://www.facebook.com/KolejTeknologiDarulnaim/"><i class="fab fa-facebook-f"></i></a></li>
                            <li><a href="https://my.linkedin.com/in/ilyasak-ahmad-a4896888?trk=pub-pbmap"><i class="fab fa-linkedin-in"></i></a></li>
                            <li><a href="https://sites.google.com/ktd.edu.my/jabatanpendaftar/home"><i class="fab fa-google-plus-g"></i></a></li>
                        </ul>
                    </div>
                    <div class="container">
                        <div class="col-xl-12">
                            <div class="row d-flex justify-content-between align-items-center">
                                <div class="header-info-left">
                                    <ul>     
                                        <li>yusufsmik@gmail.com</li>
                                        <li>013-2262483</li>
                                    </ul>
                                </div>
                                <div class="header-info-right">
                                    <ul>
                                        <li><a href="logout.php"><i class="ti-lock"></i>Exit</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="header-bottom header-sticky">
                    <!-- Logo -->
                    <div class="logo d-none d-lg-block">
                        <a href="index.html"><img src="assets/img/logo/logo.png" alt=""></a>
                    </div>
                    <div class="container">
                        <div class="menu-wrapper">
                            <!-- Logo -->
                            <div class="logo logo2 d-block d-lg-none">
                                <a href="index.html"><img src="assets/img/logo/logo.png" alt=""></a>
                            </div>
                            <!-- Main-menu -->
                            <div class="main-menu d-none d-lg-block">
                                <nav>
                                    <ul id="navigation">                                                                                          
                                        <li><a href="index.html">Home</a></li>
                                        <li><a href="dashboard.php">Dashboard</a></li>
                                        <li><a href="biodata.php">Biodata</a></li>
                                        <li><a href="Registration.php">Registration</a></li>
										<li><a href="Account.php">Student Account</a></li>
                                        <li><a >Studies</a>
                                            <ul class="submenu">
                                                <li><a href="exam.php">Exam</a></li>
                                                <li><a href="graduation.php">Graduation</a></li>
                                                <li><a href="Library.html">Library Online</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </nav>
                            </div>
                            
                            <!-- Header-btn -->
                            <div class="header-search d-none d-lg-block">
                               <form action="search.php" class="form-box f-right " method="GET">
                                    <input type="text" name="query" placeholder="Search Event">
                                    <div class="search-icon">
                                        <button class="btn2" type="submit" value="search"><i class="fas fa-search special-tag" ></i></button>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <!-- Mobile Menu -->
                        <div class="col-12">
                            <div class="mobile_menu d-block d-lg-none"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Header End -->
    </header>
    <main>
         <!--? Hero Start -->
        <div class="slider-area">
            <div class="slider-height2 d-flex align-items-center">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="hero-cap hero-cap2 text-center">
                                <h2>Graduation Checklist</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
         <div class="about-details section-padding30">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-8">
                        <div class="about-details-cap mb-50">
						</div>
                            <h2>PERSONAL DETAIL</h2>
     
      <div class="table-responsive">
        <table class="table ">
          <thead>
            <tr>
              <th><b>Name</b></th>
              <th> <?php echo $row["StudentName"];?></th>
              <th></th>
              <th></th>
            </tr>
          </thead>
          
                  <tbody>
            <tr>
              <td><b>Matric Number</b></td>
              <td> <?php echo $row["MatricNo"];?></td>
              <td></td>
              <td></td>
            </tr>
            
            <tr>
              <td><b>IC/Passport</b></td>
              <td><?php echo $row["IcNo"];?></td>
              <td></td>
              <td></td>
            </tr>
            <tr>
              <td><b>Gender</b></td>
              <td> <?php echo $row["Gender"];?></td>
            </tr>
            <tr>
              <td><b>Religion</b></td>
              <td> <?php echo $row["Religion"];?></td>
              <td><b>Race</b></td>
              <td> <?php echo $row["Race"];?></td>
            </tr>
            
            <tr>
              <td><b>Phone No</b></td>
              <td> <?php echo $row["NumPhone"];?></td>
              <td><b>Email</b></td>
              <td> <?php echo $row["Email"];?></td>
            </tr>
            <tr>
              <td><b>Guardian Phone Number</b></td>
              <td><?php echo $row["GuardianPhone"];?></td>
              <td><b>Address</b></td>
              <td><?php echo $row["Address"];?></td>
            </tr>
           
          </tbody>
        </table>
      </div>
									</main>
								</div>
							</div>
                        </div>
                    </div>
                </div>
                
                
<!--table course list--> 
<h2 align="center">Graduation List Course</h2>
<table class="paleBlueRows" align="center">
<thead>
<tr>
<th>Course Code</th>
<th>Course Name</th>
<th>Expected Sem</th>
<th>Session Taken</th>
<th>Status</th>
</tr>
<tr>
</tr>
</thead>

<?php
if(mysqli_num_rows($result1) > 0)
{
    while($row1 = mysqli_fetch_array($result1))
    {
        
?>
 
<tbody align="center">
<tr>
<td><?php echo $row1["CourseCode"];?></td>
<td><?php echo $row1["CourseName"];?></td>
<td><?php echo $row1["ExpectedSem"];?></td>
<td><?php echo $row1["SessionTaken"];?></td>
<td><?php echo $row1["Status"];?></td>
</tr>
<?php
   }
}
?> 
</tbody>
</table>
<br>
<br>

       
        <!-- About Law End-->
    </main>
    <footer>
        <!--? Footer Start-->
        <div class="footer-area footer-bg">
            <div class="container">
                <div class="footer-top footer-padding">
                    <!-- footer Heading -->
                    <div class="footer-heading">
                        <div class="row justify-content-between">
                            <div class="col-xl-6 col-lg-7 col-md-10">
                                
                                
                            </div>
                            <div class="col-xl-5 col-lg-5">
                                <div class="footer-tittle2">
                                    <h4>Let’s Get Social</h4>
                                </div>
                                <!-- Footer Social -->
                                <div class="footer-social">
                                    <a href="https://www.facebook.com/KolejTeknologiDarulnaim/"><i class="fab fa-facebook-f"></i></a>
                                    <a href="https://twitter.com/k_t_darulnaim?lang=en"><i class="fab fa-twitter"></i></a>
                                    <a href="https://sites.google.com/ktd.edu.my/jabatanpendaftar/home"><i class="fab fa-google"></i></a>
                                    <a href="https://www.instagram.com/kolej_teknologi_darulnaim/"><i class="fab fa-instagram"></i></a>
                                    <a href="https://www.youtube.com/channel/UCWVuHuQBlqkFhbeOAQNyfYg"><i class="fab fa-youtube"></i></a>
                                  </div>
                            </div>
                        </div>
                    </div>
                    
                <!-- Footer Bottom -->
                <div class="footer-bottom">
                    <div class="row d-flex align-items-center">
                        <div class="col-lg-12">
                            <div class="footer-copy-right text-center">
                               
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer End-->
    </footer>
    <!-- Scroll Up -->
    <div id="back-top" >
        <a title="Go to Top" href="#"> <i class="fas fa-level-up-alt"></i></a>
    </div>

    <!-- JS here -->

    <script src="./assets/js/vendor/modernizr-3.5.0.min.js"></script>
    <!-- Jquery, Popper, Bootstrap -->
    <script src="./assets/js/vendor/jquery-1.12.4.min.js"></script>
    <script src="./assets/js/popper.min.js"></script>
    <script src="./assets/js/bootstrap.min.js"></script>
    <!-- Jquery Mobile Menu -->
    <script src="./assets/js/jquery.slicknav.min.js"></script>

    <!-- Jquery Slick , Owl-Carousel Plugins -->
    <script src="./assets/js/owl.carousel.min.js"></script>
    <script src="./assets/js/slick.min.js"></script>
    <!-- One Page, Animated-HeadLin -->
    <script src="./assets/js/wow.min.js"></script>
    <script src="./assets/js/animated.headline.js"></script>
    <script src="./assets/js/jquery.magnific-popup.js"></script>

    <!-- Date Picker -->
    <script src="./assets/js/gijgo.min.js"></script>
    <!-- Nice-select, sticky -->
    <script src="./assets/js/jquery.nice-select.min.js"></script>
    <script src="./assets/js/jquery.sticky.js"></script>
    
    <!-- counter , waypoint -->
    <script src="./assets/js/jquery.counterup.min.js"></script>
    <script src="./assets/js/waypoints.min.js"></script>
    
    <!-- contact js -->
    <script src="./assets/js/contact.js"></script>
    <script src="./assets/js/jquery.form.js"></script>
    <script src="./assets/js/jquery.validate.min.js"></script>
    <script src="./assets/js/mail-script.js"></script>
    <script src="./assets/js/jquery.ajaxchimp.min.js"></script>
    
    <!-- Jquery Plugins, main Jquery -->	
    <script src="./assets/js/plugins.js"></script>
    <script src="./assets/js/main.js"></script>
    
    </body>
</html>