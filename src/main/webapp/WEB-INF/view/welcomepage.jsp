<!DOCTYPE html >
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix ="c" %>
<html>
<head><!--
Fitness Template
http://www.templatemo.com/tm-487-fitness
-->
<title>Fitness - Responsive HTML Template</title>
<meta name="description" content="">
<meta name="author" content="">
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="static/css/bootstrap.min.css" rel="stylesheet">
<link href="static/css/style.css" rel="stylesheet">


<!--  
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">-->

<!-- Optional theme 
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">  -->

<!-- Latest compiled and minified JavaScript 
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>-->
<!-- Main css -->


<!-- Google Font -->
<link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,300,600' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Lora:700italic' rel='stylesheet' type='text/css'>
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
tasksDiv{
background-color:"#FFFFFF";
color:"#FFFFFF";
}
</style>
</head>
<body bgcolor="#E6E6FA">
<div role="navigation">
		<div class="navbar navbar-inverse">
			<a href="/welcome" class="navbar-brand">Home</a>
			
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li><a href="/login">Login</a></li>
					<li><a href="/register">New Registration</a></li>
			<!-- 		<li><a href="/show-users">All Users</a></li>  -->
				</ul>
			</div>
		</div>
	</div>
	<c:choose>
	<c:when test="${mode=='MODE_HOME' }">
	<div class="container" id="homediv">
		<div class="jumbotron text-center" id="home">
			<div class="row">

<div class="col-md-6 col-sm-12">


<blockquote class="wow fadeInUp" data-wow-delay="1.9s">"Fitness is not about being better than someone else, fitness is about being what you used to be".</blockquote>
</div>

<div class="col-md-1"></div>

<div class="wow fadeInUp col-md-4 col-sm-12" data-wow-delay="1s">
<div class="overview-detail">
<h2>About Fitness</h2>
<p>One Stop for a healthier life<a href="blog-single.html"></a>.</p>
<a href="https://www.google.com" class="btn btn-default smoothScroll">Let us begin</a>
</div>
</div>

<div class="col-md-1"></div>

</div>

			<h1 class="wow fadeInUp" data-wow-delay="1.6s">Health Care Analytics</h1>
			<h3> </h3>
		</div>
		</div>

	</c:when>
	<c:when test="${mode=='MODE_REGISTER' }">
		<div class="container text-center">
		<h3>New Registration</h3>
		<hr>
		<form class="form-horizontal" method="POST" action="save-user">
			<input type="hidden" name="id" value="${user.id }" />
			<div class="form-group">
				<label class="control-label col-md-3">Username</label>
				<div class="col-md-7">
					<input type="text" class="form-control" name="username"
						value="${user.username }" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-md-3">First Name</label>
				<div class="col-md-7">
					<input type="text" class="form-control" name="firstname"
						value="${user.firstname }" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-md-3">Last Name</label>
				<div class="col-md-7">
					<input type="text" class="form-control" name="lastname"
						value="${user.lastname }" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-md-3">Age </label>
				<div class="col-md-3">
					<input type="text" class="form-control" name="age"
						value="${user.age }" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-md-3">Email Id </label>
				<div class="col-md-3">
					<input type="text" class="form-control" name="email"
						value="${user.email }" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-md-3">Password</label>
				<div class="col-md-7">
					<input type="password" class="form-control" name="password"
						value="${user.password }" />
				</div>
			</div>
				<div class="form-group">
				<label class="control-label col-md-3">role</label>
				<div class="col-md-7">
					<input type="text" class="form-control" name="role"
						value="${user.role }" />
			
			
				</div>
			</div>
			<div class="form-group ">
				<input type="submit" class="btn btn-primary" value="Register" />
			</div>
		</form>
	</div>
	</c:when>
	<c:when test="${mode=='ALL_USERS' }">
	<div class="container text-center" id="tasksDiv">
				<h3>All Users</h3>
				<hr>
				<div class="table-responsive">
					<table class="table table-striped table-bordered" id="user2">
						<thead>
							<tr>
								<th>Id</th>
								<th>UserName</th>
								<th>First Name</th>
								<th>LastName</th>
								<th>Age</th>
								<th>Email</th>
								<th>Delete</th>
								<th>Edit</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="user" items="${users }">
								<tr>
									<td>${user.id}</td>
									<td>${user.username}</td>
									<td>${user.firstname}</td>
									<td>${user.lastname}</td>
									<td>${user.age}</td>
									<td>${user.email}</td>
								
							<td><a href="/delete-user?id=${user.id }">Delete</a></td>
							<td> <a href="/edit-user?id=${user.id }">Edit</a></td>
									</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
			</c:when>
			
			<c:when test="${mode=='MODE_LOGIN'}">
		<div class="container text-center">
		<h3>User login</h3>
		<hr>
		<form class="form-horizontal" method="POST" action="/login-user">
			<c:if test="${not empty error} " >
			<div class="alert alert-danger"><h2>Error</h2>
			<c:out value="${error}"></c:out>
			</div>
			</c:if>
			<div class="form-group">
				<label class="control-label col-md-3">Username</label>
				<div class="col-md-7">
					<input type="text" class="form-control" name="username"
						value="${user.username }" />
				</div>
			</div>
				<div class="form-group">
				<label class="control-label col-md-3">Password</label>
				<div class="col-md-7">
					<input type="password" class="form-control" name="password"
						value="${user.password }" />
				</div>
			</div>
		  
			<div class="form-group">
			<input type="submit" class="btn-btn-primary" value="Login" />
			</div>
			</form>
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