<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<style>
html,
body {
  height: 100%;
  background-color: #333;
}

body {
  display: -ms-flexbox;
  
  color: #fff;
  text-shadow: 0 .05rem .1rem rgba(0, 0, 0, .5);
  box-shadow: inset 0 0 5rem rgba(0, 0, 0, .5);
}


</style>
<title>Stock Management</title>
</head>
<body>
<div class="container">
<nav class="navbar navbar-expand-sm navbar-dark bg-dark p-0">
    <div class="container">
      <a href="index.jsp" class="navbar-brand">Stock Management</a>
      <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarNav">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
          <li class="nav-item px-2">
            <a href="#" class="nav-link active">Dashboard</a>
          </li>
             
        </ul>

        <ul  class="navbar-nav ml-auto">
          <li  class="nav-item">
            
           
          </li>
          <li class="nav-item">
            <a href="registration.jsp" class="nav-link">
              <i class="fa fa-user-times"></i> Sign Up
            </a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
</div>

<div class="container">
<header id="main-header" class="py-2 bg-warning text-white">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
         <img src="images/pharmacy.jpg" width="250" height="170" class="rounded float-left" alt="anas"> <h1>Item Stock Management</h1>
        </div>
      </div>
    </div>
  </header>
  </div>
  </br>
  
  <div align="center"container">
  <h2>Log In Form</h2>
  
  <form action="UserController" method="post">
  <input type="hidden" name = "command" value="USER"/>
  <%
  	String msg = (String)request.getAttribute("msg");
  if(msg != null){
	  %>
	  <h4 style="color: green;"> <%=msg%> </h4>
  <%
  }
  %>
<table>
<tr>

<td> User ID :</td><td> <input type="text" name="userId"> </td>

</tr>

<tr>

<td> Password :</td><td> <input type="password" name="password"> </td>

</tr>
<tr>

<td colspan="2"> </br> <button type="submit" class="btn btn-primary">Log In</button>  </td>

</tr>
</table>


</form>
  
  </div>
  
  <!-- FOOTER -->
   <div class="container">
  <footer id="main-footer" class="bg-dark text-white mt-5 p-5">
    <div class="container">
      <div class="row">
        <div class="col">
          <p class="lead text-center">
            Copyright &copy;
            <span id="year"></span>
            ABS Pharma
          </p>
        </div>
      </div>
    </div>
  </footer>
  </div>
  
    
    

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
 </body>
</html>