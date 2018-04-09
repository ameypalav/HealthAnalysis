<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body {
    background-color: white;
    height: 150%;
}

footer {
    padding: 1em;
    color: white;
       bottom: 30px;
       position: fixed;
    background-color: black;
    clear: left;
    text-align: center;
      width: 100%;
}
html {
    position: relative;
    min-width: 1024px;
    min-height: 768px;
    
}
home {
    height: 800px;
    width: 50%;
    background-color: powderblue;
}
user2{
 background-color: white;
 color:"#FFFFFF";
}

</style>

</head>
</head>
<body>
<div role="navigation">
		<div class="navbar navbar-inverse">
			<a href="user1" class="navbar-brand"> HEALTH ANALYSIS</a>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
				
				
				<li> <a href ="/show-events1234"> All Events</a></li>
				 
				</ul>
				
				<div class="nav navbar-nav navbar-right">
               <a href="/logout" class="navbar-brand"><strong>Logout</strong></a>
            </div>
            <div class="nav navbar-nav navbar-right">
               <a class="navbar-brand" href="#"  >
            <span class=" glyphicon glyphicon-dashboard"></span>
      COINS  ${user.coin}</a>
            </div>
			</div>
		</div>
	</div>
	<center><h1> Hello  ${user.username}</h1></center>
	
	<center><img src="static/images/amey.jpg" class="img-responsive" alt="Overview" height="300" width="300"></center>
		
 <p> .</p>
</body>
</html>