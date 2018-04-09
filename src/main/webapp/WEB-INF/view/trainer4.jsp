<!DOCTYPE html >
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix ="c" %>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="sat, 01 Dec 2001 00:00:00 GMT">
<title>Health-analysis | home</title>
<link href="static/css/bootstrap.min.css" rel="stylesheet">
<link href="static/css/style.css" rel="stylesheet">
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
	<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
background-color:"#FFFFFF";
}
.container {
  width: 500px;
  clear: both;
}

.container input {
  width: 100%;
  clear: both;
}
</style>

</head>
<body>
<div role="navigation">
		<div class="navbar navbar-inverse">
			<a href="/logout" class="navbar-brand"> Health Analysis</a>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
				
					<li><a href="/events456">Event Registration</a></li>
				<!--  	<li><a href="/show-users">All Users</a></li> -->
				<li> <a href ="/show-event"> All Events</a></li>
				<li> <a href ="/show-user123"> All Users</a></li>
				<li><a href ="/show-user1234"> Donate Coins</a></li>
				
				</ul>
				<div class="nav navbar-nav navbar-right">
               <a href="/logout" class="navbar-brand"><strong>Logout</strong></a>
            </div>
			</div>
		</div>
	</div>
	
<c:choose> 

	<c:when test="${mode=='ALL_USERS2' }">
	<div class="container text-center" id="tasksDiv">
			<form:form action="/Calories" method="Post" modelAttribute="user">
			
		
		<label>NAME:	<select name="username">
     <c:forEach var="user" items="${users}">
          <option><c:out value="${user.username}"/></option>
     </c:forEach>
</select> </label>


	<div class="container">
		<div class="form-group">
		<label for="formGroupExampleInput"><B>Date</B></label><br>
		<input type="date" name="date" value="" placeholder=""  size="45"><br>
		</div>
		<div class="form-group">
		<label for="formGroupExampleInput"><B>Weight Lifting</B></label><br>
		<input type="text" name="wl" value="user.wl" placeholder="Enter calories burn by Weight Lifting "  size="45"><br>
		</div>
		<div class="form-group">
		<label for="formGroupExampleInput"><B>YOGA</B></label><br>
		<input type="number" name="yoga" value="user.yog" placeholder="Enter calories burn by YOGA"  size="45"><br>
		</div>
		<div class="form-group">
		<label for="formGroupExampleInput"><B>Elliptical</B></label><br>
		<input type="number" name="ell" value="user.el" placeholder="Enter calories burn by Elliptical"  size="45"><br>
		</div>
		<div class="form-group">
		<label for="formGroupExampleInput"><B>Cycling</B></label><br>
		<input type="number" name="cyc" value="user.cyc" placeholder="Enter calories burn by Cycling"  size="45"><br>
		</div>
		<div class="form-group">
		<label for="formGroupExampleInput"><B>Walking</B></label><br>
		<input type="number" name="wal" value="user.wal" placeholder="Enter calories burn by Walking"  size="45"><br>
		</div>
		<div class="form-group">
		<label for="formGroupExampleInput"><B>Jogging</B></label><br>
		<input type="number" name="jog" value="user.jog" placeholder="Enter calories burn by Jogging"  size="45"><br>
		</div>
		<div class="form-group">
		<label for="formGroupExampleInput"><B>Running</B></label><br>
		<input type="number" name="run" value="user.run" placeholder="Enter calories burn by Running"  size="45"><br>
		</div>
		<div class="form-group">
		<label for="formGroupExampleInput"><B>Swimming</B></label><br>
		<input type="number" name="swim" value="user.swim" placeholder="Enter calories burn by Swimming"  size="45"><br>
		</div>
	
	<input type="submit" value="submit">
</div>

			</form:form>
		 </div>
		 
			</c:when>
	
</c:choose> 
<script src="static/js/jquery-1.11.1.min.js"></script>
	<script src="static/js/bootstrap.min.js"></script>

	

	

</body>
</html>