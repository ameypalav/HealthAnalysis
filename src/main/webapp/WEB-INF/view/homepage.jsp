<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
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
<body>
<div role="navigation">
		<div class="navbar navbar-inverse">
			<a href="/home" class="navbar-brand">Health Analysis</a>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
				
					<li><a href="/event">Event Registration</a></li>
				 	<li><a href="/show-users">All Users</a></li> 
				<li> <a href ="/show-events"> All Events</a></li>
				</ul>
				<div class="nav navbar-nav navbar-right">
               <a href="/logout" class="navbar-brand"><strong>Logout</strong></a>
            </div>
			</div>
		</div>
	</div>
	<c:choose>
	
	<c:when test="${mode=='EVENT_HOME' }">
	<div class="container" id="homediv">
		<div class="jumbotron text-center">
			<h1>Health Analytics</h1>
			
		</div>
		</div>
		
		</c:when>
	
	<c:when test="${mode=='EVENT_REGISTER' }">
		<div class="container text-center">
		<h3>New Registration</h3>
		<hr>
		<form class="form-horizontal" method="POST" action="/save-event">

			<div class="form-group">
				<label class="control-label col-md-3">Event Name</label>
				<div class="col-md-7">
					<input type="text" class="form-control" name="eventname"
						value="${event.eventname }" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-md-3">Event Description</label>
				<div class="col-md-7">
					<input type="text" class="form-control" name="eventdesc"
						value="${event.eventdesc }" />
				</div>
			</div>
			
			<div class="form-group ">
				<input type="submit" class="btn btn-primary" value="Register" />
			</div>
	</div>
	</c:when>
	
	
	
	
	
	</c:choose>	
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="static/js/jquery-1.11.1.min.js"></script>
	<script src="static/js/bootstrap.min.js"></script>
		
	<div class="footer">
<footer>Copyright &copy; healthanalytics.com</footer>
	</div>
	
	
</body>
</html>