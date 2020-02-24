<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html">
<html>
<head>
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

<title>List Items</title>
 <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body>
<div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">



<% response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");%>


<div class="container">
<nav class="navbar navbar-expand-sm navbar-dark bg-dark p-0">
    <div class="container">
      <a href="ItemController" class="navbar-brand">ABS Pharma</a>
      <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarNav">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
          <li class="nav-item px-2">
            <a href="ItemController" class="nav-link active">Home</a>
          </li>
             
        </ul>

        <ul class="navbar-nav ml-auto">
        
           <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="fa fa-user-times"></i> 
            </a>
          </li>
          
          <li class="nav-item mr-3">
            <a href="#" class="nav-link">
              <i class="fa fa-user"></i> Welcome: ${user.firstName}
            </a>
           
          </li>
          <li class="nav-item">
            <a href="UserController?command=LOGOUT" class="nav-link">
              <i class="fa fa-user-times"></i> Log Out
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
         <img src="images/a.jpg" width="100" height="100" class="rounded float-left" alt="sanjeev"> <h1>Item Stock Management</h1>
        </div>
      </div>
    </div>
  </header>
  </div>
  
  
  
 <div class="container mt-3 mb-3">
  
 
	<form action="AddItem.jsp">

	<button type="submit" class="btn btn-primary">Add Item</button>

	</form>
	
	<form class="form-inline my-2 my-lg-0" action="ItemController">
	<input type="hidden" name="command" value="SEARCH">
      <input class="form-control mr-sm-2" type="search" name="searchName" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
    
	</div>
	
	<div class="container">
<table class="table table-hover">
<thead class="bg-primary text-white">
				<tr>
					<th>Item Name</th>
					<th>Unit</th>
					<th>Quantity On Hand</th>
					<th>Price Per Unit</th>
					<th>Date Of Expiry</th>
					<th>Location</th>
					<th>Action</th>
					</tr>
					</thead>
    <tbody>
				<c:forEach var="tempItem" items="${item_list}">
				
				<c:url var = "updateLink" value="ItemController" >
				<c:param name="command" value = "LOAD"/>
				<c:param name="itemCode" value ="${tempItem.itemCode }"/>
				</c:url>
				
				
				<c:url var = "deleteLink" value="ItemController" >
				<c:param name="command" value = "DELETE"/>
				<c:param name="itemCode" value ="${tempItem.itemCode }"/>
				
				
				</c:url>
				
				
				<tr>
				<td> ${tempItem.itemName}</td>
				<td>${tempItem.unit}</td>
				<td> ${tempItem.quantityOnHand}</td>
				<td> ${tempItem.pricePerUnit}</td>
				<td> ${tempItem.dateOfExpiry}</td>
				<td> ${tempItem.location}</td>
				<td> <a href="${updateLink}">Update</a>
				&nbsp; | &nbsp;
				 <a href="${deleteLink}" onclick="if(!(confirm('Are you sure you want to delete this item')))return false">Delete</a>
				  </td>
				</tr>
				
					
				</c:forEach>
				
				</tbody>
			</table>
			</div>
			</div>
</body>
</html>