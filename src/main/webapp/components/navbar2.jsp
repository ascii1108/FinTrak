<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
 
<nav class="navbar navbar-expand-lg navbar-light" style="background-color: #ffb4a4;">
  <div class="container-fluid">
    <a class="navbar-brand" href="../user/home.jsp">FinTrak</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
    
      <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
     
				 <li class="nav-item">
          <a class="nav-link active" href="../currency.jsp"><i class="fa-solid fa-indian-rupee-sign"></i> Currency</a>
        </li>
         
        <li class="nav-item dropdown">
          <a class="nav-link active dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fa-solid fa-money-check"></i>
             Expenses
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="../user/addexpenses.jsp">Add Expenses</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="../user/viewexpenses.jsp">View Expenses</a></li>
          </ul>
        </li>
        <li class="nav-item">
          <a class="nav-link active" > <i class="fa-solid fa-user"></i> ${loginUser.username}</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="../logout" > <i class="fa-solid fa-user-minus"></i> Logout</a>
        </li>
			
      </ul>
      
    </div>
  </div>
</nav>