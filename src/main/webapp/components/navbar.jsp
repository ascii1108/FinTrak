<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
 
<nav class="navbar navbar-expand-lg navbar-light" style="background-color: #ffb4a4;">
  <div class="container-fluid">
    
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
    
      <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
      
      
      	<c:if test="${not empty loginUser} ">
			
				 <li class="nav-item">
          <a class="nav-link active" href="expenses.jsp">Expenses</a>
        </li>
         <li class="nav-item">
          <a class="nav-link active" href="Debt.jsp">Debt</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link active dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Currency
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="#">Dollars</a></li>
            <li><a class="dropdown-item" href="#">Euros</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
        </li>
        <li class="nav-item">
          <a class="nav-link" >${loginUser.username}</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" >Logout</a>
        </li>
			</c:if>
        
        
        <li class="nav-item">
          <a class="nav-link active" href="login.jsp"><i class="fa-solid fa-right-to-bracket"></i> Login</a>
          <li class="nav-item active">
          <a class="nav-link active" href="signup.jsp"><i class="fa-solid fa-user-plus"></i> Signup</a>
        </li>
        
      </ul>
      
    </div>
  </div>
</nav>