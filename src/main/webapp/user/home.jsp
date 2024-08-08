<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="../components/all_css.jsp" %>

<style>
        @import url('https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Raleway:wght@500;600;700&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700;800&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700;800&display=swap');
*{
    font-family: 'Poppins', sans-serif;
}
body
{
    background-repeat: no-repeat  ;
    background-size: cover;
    min-height: 100vh;
}
.top
{
    margin-top: 100px;
    margin-left: 20px;
    color: white;
    font-size: 100px;
}
.parbody
{
	
    position: fixed;
    margin-left: 20px;
    margin-top: -50px;
    color: white;
    font-size: 20px;
}
    </style>
    </head>
<body background="../img/bank-piggy.jpeg">
<%@include file="../components/navbar2.jsp" %>
 <div class="top">
<p>FinTrak</p>
 </div>
 <div class = " parbody"> <p>Tracks your finances and converts your currency </p> </div>
</body>
</html>