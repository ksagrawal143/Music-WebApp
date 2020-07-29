<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8" %>
<!Doctype HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<title>Welcome <%String name1=request.getParameter("username");out.print(" "+name1);%></title>
<link rel="icon"
    href="https://1.bp.blogspot.com/-RgJWXm0t7q0/XIWTSUvY40I/AAAAAAAAIj0/YMDr1bdHzBsryvSU8CEGeSGNlqPh3axlQCK4BGAYYCw/s1600/music%2Bicons.png"
    type="image/x-icon">
<link rel="stylesheet" type="text/css" href="./css/dashboard.css">
</head>
<body>
<script type="text/javascript">
if ($(window).width() > 992) {
	  $(window).scroll(function(){  
	     if ($(this).scrollTop() >0) {
	        $('.navbar navbar-expand-md navbar-dark bg-dark').addClass("fixed-top");
	        // add padding top to show content behind navbar
	        $('body').css('padding-top', $('.navbar').outerHeight() + 'px');
	      }else{
	        $('.navbar navbar-expand-md navbar-dark bg-dark').removeClass("fixed-top");
	         // remove padding top from body
	        $('body').css('padding-top', '0');
	      }   
	  });
	}
$(document).ready(function(){
    $(".myicon").click(function(){
        location.reload(true);
    });
});
	(function () {
		if(localStorage.Login==null){
	    	alert('Please login again.');
	    	$(document).ready(function() {
	          var url = "http://localhost:8010/JavaWebApplication/";
	          $(location).attr('href',url);
	     });
		}
	})();
</script>
<script>
      function myFunction() {
   	  localStorage.removeItem("Login");
   		var auth2 = gapi.auth2.getAuthInstance();
    	auth2.signOut().then(function () {
      	console.log('User signed out.');
    });
   }
</script>
<%
	response.setHeader("Cache-Control", "private,no-cache, no-store, must-revalidate, max-age=0, proxy-revalidate, s-maxage=0");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires",0); 
	response.setHeader("Vary","*");
	%>
	 <nav class="navbar navbar-expand-md navbar-dark bg-dark" style="position:absolute;width:100%" class="sticky-top">
        <div class="container" style="margin-left:10px">
        <img class="myicon"style="height: 50px;margin-right: 10px;"src="https://1.bp.blogspot.com/-RgJWXm0t7q0/XIWTSUvY40I/AAAAAAAAIj0/YMDr1bdHzBsryvSU8CEGeSGNlqPh3axlQCK4BGAYYCw/s1600/music%2Bicons.png">
            <a class="navbar-brand" href="#" id="hey">Hey!!
	<%
	String name=request.getParameter("username");out.print(" "+name);
	if(name==null){
		RequestDispatcher req = request.getRequestDispatcher("./jsp/Login.jsp");
	}
	%></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarsExampleDefault">
            	
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <input class="navl" type="submit" value="Home" name="Home" id="Home" onclick="">
                    </li>
                    <li class="nav-item">
                            <input class="navl" type="submit" value="Podcasts" id="Podcasts" name="Podcasts" onclick="">
                    </li>
                    <li class="nav-item">
                           <input class="navl" type="submit" value="Playlists" name="Playlists" id="Playlists" onclick="">
                    </li>
                    <li class="nav-item">
                        <input class="navl" type="submit" value="Artists" name="Artists" id="Artists" onclick="">
                    </li>
                    <li class="nav-item">
				          <input class="navl" type="submit" value="Albums" name="Albums" id="Albums" onclick="">
                    </li>
                </ul>
            </div>
			<div class="w-25">
                    <div class="input-group">
                      <input style="margin-left:5px" type="text" class="form-control" placeholder="Search..." name="query">
                      <button type="submit">Go</button>      
                    </div>
            </div>
            <div  style="box-sizing:border-box;margin-left:25px;text-align:center">
                <form action="Logout" method="post">
					<input type="submit" value="Logout" onclick="myFunction()"/>
			</form> 
            </div>
        </div>
    </nav>
	<marquee direction="right" style="margin-top:95px;position:relative"><h4 style="color:white;">Enjoy the latest music around the globe !!</h4></marquee>
	<div id="dtest" style="color:black;"> </div>
	<audio class="audio" controls autoplay loop>
		<source src="./assets/Maroon%205%20-%20Memories.mp3" type="audio/mpeg">
	</audio>
	<script>
	$("#Home").click(function(){
	    $("#dtest").text("");
	  });
	$("#Podcasts").click(function(){
	    $("#dtest").text("Top Podcasts");
	  });
	$("#Playlists").click(function(){
	    $("#dtest").text("Top-50 Playlists");
	  });
	$("#Artists").click(function(){
	    $("#dtest").text("Top-50 Artists");
	  });
	$("#Albums").click(function(){
	    $("#dtest").text("Top-50 Albums");
	  });
	</script>
</body>
</html>