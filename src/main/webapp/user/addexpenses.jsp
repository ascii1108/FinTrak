<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <%@include file="../components/all_css.jsp" %>
</head>
<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: 'Poppins', sans-serif;
    }

    body {
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
        background: #23242a;
        margin: 0;
        padding: 0;
    }

    .container {
        display: flex;
        flex-direction: column;
        align-items: auto;
        width: 100%;
    }

    .box {
        position: relative;
        width: 370px;
        height: 650px;
        background: #1c1c1c;
        border-radius: 50px 5px;
        overflow: hidden;
        margin-top: 20px;
        left: 420px; 
    }

    .box::before {
        content: '';
    position: absolute;
    top: -50%;
    left: -50%;
    width: 370px;
    height: 450px;
    background: linear-gradient(60deg,transparent,#45f3ff,#45f3ff);
    transform-origin: bottom right;
    animation: animate 2s linear infinite;
}


    .box::after {
      content: '';
    position: absolute;
    top: -50%;
    left: -50%;
    width: 370px;
    height: 450px;
    background: linear-gradient(60deg,transparent,#d9138a,#d9138a);
    transform-origin: bottom right;
    animation: animate 2s linear infinite;
    animation-delay: 3s;
}

@keyframes animate 
{
    0%
    {
        transform: rotate(0deg);
    }
    100%
    {
        transform: rotate(360deg);
    }
}

    form {
        position: absolute;
        inset: 2px;
        border-radius: 50px 5px;
        background: #28292d;
        z-index: 10;
        padding: 30px 30px;
        display: flex;
        flex-direction: column;
    }

    h2 {
        color: #45f3ff;
        font-size: 35px;
        font-weight: 500;
        text-align: center;
    }

    .inputbox {
        position: relative;
        width: 300px;
        margin-top: 35px;
    }

   .inputbox input{
    position: relative;
    width: 100%;
    padding: 20px 10px 10px;
    background: transparent;
    border: none;
    outline: none;
    color: #28292d;
    font-size: 1em;
    letter-spacing: 0.05em;
    z-index: 10;
}
input[type="submit"]
{
    font-size: 20px;
    border: none;
    outline: none;
    background: #45f3ff;
    padding: 5px;
    margin-top: 40px;
    border-radius: 90px;
    font-weight: 600;
    cursor: pointer;
}
input[type="submit"]:active
{
    background: linear-gradient(90deg,#45f3ff,#d9138a);
    opacity: 0.8;
}

.inputbox span{
    position: absolute;
    left: 0;
    padding: 20px 10px 10px;
    font-size: 1em;
    color: #8f8f8f;
    pointer-events: none;
    letter-spacing: 0.05em;
    transition: 0.5s;
}

.inputbox input:valid ~ span,
.inputbox input:focus ~ span
{
    color: #45f3ff;
    transform: translateX(-10px) translateY(-30px);
    font-size: 0.75em;
}

.inputbox i{
    position: absolute;
    left: 0;
    bottom: 0;
    width: 100%;
    height: 2px;
    background: #45f3ff;
    border-radius: 4px;
    transition: 0.5s;
    pointer-events: none;
    z-index: 9;
}
.inputbox input:valid ~ i,
.inputbox input:focus ~ i
{
    height: 44px;
}
.links{
    display: flex;
    justify-content: space-between;
}
.links a{
    margin: 25px 0;
    font-size: 1em;
    color: #8f8f8f;
    text-decoration: none;
}

.links a:hover,
.links a:nth-child(2)
{
    color: #45f3ff;
}
.links a:nth-child(2):hover
{
    text-decoration: underline 2px;
    text-underline-offset: 5px;
}

</style>
<body>

	<c:if test="${empty loginUser }">
		<c:redirect url = "../login.jsp"></c:redirect>
	</c:if>
    <div class="container">
        <%@include file="../components/navbar2.jsp" %>
        <div class="box">
            <form action="../saveExpense" method="post">
                <h2>Add Expense</h2>
                <div class="inputbox">
                <input type="text" name="title" required>
                <span>Title</span>
                <i></i>
            </div>
            <div class="inputbox">
                <input type="date" onclick="myFunction()" id="myDate" name="date" min="2023-01-01" max="2024-01-06" required>
                <span>Date</span>
                <i></i>
            </div>
            <div class="inputbox">
                <input type="time" name="time" required>
                <span>Time</span>
                <i></i>
            </div>
            <div class="inputbox">
                <input type="text" name="description" required>
                <span>Description</span>
                <i></i>
            </div>
            <div class="inputbox">
                <input type="number" name="price" required>
                <span>Price</span>
                <i></i>
            </div>
            <input type="submit" value="Add">
            </form>
        </div>
    </div>
</body>
<script>
function myFunction(){
	let x = document.getElementById("myDate").max;
	document.getElementById("demo").innerHTML = x;
}
</script>
</html>
