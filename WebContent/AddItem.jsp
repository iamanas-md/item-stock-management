<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
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

    <title>List Items</title>
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

    <div align="center">
    
    <h1 style="color:orange" > ADD RECORD </h1>
    <h1>ITEM STOCK MANAGEMENT</h1>
    
<form action="ItemController" method="post">
<input type="hidden" name="command" value="ADD">
<table>
<tbody>
<tr>
<td> Item Name : </td>
<td> <input type="text" name="itemName" required="required" placeholder="Enter Item Name" > </td>
</tr>


<tr>
<td> Unit :</td>
<td><input type="text" name="unit" required = "required" placeholder="Eg- ml,mg,pcs"></td>
</tr>
<tr>
<td> Beginning Inventory :</td>
<td><input type="number" name="beginningInventory" required = "required" placeholder="Enter Number"></td>
</tr>

<tr>
<td> Quantity On Hand : </td>
<td> <input type="number" name="quantityOnHand" required = "required" placeholder="Enter Number" > </td>
</tr>
<tr>
<td> Price Per Unit : </td>
<td> <input type="number" name="pricePerUnit" required="required" placeholder="Enter Price" min="0"> </td>
</tr>
<tr>
<td> Date of Manufacture :</td>
<td><input type="date" name="dateOfManufacture" required = "required"></td>
</tr>
<tr>
<td> Date Of Expiry : </td>
<td> <input type="date" name="dateOfExpiry" required="required" placeholder="Enter Date Of Expiry" > </td>
</tr>
<tr>
<td> Location :</td><td>
 <select name="location">
<option>Bulk Zone</option>
<option>Pick Zone</option>
<option>Distribution Center</option>
</select> 
</td>



</tr>
<tr>
<td> Category : </td>
<td>
 <select name="itemCategory">
<option>Pharma Drug</option>
<option>Health and Personal Care</option>
<option>Baby Care</option>
<option>Medical Supplies and Equipments</option>
</select> 
</td>

</tr>
<tr>
<td><label></label></td>
<td><button type="submit" class="btn btn-primary btn-lg">Add Item</button></td>
</tr>
</tbody>
</table>
</form>
           
           <form action="ItemController">
            
            
            <button type="submit" class="btn btn-secondary btn-lg">Back to List</button>
    </form>
    
    
    

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
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