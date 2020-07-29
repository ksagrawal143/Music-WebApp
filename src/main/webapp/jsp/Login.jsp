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
				<div class="login100-more" style="background-image: url('https://c4.wallpaperflare.com/wallpaper/919/604/7/music-background-guitar-wallpaper-preview.jpg'); width=50px;height=150px;"></div>
			</div>
		</div>
	</div>
	<script>
		$(".selection-2").select2({
			minimumResultsForSearch: 20,
			dropdownParent: $('#dropDownSelect1')
		});
		
	function begin(){
		localStorage.setItem("Login","Success");
	}
	</script>
</body>
</html>