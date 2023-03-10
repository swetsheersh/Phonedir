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

    <title>Registered</title>
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
    		<img  class="float-start rounded-circle " src="./resources/image/images.jpg" alt="phone-dir" height="75px" width="75px" />
    		<h1 class="first text-white p-2">Grapebits Pvt. Ltd.</h1>
    		<p class="second text-warning">Bengaluru,India</p>
    		<ul>
		  		<li><a href="./home" class="active">Home</a></li>
		  		<li><a href="./login">Login</a></li>
		  		<li><a href="./register">Register</a></li>
		  		<li><a href="./search">search</a></li>
		  		<li><a href="./contact">Contact</a></li>
		  		<li><a href="./about">About</a></li>
			</ul>
    	</div>
    	
    </div>
    <div class="Container mt-0 " style="height:100%">
    	<div class="container bg-white p-3 " style="width:69%;height:100%">
    		<h2 class="text-center">Registered Successfully!!</h2>
			  <div class="container  bg-success mt-3 card mx-auto" style="width:80%;height:100%">
			  	<div class="card-body">
			  		<h3 class="text-center text-white" style="text-transform:uppercase">welcome!! Login to explore the Magic!</h3>
			  		<hr >
			  		<h2 class="text-center" style="color:white">Username : <b>${msg }</b></h2>
			  		<h2 class="text-center" style="color:white">Password : <b>${msg1 }</b></h2>
				    <div class="container text-center">
				    			<a href="./login" class="btn btn-outline-light mt-5">Login</a>
				    </div>
			  </div>
    	</div>
    </div>
	<div class="first container ">
		<div class="container bg-success p-2 text-white" style="width:81.25%">
		
		</div>
	</div>
	<div class="copyright_section bg-success   p-1" style="margin-bottom:0px;margin-top:150px">
      <div class="container bg-success " style="margin-bottom:0px;margin-top:0px">
         <p class="copyright_text text-center text-white ">Copyright ? 2023 Grapebits, All Rights are Reserved</p>
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