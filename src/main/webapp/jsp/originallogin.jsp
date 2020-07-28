<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
	<title>Login-MyTunes</title>
	<link rel="icon"
    href="https://1.bp.blogspot.com/-RgJWXm0t7q0/XIWTSUvY40I/AAAAAAAAIj0/YMDr1bdHzBsryvSU8CEGeSGNlqPh3axlQCK4BGAYYCw/s1600/music%2Bicons.png"
    type="image/x-icon">
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
	<link rel="stylesheet" type="text/css" href="./css/vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="./css/vendor/animate/animate.css">	
	<link rel="stylesheet" type="text/css" href="./css/vendor/css-hamburgers/hamburgers.min.css">
	<link rel="stylesheet" type="text/css" href="./css/vendor/animsition/css/animsition.min.css">
	<link rel="stylesheet" type="text/css" href="./css/vendor/select2/select2.min.css">	
	<link rel="stylesheet" type="text/css" href="./css/vendor/daterangepicker/daterangepicker.css">
	<link rel="stylesheet" type="text/css" href="./css/util.css">
	<link rel="stylesheet" type="text/css" href="./css/main.css">
	
</head>
<body>
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<form class="login100-form validate-form" action="DashboardLogin" method="post">
					<img src="https://1.bp.blogspot.com/-RgJWXm0t7q0/XIWTSUvY40I/AAAAAAAAIj0/YMDr1bdHzBsryvSU8CEGeSGNlqPh3axlQCK4BGAYYCw/s1600/music%2Bicons.png" style="margin:auto;margin-bottom:15px;width:150px;vertical-align:middle;height:150px">
					<span class="login100-form-title p-b-34">
						SignIn to MyTunes
					</span>
					
					<div class="wrap-input100 rs1-wrap-input100 validate-input m-b-20" data-validate="Type user name">
						<input id="first-name" class="input100" type="text" name="username" placeholder="Username">
						<span class="focus-input100"></span>
					</div>
					<div class="wrap-input100 rs2-wrap-input100 validate-input m-b-20" data-validate="Type password">
						<input class="input100" type="password" name="pass" placeholder="Password">
						<span class="focus-input100"></span>
					</div>
					
					<div class="container-login100-form-btn">
						<button class="login100-form-btn" onclick="begin()">
							Sign in
						</button>
					</div>
				</form>
				<div class="login100-more" style="background-image: url('./images/guitar.jpg'); width=50px;height=150px;"></div>
			</div>
		</div>
	</div>
	<div id="dropDownSelect1"></div>
	<script src="./css/vendor/jquery/jquery-3.2.1.min.js"></script>
	<script src="./css/vendor/animsition/js/animsition.min.js"></script>
	<script src="./css/vendor/bootstrap/js/popper.js"></script>
	<script src="./css/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="./css/vendor/select2/select2.min.js"></script>
	<script>
		$(".selection-2").select2({
			minimumResultsForSearch: 20,
			dropdownParent: $('#dropDownSelect1')
		});
		
	</script>
	<script src="./css/vendor/daterangepicker/moment.min.js"></script>
	<script src="./css/vendor/daterangepicker/daterangepicker.js"></script>
	<script src="./css/vendor/countdowntime/countdowntime.js"></script>
	<script src="./js/main.js"></script>
	<script >
	function begin(){
		localStorage.setItem("Login","Success");
	}
	</script>
</body>
</html>