<?php
	$host ="localhost";
	$dbUsername ="id15158503_mama1";
	$dbPassword ="!havj&ER[pK<Hy)8";
	$dbname="id15158503_mama";
	
	$error="";
	$success="";
	
	$con =mysqli_connect($host,$dbUsername,$dbPassword,$dbname);
	mysqli_select_db($con,$dbname);
	
	if(isset($_POST['MatricNo'])){
		$MatricNo =$_POST['MatricNo'];
		$Password =$_POST['Password'];
		
		$sql="Select * from Login where MatricNo ='".$MatricNo."'AND password='".$Password."'limit 1";
		
		$result=mysqli_query($con,$sql);
		
		if(mysqli_num_rows($result)==1){
			$error="  ";
			$success = header("Location:index.html");
			}
			
		else{
			$error="Invalid username or password ";
			$success = "";
		}
	}
	
	?>



<!DOCTYPE html>
<html lang="en">
<head>
	<title>Login V1</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="Login_v1/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Login_v1/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Login_v1/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Login_v1/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="Login_v1/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Login_v1/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Login_v1/css/util.css">
	<link rel="stylesheet" type="text/css" href="Login_v1/css/main.css">
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt>
					<img src="Login_v1/images/img-01.png" alt="IMG">
				</div>
				
				<form class="login100-form validate-form" action="#" method="POST">
					<span class="login100-form-title">
						Member Login
					</span>

					<div class="wrap-input100 validate-input" data-validate = "id From University">
						<input class="input100" type="text" name="MatricNo" placeholder="Matric Number">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						<input class="input100" type="password" name="Password" placeholder="Password">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>
					<p class="error"><?php echo $error;?></p><p class="success"><?php echo $success;?></p>
					<div class="container-login100-form-btn">
						<button class="login100-form-btn" type="submit" >Login
							
						</button>
					</div>

					<div class="text-center p-t-12"  Placeholder = "id from Uni">
						<span class="txt1" >
							Forgot
						</span>
						<a class="txt2" href="#">
							Username / Password?
						</a>
					</div>
					
					
				</form>
			</div>
		</div>
	</div>
	
	

	
<!--===============================================================================================-->	
	<script src="Login_v1/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="Login_v1/vendor/bootstrap/js/popper.js"></script>
	<script src="Login_v1/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="Login_v1/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="Login_v1/vendor/tilt/tilt.jquery.min.js"></script>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>
<!--===============================================================================================-->
	<script src="Login_v1/js/main.js"></script>

</body>
</html>