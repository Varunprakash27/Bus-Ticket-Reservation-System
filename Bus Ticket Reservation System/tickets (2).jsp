<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ticket</title>
<style>


#c1,#c2,#c3,#c4
{
border:2px solid black;
height:150px;
width:600px;
margin-left:6vw;
margin-top:8vh;
box-shadow:5px 5px 10px #3d3f52,-2px -2px 10px #3d3f52;
}
table
{
margin-left:4vw;
margin-top:2vh;
padding:10px;
}

#b1,#b2,#b3,#b4
{
margin-left:16.5vw;
height:30px;
width:120px;
border-radius:20px;
margin-top:3.5vh;
background-color:black;
font-weight:bold;
color:white;
}

#b1:hover
{
color:red;
}

#b2:hover
{
color:red;
}

#b3:hover
{
color:red;
}

#b4:hover
{
color:red;
}


td
{
font-size:20px;
}


#t2
{

margin-left:25vw;
margin-top:-12vh;
}

.header
{
position:absloute;
border:1px solid black;
height:8vh;
background-color:rgba(230, 42, 42, 0.904);
}

.footer
{
border:1px solid black;
height:4vh;
background-color:rgba(230, 42, 42, 0.904);
margin-top:1.2vh;
}

.contents
{
width:55vw;
height:84vh;
overflow-y:scroll;
margin-left:20vw;
}
.img1
{
position:fixed;
margin-left:3vw;
margin-top:25vh;
height:250px;
}

.img2
{
position:absolute;
margin-left:77vw;
height:260px;
margin-top:-60vh;
}

#headding
{
position:absloute;
margin-top:10vh;
font-size:36px;
}

.h1
{
padding:4px;
text-align:center;
margin-left:38vw;
border:1px solid black;
height:6.9vh;
width:18vw;
background-color:black;
color:white;

}

#web
{
font-size:18px;
}


.w1
{
padding:3px;
text-align:center;
border:1px solid black;
height:3.1vh;
width:18vw;
margin-left:39vw;
background-color:black;
color:white;
}

</style>
</head>
<body>

<div class="header">

<div class="h1">
<span id="headding">Available Tickets</span>
</div>

</div>

<img class="img1" src="https://cdn-icons-png.flaticon.com/512/5730/5730373.png">

<div class="contents">


<%@page import="java.sql.*" %>

<%

String bp=request.getParameter("v1");
String dp=request.getParameter("v2");
String dt=request.getParameter("v3");

session.setAttribute("boarding", bp);
session.setAttribute("deboarding", dp);
session.setAttribute("date", dt);


System.out.println(dt);
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bus","root","root");

Statement stmt=con.createStatement();

String q="select * from bus_details where boarding_point='"+bp+"' and deboarding_point='"+dp+"' and date='"+dt+"' ";
ResultSet res=stmt.executeQuery(q);

String[] array=new String[100];

