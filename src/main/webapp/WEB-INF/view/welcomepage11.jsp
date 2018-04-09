<!DOCTYPE html>
<html lang="en">
<head>
<!--
Fitness Template
http://www.templatemo.com/tm-487-fitness
-->
<title>Welcome to healthcare analysys</title>
<meta name="description" content="">
<meta name="author" content="">
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">


<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/animate.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/owl.theme.css">
<link rel="stylesheet" href="css/owl.carousel.css">
<link rel="stylesheet" href="css/Login.css">
    

<!-- Main css -->
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Google Font -->
<link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,300,600' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Lora:700italic' rel='stylesheet' type='text/css'>

</head>
<body data-spy="scroll" data-target=".navbar-collapse" data-offset="50">


<!-- =========================
     PRE LOADER       
============================== -->
<div  class="preloader">

	<div class="sk-spinner sk-spinner-pulse"></div>

</div>


<!-- =========================
    NAVIGATION SECTION   
============================== -->
<div class="navbar navbar-default navbar-fixed-top sticky-navigation" role="navigation">
	
		<div class="navbar-header">
			<button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="icon icon-bar"></span>
				<span class="icon icon-bar"></span>
				<span class="icon icon-bar"></span>
			</button>
			<a href="#" class="navbar-brand">Health Care Analytics</a>
		</div>
		<div class="collapse navbar-collapse">
			<ul class="nav navbar-nav navbar-right main-navigation">
				<li><a href="#home" class="smoothScroll">Home</a></li>
				<li><a href="#overview" class="smoothScroll">About</a></li>
				<li><a href="#trainer" class="smoothScroll">Trainers</a></li>
                <li><a href="#blog" class="smoothScroll">Events</a></li>
                <li><a href="/login">Login</a></li>
                <li><a href="/register">New Registration</a></li>
                <li><a href="/show-users">All Users</a></li>
				<!--<li><a href="#price" class="smoothScroll">Prices</a></li>
				<li><a href="#testimonial" class="smoothScroll">Testimonials</a></li>-->
			</ul>
		</div>

	</div>
</div>

  <c:choose>

              <c:when test="${mode=='MODE_HOME' }">

       <!--       <div class="container" id="homediv">

                          

<!-- =========================
    HOME SECTION   
============================== -->
<section id="home" class="parallax-section">
	<div class="container">
		<div class="row">

			<div class="col-md-offset-1 col-md-10 col-sm-12">
				<h3 class="wow bounceIn" data-wow-delay="0.9s">Hello! you are welcome to</h3>
				<h1 class="wow fadeInUp" data-wow-delay="1.6s">Health Care Analytics</h1>
				<!--<a href="#overview" class="wow fadeInUp smoothScroll btn btn-default" data-wow-delay="2s">LEARN MORE</a>-->
			</div>

		</div>
	</div>
</section>

<!-- =========================
    OVERVIEW SECTION   
============================== -->
<section id="overview" class="parallax-section">
<div class="container">
<div class="row">

<div class="col-md-6 col-sm-12">
<img src="images/overview-img.jpg" class="img-responsive" alt="Overview">
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
</div>
</section>

    <!-- =========================
    TRAINER SECTION   
============================== -->


    <!-- =========================
    BLOG SECTION   
============================== -->


    
<!-- =========================
     SCRIPTS   
============================== -->
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.parallax.js"></script>
<script src="js/jquery.nav.js"></script>
<script src="js/jquery.backstretch.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/smoothscroll.js"></script>
<script src="js/wow.min.js"></script>
<script src="js/custom.js"></script>
<script src="js/Login.js"></script>



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

                                                                    <table class="table table-striped table-bordered">

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

                                                       <label class="control-label col-md-3">Role</label>

                                                       <div class="col-md-7">

                                                                    <input type="text" class="form-control" name="role"

                                                                                  value="${user.role}" />

                                                       </div>

                                         </div>

                                         <div class="form-group">

                                         <input type="submit" class="btn-btn-primary" value="Login" />

                                         </div>

                                         </form>

                                         </div>

                                         </c:when>

</c:choose>    

<script src="static/js/jquery-1.11.1.min.js"></script>
	<script src="static/js/bootstrap.min.js"></script>


</body>

                                       <!--  <h1>Health Analysis</h1>-->

                                      

                        



</html>