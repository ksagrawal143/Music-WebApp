<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="google-signin-client_id" content="144693515064-shol9ej7cp7ghajuqiip3q6rtg0m29h5.apps.googleusercontent.com">
  <title>MyTunes</title>
  <link rel="stylesheet" type="text/css" href="./css/style.css">
  <link rel="icon"
    href="https://1.bp.blogspot.com/-RgJWXm0t7q0/XIWTSUvY40I/AAAAAAAAIj0/YMDr1bdHzBsryvSU8CEGeSGNlqPh3axlQCK4BGAYYCw/s1600/music%2Bicons.png"
    type="image/x-icon">
    <script async defer crossorigin="anonymous" 
	src="https://connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v7.0&appId=2707799649547304&autoLogAppEvents=1" 
	nonce="bpY9iwB7"></script>
    <script src="https://apis.google.com/js/platform.js" async defer></script>
</head>
<body>
	<div class="mytune" style=height:120px>
		<h1>Welcome to MyTunes</h1>
		<marquee direction="right"><h3>Non-stop Music Anytime and Anywhere ......</h3></marquee>
    </div>
    <form action="Register" method="post">
    <div id="login-box">
      <div class="left-box">
        <h2> Sign Up</h2>
          <input type="text" name="username" placeholder="Username"/>
          <input type="email" name="email" placeholder="Email"/>
          <input type="password" name="password" placeholder="Password"/>
          <input type="password" name="repassword" placeholder="Retype-Password"/>
          <input type="submit" name="signup-button" value="Sign Up"/>
          
        </div>
        </form>
        <div class="right-box">
          <form action="Login" method="post">
    		<div class="center">	
    			<p>Login with MyTunes Account</p>
        		<input type="submit" name="signup-button" value="Sign in"/> 
    		</div>
    	  </form>
          <div class="fb-login-button" data-size="large" data-button-type="continue_with" data-layout="default" data-auto-logout-link="false" data-use-continue-as="false" data-width=""></div>
          <div class="g-signin2" data-scope="profile email" data-width="245" data-height="40" data-longtitle="true" data-onsuccess="onSignIn" data-theme="dark"></div>
    	</div>
    <div class="or">OR</div>
    </div>  
    <p style="text-align:center;color:#ffffff;font-size:20px;opacity: 0.3;margin-top:100px">@Kshitij_Agrawal 2020.</p> 
    
   <script type="text/javascript">
    	  function onSignIn(googleUser) {
    		  var profile = googleUser.getBasicProfile();
    		  console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
    		  console.log('Name: ' + profile.getName());
    		  console.log('Image URL: ' + profile.getImageUrl());
    		  console.log('Email: ' + profile.getEmail()); // This is null if the 'email' scope is not present.
    		}
   </script>
</body>    
</html>
</body>
