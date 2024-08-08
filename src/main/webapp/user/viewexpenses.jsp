<!DOCTYPE html>
<%@page import="com.entity.Expense"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.User"%>
<%@page import="com.db.HibernateUtil"%>
<%@page import="com.dao.ExpenseDao"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <%@include file="../components/all_css.jsp" %>
</head>
<style>
    @import url('https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Raleway:wght@500;600;700&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700;800&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700;800&display=swap');
*{
    font-family: 'Poppins', sans-serif;
}



nav.table{
    width: 1000px;
    height: 35vh;
    background-color: #fff5;

    backdrop-filter: blur(7px);
    box-shadow: 0 .4rem .8rem #0005;
    border-radius: .8rem;
    overflow: hidden;
    position: relative;
    top: 50px;
    left: 185px;
}
.table_header{
    width: 100%;
    height: 20%;
    background-color: #fff4;
    padding: .8rem 1rem;
    display: flex;
    justify-content: center;
    align-items: center;
    font-size: xx-large;
}
.table_body{
    width: 95%;
    max-height: calc(89% - 1.6rem);
    background-color: #fffb;

    margin: .8rem auto;
    border-radius: .6rem;
    overflow: auto;
}
table{
    width: 100%;
}
table, th, td{
    border-collapse: collapse;
    padding: 0.5rem;
    text-align: left;
}
table th{
    position: sticky;
    top: 0;
    /*left: 0;*/
    background-color: #d5d1defe;
}

tbody tr:nth-child(odd){
    background-color: #0000000b;
}
tbody tr:hover{
    background-color: #fff6;
}

input[type="submit"]
{
    font-size: 20px;
    border: none;
    outline: none;
    background: #488ef0;
    padding: 3px;
    margin-top: 0px;
    border-radius: 5px;
    font-weight: 500;
    cursor: pointer;
}

input[type="submit"]:hover{
    background-color: #2172EE;
}

input[type="submit"]:active
{
    background: linear-gradient(90deg,#45f3ff,#d9138a);
    opacity: 0.8;
}

input.delete-button[type="submit"] {
    background-color: rgba(255, 72, 0, 0.938);
}
input.delete-button[type="submit"]:hover {
    background-color: rgba(255, 0, 0, 0.938);
}

input[type="submit"][value="Edit"] {
    color: white;
}

input[type="submit"][value="Delete"] {
    color: white;
}

tbody tr:nth-child(odd){
    background-color: #0000000b;
}
tbody tr:hover{
    background-color: #fff6;
}

</style>
<body>
<c:if test="${empty loginUser }">
		<c:redirect url = "../login.jsp"></c:redirect>
	</c:if>
<%@include file="../components/navbar2.jsp" %>

    <main>
        <nav class="table">
            <section class="table_header">
                <h1>All Expenses</h1>
            </section>
            <section class="table_body">
                <table>
                    <thead>
                        <tr>
                            <th>Title</th>
                            <th>Description</th>
                            <th>Date</th>
                            <th>Time</th>
                            <th>Price</th>
                            <th>Action</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                    <%
                    	User user = (User)session.getAttribute("loginUser");
                    	ExpenseDao dao = new ExpenseDao(HibernateUtil.getSessionFactory());
                    	List<Expense> list = dao.getAllExpenseByUser(user);
                    	for(Expense ex:list){
                    		%>
                    		<tr>
                    		 <td><b><%=ex.getTitle() %></b></td>
                            <td><%=ex.getDescription()%></td>
                            <td><%=ex.getDate()%></td>
                            <td><%=ex.getTime()%></td>
                            <td><%=ex.getPrice()%></td>
                            <td><a href = "editexpenses.jsp?id=<%=ex.getId()%>" class ="btn btn-sm btn-primary me-1">Edit</a>
                            <td><a href = "../deleteExpense?id=<%=ex.getId()%>" class ="btn btn-sm btn-danger me-1">Delete</a>
                            
                        </tr>
                    		<% 
                    	}
                    	
                    %>
                        <tr>
                           
                    </tbody>
                </table>
            </section>
        </nav>


    </main>



    

</body>
</html>