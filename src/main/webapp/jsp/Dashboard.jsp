<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
ResultSet rs=null;
Class.forName("com.mysql.jdbc.Driver");  
%>
<!Doctype HTML>
<html>
<head>
	<!--script>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	<meta http-equiv="Content-Type" content="text/html" charset="UTF-8"/>
	</script-->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia"/>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css"/>
	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
	<script src="./js/index.js"></script>
	<title>Welcome <%String name1=request.getParameter("username");out.print(" "+name1);%></title>
	<link rel="icon"
	    href="https://1.bp.blogspot.com/-RgJWXm0t7q0/XIWTSUvY40I/AAAAAAAAIj0/YMDr1bdHzBsryvSU8CEGeSGNlqPh3axlQCK4BGAYYCw/s1600/music%2Bicons.png"
	    type="image/x-icon"/>
	<link rel="stylesheet" type="text/css" href="./css/dashboard.css"/>
</head>
<body>
<script type="text/javascript">
if ($(window).width() > 992) {
	  $(window).scroll(function(){  
	     if ($(this).scrollTop() >0) {
	        $('.navbar navbar-expand-lg fixed-top').addClass("fixed-top");
	        $('body').css('padding-top', $('.navbar').outerHeight() + 'px');
	      }else{
	        $('.navbar navbar-expand-lg fixed-top').removeClass("fixed-top");
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
    <div>
       <nav class="navbar navbar-expand-lg fixed-top" style="background:black;opacity:1">
        <div class="container" style="margin-left:10px;margin-right:10px;width:100%">
        <img class="myicon"style="height: 50px;margin-right: 10px;"src="https://1.bp.blogspot.com/-RgJWXm0t7q0/XIWTSUvY40I/AAAAAAAAIj0/YMDr1bdHzBsryvSU8CEGeSGNlqPh3axlQCK4BGAYYCw/s1600/music%2Bicons.png">
            <a class="navbar-brand" href="#" id="hey" style="margin-right:15px;">Hey 
			<%
			String name=request.getParameter("username");out.print(" "+name);
			if(name==null){
				RequestDispatcher req = request.getRequestDispatcher("./jsp/Login.jsp");
			}
			%>
			</a>
          <button type="button" data-toggle="collapse" data-target="#navbarcollapse" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation" class="navbar-toggler navbar-toggler-right"><span class="fa fa-bars"></span></button>
          <div id="navbarcollapse" class="collapse navbar-collapse" >
            <ul class="navbar-nav ml-auto">
              <li class="nav-item" id="Home" onclick="home()"><a style="color:white;margin-left:25px;" href="#home" class="nav-link link-scroll">Home</a></li>
              <li class="nav-item" id="Playlists" onclick="playlist()"><a href="#playlists" style="color:white" class="nav-link link-scroll">Playlists</a></li>
              <li  class="nav-item" id="album" onclick="album()"><a href="#albums" style="color:white" class="nav-link link-scroll">Albums</a></li>
              <li class="nav-item" id="artist" onclick="artist()"><a href="#artists" style="color:white" class="nav-link link-scroll">Artists</a></li>
              <li class="nav-item" id="Contact" onclick="me()"><a href="#contact" style="color:white" class="nav-link link-scroll">About Us</a></li>
            </ul>
          </div>
          <div class="w-25">
                    <div class="input-group">
                    <form action="mysearch" method="post">
                      <input style="margin-left:35px;background: transparent" type="text" class="form-control" placeholder="Search..." name="query">      
                    </form>
                    </div>
            </div>
            <div  style="box-sizing:border-box;margin-left:25px;text-align:center">
                <form action="Logout" method="post">
					<input style="background-color: Transparent;background-repeat:no-repeat;border: none;cursor:pointer;color:white;overflow: hidden; "type="submit" value="Logout" onclick="myFunction()"/>
			</form> 
			<form action="" style="display:inline-block;">
			 <select id="lang" name="lang">
    		<option value="english">English</option>
    		<option value="hindi">Hindi</option>
    		<option value="punjabi">Punjabi</option>
    		<option value="spanish">Spanish</option>
  		</select>
  		</form>
        </div>
        </div>
      </nav>
      </div>
	<marquee direction="right" style="margin-top:100px;position:relative;opacity:0.8" behavior=scroll scrollamount="11"><h4 style="color:white;">Enjoy the latest music around the globe !!</h4></marquee>
<div class="sidenav2">
<h1 class="hello" style="margin-top:95px">My Songs</h1>
<ul><p id="options"></p></ul>
<ul id="nav-item1">
<%
try{
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/javawebapplication","root", "ashu@$$26");  
Statement stmt = con.createStatement();
rs = stmt.executeQuery("select * from songsdb");
while (rs.next()) 
{  
%>

<li  onclick="list(id)" id="<%=rs.getString("address")%>" value="<%=rs.getString("song")%>"><p onclick="list1(id)" id="<%=rs.getString("song")%><br><%=rs.getString("artist")%>"><%=rs.getString("song")%></p></li>
<%
}
con.close();
} catch (Exception e) {
e.printStackTrace();
}
%> 
</ul>
</div>

  <div class="sidenav">
  <div class="container" style="display: inline;">
  <div class="glow" style="margin-left:20px;margin-top:75px">
    <div class="text-container">
      <span class="text" >MyTunes Player<br><p id="current">Lean On<br>Major Lazor & DJ Snake</p></span>
      <br>
      <div class="playback_controls">
      <button onclick="skip('back')"><i class="fa fa-fast-backward"></i></button>
      <button onclick="playpause()"><i class="fa fa-play"></i><i class="fa fa-pause"></i></button>
      <button onclick="stop()"><i class="fa fa-stop"></i></button>
      <button onclick="skip('fwd')"><i class="fa fa-fast-forward"></i></button>
      </div>
      <br>
      <div id="seekbar">
      <input type="range" oninput="setPos(this.value)" id="seek" value="0" max="">
      </div>
      <br>
      <div class="volume_controls">
      <button id="mute" onclick="mute()"><i class="fa fa-volume-up"></i></button>
      <input type="range" id="volume" oninput="setVolume(this.value)" min="0" max="1" step="0.01" value="1">
      </div>
    </div>
  </div>
</div>
	<ul class="navbar-nav ml-auto" style="margin-top:15px">
       <li class="nav-item" style="margin-top:5px"><a href="#saved" style="color:white">Downloaded</a></li>
       <li class="nav-item" style="margin-top:5px"><a href="#fav" style="color:white">My Favourites</a></li>
       <li class="nav-item" style="margin-top:5px"><a href="#mixtapes" style="color:white">Mix Tapes</a></li>
	</ul>
</div>

<div class="container" style="margin-top:15px;margin-left:335px;width: 680px;height: 300px;">
	<div class="flip-card" style="display: inline-block;border-radius:5px">
  		<div class="flip-card-inner" onclick="myclick()" >
    		<div class="flip-card-front">
      			<img src="./images/ei3.jpg" alt="Avatar" style="width:300px;height:300px;">
    		</div>
    		<div id="English" class="flip-card-back">
      			<h3 style="margin-top:15px">Top English Songs
      			<ul>
      			<%try{
      				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/javawebapplication","root", "ashu@$$26");  
      				Statement stmt = con.createStatement();
      				rs = stmt.executeQuery("select * from songsdb where language='English' LIMIT 5,5;");
      				while (rs.next()) 
      				{  
      				%>
      				<li onclick="english()" class="top5" value="<%=rs.getString("language")%>"> <%=rs.getString("song")%></li>
      				<%
      				}
      				con.close();
      				} catch (Exception e) {
      				e.printStackTrace();
      				}
      				%>
      			</ul>
      			</h3>
    		</div>
  		</div>
	</div>
	<div class="flip-card" style="margin-left:15px;border-radius:5px">
  		<div class="flip-card-inner">
    		<div class="flip-card-front">
      			<img src="./images/si1.jpg" alt="Avatar" style="width:300px;height:300px;">
    		</div>
    		<div id="Spanish" class="flip-card-back">
      			<h3 style="margin-top:15px">Top Spanish Songs
      			<ul>
      				<%
      				try{
      					Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/javawebapplication","root", "ashu@$$26");  
      					Statement stmt = con.createStatement();
      					rs = stmt.executeQuery("select * from songsdb where language='Spanish';");
      					while (rs.next()) 
      					{  
      					%>
      					<li onclick="spanish()" class="top5" value="<%=rs.getString("language")%>"> <%=rs.getString("song")%></li>
      					<%
      					}
      					con.close();
      					} catch (Exception e) {
      					e.printStackTrace();
      					}
      					%>
      			</ul>
      			</h3> 
    		</div>
  		</div>
	</div>
</div>
	<div class="container" style="margin-top:15px;margin-left:335px;width: 680px;height: 300px;">
	<div class="flip-card" style="display: inline-block;border-radius:5px">
  		<div class="flip-card-inner">
    		<div class="flip-card-front">
      			<img src="./images/hi1.jpg" alt="Avatar" style="width:300px;height:300px;">
    		</div>
	    	<div id="Hindi" class="flip-card-back">
    	  		<h3 style="margin-top:15px">Top Hindi Songs
    	  		<ul>
    	  		<%try{
      				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/javawebapplication","root", "ashu@$$26");  
      				Statement stmt = con.createStatement();
      				rs = stmt.executeQuery("select * from songsdb where language='Hindi' LIMIT 5;");
      				while (rs.next()) 
      				{  
      				%>
      				<li onclick="hindi()" class="top5" value="<%=rs.getString("language")%>"> <%=rs.getString("song")%></li>
      				<%
      				}
      				con.close();
      				} catch (Exception e) {
      				e.printStackTrace();
      				}
      				%>
    	  		</ul></h3> 
    		</div>
  		</div>
	</div>
	<div class="flip-card" style="margin-left:15px;border-radius:5px">
  		<div class="flip-card-inner">
    		<div class="flip-card-front">
      			<img src="./images/pi1.jpg" alt="Avatar" style="width:300px;height:300px;">
    		</div>
    		<div id="Punjabi" class="flip-card-back">
      			<h3 style="margin-top:15px" >Top Punjabi Songs
      			<ul>
					<%try{
      				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/javawebapplication","root", "ashu@$$26");  
      				Statement stmt = con.createStatement();
      				rs = stmt.executeQuery("select * from songsdb where language='Punjabi' LIMIT 5;");
      				while (rs.next()) 
      				{  
      				%>
      				<li onclick="punjabi()" class="top5" value="<%=rs.getString("language")%>"> <%=rs.getString("song")%></li>
      				<%
      				}
      				con.close();
      				} catch (Exception e) {
      				e.printStackTrace();
      				}
      				%>
      			</ul></h3>
    		</div>
  		</div>
	</div>
	</div>
	<script>
	var song = new Audio;
	var muted = false;
	var vol = 1;
	song.type = 'audio/mpeg';
	song.src = './assets/Music/leanon.mp3';
	function list(add){
		song.src=add;
		song.load;
		song.play();
	};
	function list1(value){
		document.getElementById("current").innerHTML=value;
	};
	function skip(time) {
	   if (time == 'back') {
	     song.currentTime = (song.currentTime - 5);
	   } else if (time == 'fwd') {
	     song.currentTime = (song.currentTime + 5);
	   }
	}
	function playpause() {
	  if (!song.paused) {
	    song.pause();
	  } else {
	    song.play();
	  }
	}
	function stop() {
	  song.pause();
	  song.currentTime = 0;
	  document.getElementById('seek').value = 0;
	}
	function setPos(pos) {
	  song.currentTime = pos;
	}
	function mute() {
	  if (muted) {
	    song.volume = vol;
	    muted = false;
	    document.getElementById('mute').innerHTML = '<i class="fa fa-volume-up"></i>';
	  } else {
	    song.volume = 0;
	    muted = true;
	    document.getElementById('mute').innerHTML = '<i class="fa fa-volume-off"></i>';
	  }
	}
	function setVolume(volume) {
	  song.volume = volume;
	  vol = volume;
	}
	song.addEventListener('timeupdate',function() {
	  curtime = parseInt(song.currentTime,10);
	  document.getElementById('seek').max = song.duration;
	  document.getElementById('seek').value = curtime;
	}); 
</script>
<script>
$("#Playlists").click(function(){
    $(".hello").html("Top Playlists");
  });
$("#artist").click(function(){
    $(".hello").html("Top Artists");
  });
$("#album").click(function(){
    $(".hello").html("Top Albums");
  });
$("#Contact").click(function(){
    $(".hello").html("Contact Us");
  });
function me(){
	document.getElementById('nav-item1').innerHTML="Customer Care (Toll-Free):0000-0000<br>Email: kagrawal143@gmail.com<br>Insta: _kshitijagrawal_"
}
  function album(){
	  
	  document.getElementById('nav-item1').innerHTML="<%
		try{	
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/javawebapplication","root", "ashu@$$26");  
				Statement stmt = con.createStatement();
				rs = stmt.executeQuery("select distinct(album) from songsdb;");
				while (rs.next()) 
				{  
					
					%><li><%=rs.getString("album")%></li><%
				}
				con.close();
				} catch (Exception e) {
				e.printStackTrace();
				}
				%> ";
	  
  }
function artist(){ 
	  document.getElementById('nav-item1').innerHTML="<%
		try{	
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/javawebapplication","root", "ashu@$$26");  
				Statement stmt = con.createStatement();
				rs = stmt.executeQuery("select distinct(artist) from songsdb;");
				while (rs.next()) 
				{  	
					%><li><%=rs.getString("artist")%></li><%
				}
				con.close();
				} catch (Exception e) {
				e.printStackTrace();
				}
				%> ";
  }
  function home(){
	  location.reload();
  }
</script>
</body>
</html>