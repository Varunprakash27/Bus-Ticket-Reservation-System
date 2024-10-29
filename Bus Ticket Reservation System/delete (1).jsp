<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cancel ticket</title>

<style>

#header
{
text-align:center;
border:0;
height:7vh;
background-color:rgba(230, 42, 42, 0.904);
margin-top:-1vh;
}

#h1
{
border:0;
height:7vh;
position:absolute;
background-color:black;
color:white;
font-size:45px;
width:20vw;
margin-left:38vw;
}

#footer
{

text-align:center;
border:0;
height:5vh;
background-color:rgba(230, 42, 42, 0.904);
margin-top:87vh;
margin-bottom:-1vh;
}

#f1
{
border:0;
height:5vh;
position:absolute;
background-color:black;
color:white;
font-size:20px;
width:20vw;
margin-left:38vw;

}

#f2
{
margin-left:2vw;
position:absolute;
margin-top:1vh;
}

.main
{
position:absolute;
border:0;
margin-top:13vh;
height:55vh;
width:50vw;
margin-left:25vw;
box-shadow:5px 5px 20px black,-3px -3px 20px black;
}

#question
{
font-size:40px;
margin-left:8.5vw;
margin-top:12vh;
}

input
{
border:2px solid black;
margin-top:7vh;
height:4vh;
width:25vw;
margin-left:11.5vw;
}


input:hover
{

font-size:18px;
}

#submit
{
width:10vw;
margin-left:19vw;
border-radius:12px;
background-color:rgba(230, 42, 42, 0.904);
border:0;
color:white;
margin-top:10vh;
}

#submit:hover
{
background-color:black;
color:white;
font-size:15px;
}


#res1
{
position:absolute;
margin-top:-70vh;
margin-left:25vw;
border:0;
height:3vh;
width:49.6vw;
text-align:center;
background-color:black;
color:white;
padding:2px;
}

#res2
{
position:absolute;
margin-top:-70vh;
margin-left:25vw;
border:0;
height:3vh;
width:49.6vw;
text-align:center;
background-color:black;
color:red;
padding:2px;
}

img
{
height:17px;
background-color:white;
}

button
{
position:absolute;
margin-top:-15vh;
margin-left:48vw;
background-color:white;
border:0;
}
img:hover
{
height:19px;
}
</style>
</head>


<body>


<div id="header">
<div id="h1"><span>Cancel Ticket</span></div>
</div>

<div class="main">
<form action="delete.jsp" method="post">

<div id="question">Enter Your Ticket Number ..</div>
<br>
<input type="text" id="i1" placeholder="Ticket Number .." name="ticket_num" autocomplete="off">

<input id="submit" type="submit" value="Proceed">
</form>
</div>

<div id="footer">
<div id="f1"><p id="f2">www.BusReservation.com</p></div>

</div>
<button onclick="home()"><img src="https://cdn-icons-png.flaticon.com/128/61/61972.png"></button>
<%@page import="java.sql.*" %>
<%

Class.forName("com.mysql.jdbc.Driver");

Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bus","root","root");

String ticket_num=request.getParameter("ticket_num");

Statement stmt=con.createStatement();

String q1="delete from reservation where ticket_number='"+ticket_num+"'";

int res=stmt.executeUpdate(q1);
 System.out.println(ticket_num);
 
if(res==1 && ticket_num!=null)
{
	%>
		<div id="res1"><% out.print("Ticket Cancelled Successfully...!!");%></div>
	<% 
}
else if(res==0 && ticket_num!=null)
{
	%>
		<div id="res2"><% out.print("Ticket Not Found..");%></div>
	<% 
}

%>

</body>

<script>
function home()
{
	
	window.location="main.html";
}
</script>
</html>