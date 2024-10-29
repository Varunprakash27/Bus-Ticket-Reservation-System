<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thanks</title>
<style>


.main
{
text-align:center;
font-size:30px;
margin-left:31.5vw;
margin-top:4vh;

}

table,td,tr
{
padding:12px;
}

h1
{
margin-top:-1.5vh;
text-align:center;
font-size:50px;
font-family:cursive;
}
.h2
{
padding:2px;
width:25vw;
height:52px;
background-color:black;
margin-top:vh;
color:white;
margin-left:37vw;
}

.headder
{
border:1px solid black;
height:55px;
background-color:rgba(230, 42, 42, 0.904);
margin-top:-1vh;
}

.footer
{
position:absolute;
border:1px solid black;
height:45px;
background-color:rgba(230, 42, 42, 0.904);
margin-top:8vh;
width:99vw;
}

.f2
{
margin-left:43vw;
color:white;
margin-top:-1vh;
}

img
{
height:17px;
background-color:white;
height:3.5vh;

}

img:hover
{
height:19px;
}

#home
{
margin-left:47vw;
border:0;
background-color:white;
margin-top:3vh;
}


</style>
</head>
<body>
<%@ page import="java.sql.*" %>

<%
int ticket_num=(int)session.getAttribute("ticket_number");
ticket_num+=1;



String name=(String)session.getAttribute("name");
String mob_num=(String)session.getAttribute("mob_num");
String boarding=(String)session.getAttribute("boarding");
String deboarding=(String)session.getAttribute("deboarding");
String date=(String)session.getAttribute("date");
String bn=(String)session.getAttribute("bus_num");

%>

<div class="headder">
<div class="h2">
	<h1>Ticket</h1>
</div>
</div>

<div class="main">

<table>
<tr>
<td>Ticket-Number</td>
<td>&nbsp; : &nbsp;</td>
<td> <%= ticket_num %> </td>
</tr>

<tr>
<td>Name</td>
<td>&nbsp; : &nbsp;</td>
<td><%= name %></td>
</tr>


<tr>
<td>Date</td>
<td>:</td>
<td><%= date %></td>
</tr>

<tr>
<td>Rout_Number</td>
<td>&nbsp; : &nbsp;</td>
<td><%= bn %></td>
</tr>

<tr>
<td>Boarding</td>
<td>&nbsp; : &nbsp;</td>
<td><%= boarding %></td>
</tr>

<tr>
<td>Deboarding</td>
<td>&nbsp; : &nbsp;</td>
<td><%= deboarding %></td>
</tr>

<tr>
<td>Seat-Number</td>
<td>&nbsp; : &nbsp;</td>
<td id="seats"></td>
</tr>

<tr>
<td>Price</td>
<td>&nbsp; : &nbsp;</td>
<td id="price"></td>
</tr>



</table>
</div>

<div class="footer">
<div class="f2">
	<h3>www.BusReservation.com</h3>
</div>
</div>

<script>


var seats=JSON.parse(localStorage.getItem("selected_seats"));

document.getElementById("seats").innerHTML=seats;

document.getElementById("price").innerHTML=localStorage.getItem("total");

</script>

<%

String seats=request.getParameter("hidden");
String price=request.getParameter("total");

Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bus","root","root");

Statement stmt=con.createStatement();



String q1="insert into reservation values('"+name.toLowerCase() +"','"+mob_num +"','"+boarding.toLowerCase() +"','"+deboarding.toLowerCase()+"','"+price+"','"+seats+"','"+ticket_num+"','"+bn+"')";

stmt.execute(q1);


%>

<a id="home" href="main.html"><img src="https://cdn-icons-png.flaticon.com/128/61/61972.png"></a>
</body>
</html>