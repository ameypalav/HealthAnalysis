<!DOCTYPE html >
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix ="c" %>
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
user2 {
background-color:"#FFFFFF";
color:"#FFFFFF";
}

</style>

</head>
<body>
<div role="navigation">
		<div class="navbar navbar-inverse">
			<a href="/logout" class="navbar-brand">Health Analysis</a>
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

<c:when test="${mode=='MODE_UPDATE' }">
		<div class="container text-center">
		<h3>Update User</h3>
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
			<div class="form-group ">
				<input type="submit" class="btn btn-primary" value="Update" />
			</div>
		</form>
	</div>
	</c:when>

</c:choose>

<div class="footer">
<footer>Copyright &copy; healthanalytics.com</footer>
	</div>

</body>
</html>