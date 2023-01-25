<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <title>Dashboard</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style >
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
    	<h2 class="text-center">Welcome!! to Admin Section</h2>
			  <div class="container  bg-success mt-3 card mx-auto" style="width:95%">
			  	<div class="card-body">
			  		<h3 class="text-center text-white" style="text-transform:uppercase">Dashboard</h3>
			  		<hr >
				    	<div class="table-responsive-sm">
						  <table class="table table-hover">
						    	<thead class="thead-dark">
								    <tr>
								      <th scope="col">S.NO.</th>
								      <th scope="col">Name</th>
								      <th scope="col">City</th>
								      <th scope="col">Email</th>
								      <th scope="col">Post</th>
								      <th scope="col">Phone No.</th>
								      <th scope="col">Action</th>
								    </tr>
								  </thead>
								  	<c:forEach var="item" items="${list}">
								  	<tbody>
								  		<tr>
								  			<td style="color:white">${item.id }</td>
								  			<td style="color:white">${item.name }</td>
								  			<td style="color:white">${item.city }</td>
								  			<td style="color:white">${item.email }</td>
								  			<td style="color:white">${item.post }</td>
								  			<td style="color:white">${item.phone }</td>
								  			<td>
								  				<a href="${pageContext.request.contextPath}/del/${item.id }"><i class="fa-solid fa-trash text-danger" style="font-size: 20px"></i></a>
	    										<a href="${pageContext.request.contextPath}/upd/${item.id }"><i class="fa-solid fa-pen-nib text-warning" style="font-size: 20px"></i></a>
								  			</td>
								  		</tr>
								  		</tbody>
								  	</c:forEach>
						  </table>
						</div>
			  </div>
			  <div class="container mx-auto text-center">
				<a href="${pageContext.request.contextPath}/insert" class="btn btn-outline-light mt-5">Insert</a>
				<a href="${pageContext.request.contextPath}/logout" class="btn btn-outline-light mt-5">Logout</a>
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
</body>
</html>