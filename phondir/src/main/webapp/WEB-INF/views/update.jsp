<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isELIgnored="false"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <title>Update</title>
    <style >
    	  div.first{
		  margin-bottom:0px;
    	  }
    	  h1.first{
		  margin-bottom:0px;
		  margin-right: 100px;
		  margin-left: 75px;
		}
		p.second{
		  margin-right: 100px;
		  margin-left: 100px;
		  margin-top:0px;
		  margin-bottom:10px;
		}
		/* visited link */
		a:visited {
  			color: white;
		}

		/* mouse over link */
		a:hover {
  			color: hotpink;
		}
		ul {
		  list-style-type: none;
		  margin: 0;
		  padding: 0;
		  overflow: hidden;
		  background-color: success;
		}
		
		li {
		  float: left;
		}
		
		li a {
		  display: inline-block;
		  color: white;
		  text-align: center;
		  padding: 14px 16px;
		  text-decoration: none;
		}
		
		li a:hover {
		  background-color: #111;
		}
    </style>
  </head>
  <body style="background-color: LightGray">
    <div class="Container bg-success mt-1 " style="height:auto">
    	<div class="container bg-success mt-1 p-2 " style="width:70%">
    		<img  class="float-start rounded-circle " src="${pageContext.request.contextPath}/resources/image/images.jpg" alt="phone-dir" height="75px" width="75px" />
    		<h1 class="first text-white p-2">Grapebits Pvt. Ltd.</h1>
    		<p class="second text-warning">Bengaluru,India</p>
    		<ul>
		  		<li><a href="${pageContext.request.contextPath}/home" class="active">Home</a></li>
		  		<li><a href="${pageContext.request.contextPath}/login">Login</a></li>
		  		<li><a href="${pageContext.request.contextPath}/register">Register</a></li>
		  		<li><a href="${pageContext.request.contextPath}/search">search</a></li>
		  		<li><a href="${pageContext.request.contextPath}/contact">Contact</a></li>
		  		<li><a href="${pageContext.request.contextPath}/about">About</a></li>
			</ul>
    	</div>
    	
    </div>
    <div class="Container mt-0 " style="height:100%">
    	<div class="container bg-white p-3 " style="width:69%;height:100%">
    		<h2 class="text-center">Welcome! to Update Section</h2>
			  <div class="container  bg-success mt-3 card mx-auto" style="width:80%;height:100%">
			  	<div class="card-body">
			  		<h3 class="text-center text-white" style="text-transform:uppercase">Update</h3>
			  		<hr >
			  		<p class="text-center" style="color:white"><b>${msg }</b></p>
				    <form action="${pageContext.request.contextPath}/updateme" method="post">
				    	<div class="form-group mt-5"> 
				    		<label class=" text-white">Id :</label>
				    		<input type="number" name="id" placeholder="Id"
				    				class="form-control" id="id" value="${phone.id }" readonly/>
				    	</div>
				    	<div class="form-group mt-5"> 
				    		<label class=" text-white">Name :</label>
				    		<input type="text" name="name" placeholder="Name"
				    				class="form-control" id="name" value="${phone.name }" required/>
				    	</div>
				    	<div class="form-group mt-5"> 
				    		<label class=" text-white">City :</label>
				    		<input type="text" name="city" placeholder="city"
				    				class="form-control" id="city" value="${phone.city }" required/>
				    	</div>
				    	<div class="form-group mt-5"> 
				    		<label class=" text-white">JOB Post :</label>
				    		<input type="text" name="post" placeholder="post"
				    				class="form-control" id="post" value="${phone.post }" required/>
				    	</div>
				    	<div class="form-group mt-5"> 
				    		<label class=" text-white">Email :</label>
				    		<input type="email" name="email" placeholder="Email"
				    				class="form-control" id="email" value="${phone.email }" required/>
				    	</div>
				    	<div class="form-group mt-5"> 
				    		<label class=" text-white">Phone :</label>
				    		<input type="number" name="phone" placeholder="phone"
				    				class="form-control" id="phone" value="${phone.phone }" required/>
				    	</div>
				    	
				    	<div class="container text-center">
				    			<a href="${pageContext.request.contextPath}/logout" class="btn btn-outline-light mt-5">Logout</a>
				    			<button class="btn btn-outline-light mt-5">Submit</button>
				    	</div>
				    </form>
			  </div>
    	</div>
    </div>
	<div class="first container ">
		<div class="container bg-success p-2 text-white" style="width:81%">
		
		</div>
	</div>
	<div class="copyright_section bg-success  mt-5 p-1">
      <div class="container bg-success mt-5">
         <p class="copyright_text text-center text-white ">Copyright © 2023 Grapebits, All Rights are Reserved</p>
      </div>
   </div>
    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
  </body>
</html>