int count=0;
while(res.next())
{

 	String x=res.getString("bus_number");
 	String y=res.getString("boarding_point");
	String z=res.getString("deboarding_point");
	String a=res.getString("price");
	String b=res.getString("timings");
	if(count==0)
	{
		array[0]=x;
		array[1]=y;
		array[2]=z;
		array[3]=b;
		array[4]=a;
		%>
		<br>
		<div id="c1">
		<form method=post action="seats.jsp">
			<table>
		    <tr>
			<td>Route Number</td>
			<td>:</td>
			<td> <%= x %></td>
			</tr>
			<tr>
			<td>Boarding</td>
			<td>:</td>
			<td> <%= y %></td>
			</tr>
			<tr>
			<td>Deboarding</td>
			<td>:</td>
			<td> <%= z %></td>
			</tr>
			</table>
			<table id="t2">
			<tr>
			<td>Timings</td>
			<td>:</td>
			<td> <%= b %></td>
			</tr>
			<tr>
			<td>Price</td>
			<td>:</td>
			<td> <%= a %></td>
			</tr>
		</table>
		<input type="hidden" id="hid" name="bus_num" value=<%= x %>>
		
			
	 	<button type="submit" id="b1"   value="1">Book</button>
	 	</form>
		</div>		
	 	<br>
	 	
	 	<% 
	 
	 	
	}
	 if(count==1)
	{
		 array[5]=x;
		 array[6]=y;
		 array[7]=z;
		 array[8]=b;
		 array[9]=a;
				
		%>
		<br>
		<div id="c2">
		<form method=post action="seats.jsp">
			<table>
		    <tr>
			<td>Route Number</td>
			<td>:</td>
			<td> <%= x %></td>
			</tr>
			<tr>
			<td>Boarding</td>
			<td>:</td>
			<td> <%= y %></td>
			</tr>
			<tr>
			<td>Deboarding</td>
			<td>:</td>
			<td> <%= z %></td>
			</tr>
			</table>
			<table id="t2">
			<tr>
			<td>Timings</td>
			<td>:</td>
			<td><%= b %></td>
			</tr>
			<tr>
			<td>Price</td>
			<td>:</td>
			<td> <%= a %></td>
			</tr>
		</table>
		<input type="hidden" id="hid" name="bus_num" value=<%= x %>>
		
	 	<button type="submit" id="b2"  value="2">Book</button>
	 	</form>
		</div>
	 	<br>
	 	<% 
	 
	}
	if(count==2)
	{
		array[10]=x;
		array[11]=y;
		array[12]=z;
		array[13]=b;
		array[14]=a;
		
		%>
		<br>
		<div id="c3">
		<form method=post action="seats.jsp">
			<table>
		    <tr>
			<td>Route Number</td>
			<td>:</td>
			<td> <%= x %></td>
			</tr>
			<tr>
			<td>Boarding</td>
			<td>:</td>
			<td> <%= y %></td>
			</tr>
			<tr>
			<td>Deboarding</td>
			<td>:</td>
			<td> <%= z %></td>
			</tr>
			</table>
			<table id="t2">
			<tr>
			<td>Timings</td>
			<td>:</td>
			<td> <%= b %></td>
			</tr>
			<tr>
			<td>Price</td>
			<td>:</td>
			<td> <%= a %></td>
			</tr>
		</table>
		<input type="hidden" id="hid" name="bus_num" value=<%= x %>>
		
	 	<button type="submit"  id="b3"  value="3">Book</button>
	 	</form>
		</div>
		
	 	<br>
	 	<% 
	 	
	}
	if(count==3)
	{
		array[15]=x;
		array[16]=y;
		array[17]=z;
		array[18]=b;
		array[19]=a;
		
		%>
		<br>
		<div id="c4">
		<form method=post action="seats.jsp">
			<table>
		    <tr>
			<td>Route Number</td>
			<td>:</td>
			<td> <%= x %></td>
			</tr>
			<tr>
			<td>Boarding</td>
			<td>:</td>
			<td> <%= y %></td>
			</tr>
			<tr>
			<td>Deboarding</td>
			<td>:</td>
			<td> <%= z %></td>
			</tr>
			</table>
			<table id="t2">
			<tr>
			<td>Timings</td>
			<td>:</td>
			<td> <%= b %></td>
			</tr>
			<tr>
			<td>Price</td>
			<td>:</td>
			<td> <%= a %></td>
			</tr>
		</table>
		<input type="hidden" id="hid" name="bus_num" value=<%= x %>>
		
	 	<button type="submit"  id="b4"  value="4">Book</button>
	 	</form>
	 	</div>
		
	 	<% 
	 
	}
count+=1;

}
session.setAttribute("user_data",array);
con.close();

%>

</div>

<img class="img2" src="https://cdn-icons-png.flaticon.com/512/7591/7591433.png">

<div class="footer">

<div class="w1">
<span id="web">www.BusReservation.com</span>
</div>

</div>

</body>
</html>