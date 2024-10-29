<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Seats</title>
  <style>
  		
  
            .btn
            {
                height:40px;
                width:50px;
                margin:2px;
                 background-color:white;
               border: 1px solid black;
            	
            }
            .bus
            {
                margin-top: 6vh;
                border:1px;
                height:420px;
                width:1010px;
                box-shadow: 8px 8px 20px rgb(12, 12, 12),-3px -3px 20px rgb(12, 12, 12);
                padding:20px;
                text-align:center;
                margin-left:14vw;
                background-color: white;
            }
            .child1
            {
                
              margin-top: 7vh;
            
            }
            .child2
            {
                margin-top: 2vh;
                margin-left: 8vw;
            }
            .driver
            {
                height: 70px;
                position: absolute;
				margin-left:-28.7vw;
                margin-top: 9vh;
                
            }
           .line
           {
            height: 50px;
            width:750px;
           }
           
           .name
           {
           	font-size:30px;
           	margin-left:15vw;
        	
           }
           .date
           {
           font-size:30px;
           	margin-left:55vw;
           	position:absolute;
           	margin-top:-4vh;
           }
           
           .boarding
           {
             font-size:30px;
           	margin-left:15vw;
           	margin-top:4.5vh;
           
           }
            .deboarding
           {
            font-size:30px;
           	margin-left:55vw;
           	position:absolute;
           	margin-top:-4.5vh;
           }
           
           .details
           {
           	margin-top:6vh;
           	margin-left:5vw;
           }
           
         
           
         #confirm
         {
         margin-top:7vh;
         height:30px;
         width:70px;
         border:0;
         border-radius:10px;
         background-color:rgba(230, 42, 42, 0.904);
         color:white;
          box-shadow:1px 1px 10px black,-1px -1px 5px black;
         
         }
         
          #cancel
         {
         margin-top:6vh;
         height:30px;
         width:70px;
         border:0;
         border-radius:10px;
         background-color:rgba(230, 42, 42, 0.904);
         color:white;
         margin-left:3vw;
         box-shadow:1px 1px 10px black,-1px -1px 5px black;
         }
         #cancel:hover
         {
          background-color:black;
         }
          #confirm:hover
         {
          background-color:black;
         }
         
         #price
         {
         border:2px solid black;
          height:30px;
          width:130px;
          font-size:22px;
          position:absolute;
          margin-left:45vw;
          border-radius:8px;
          margin-top:3.5vh;
          background-color:white;
          color:black;
           box-shadow:1px 1px 10px black,-1px -1px 5px black;
         }
         
        .headder
        {
        	
        	border:0;
        	height:7vh;
        	width:95vw;
        	background-color:rgba(230, 42, 42, 0.904);
        	margin-left:1.5vw;
        	margin-top:-2vh;
        }
        
		h1
        {
         position:absolute;
          border:0;
          margin-left:5.5vw;
          font-size:40px;
          font-weight:bold;
          margin-top:0.7vh;
          color:white;
         }
           
         .he2
         {
         	position:absolute;
         	 border:0;
         	 height:7vh;
         	 width:23vw;
         	 margin-left:37vw;
         	 background-color:black;
         	 color:white;
         }
          
         #bus_num
         {
         	position:absolute;
         	height:7vh;
         	width:5vw;
         	margin-left:-35vw;
         	border:2px solid black;
         	border-radius:10px;
         	background-color:white;
         	color:white;
         	font-size:25px;
         	margin-top:-10vh;
         	color:black;
         }
        </style>
</head>
<body>


<%

String bp=(String)session.getAttribute("boarding");
String dp=(String)session.getAttribute("deboarding");
String dt=(String)session.getAttribute("date");
String bn=request.getParameter("bus_num");
//System.out.println(bn);
session.setAttribute("bus_num", bn);

Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bus","root","root");

Statement stmt=con.createStatement();

String q1="select seats from reservation where source='"+bp+"' and destination='"+dp+"' and bus_number='"+bn+"' ";

ResultSet res=stmt.executeQuery(q1);

String output;
String s="";

while(res.next())
{
	 output=res.getString("seats"); 
	 s+="@"+output;
}


//System.out.println(s);
String[] str=s.split("@");


int len=str.length;


String str2="";
if(len<=2)
{
	str2+=str[1];
	System.out.println(str2);
}
else
{
for(int i=1;i<len;i++)
{
	if(str[i].length()==1)
	{
		str2+=str[i];
	}
	else if((str[i].length())==2)
	{
		String[] demo_str=str[i].split(",");
		str2+=","+demo_str[0];
		demo_str=null;
	}
	else if((str[i].length())==3)
	{
		String[] demo_str=str[i].split(",");
		str2+=","+demo_str[0];
		str2+=","+demo_str[1];
		demo_str=null;
	}
	else if((str[i].length())==8)
	{
		String[] demo_str=str[i].split(",");
		str2+=","+demo_str[0];
		str2+=","+demo_str[1];
		str2+=","+demo_str[2];
		demo_str=null;
	}
	else if((str[i].length())==11)
	{
		String[] demo_str=str[i].split(",");
		str2+=","+demo_str[0];
		str2+=","+demo_str[1];
		str2+=","+demo_str[2];
		str2+=","+demo_str[3];
		demo_str=null;
	}
	else if((str[i].length())==14)
	{
		String[] demo_str=str[i].split(",");
		str2+=","+demo_str[0];
		str2+=","+demo_str[1];
		str2+=","+demo_str[2];
		str2+=","+demo_str[3];
		str2+=","+demo_str[4];
		demo_str=null;
	}

	else if((str[i].length())==17)
	{
		String[] demo_str=str[i].split(",");
		str2+=","+demo_str[0];
		str2+=","+demo_str[1];
		str2+=","+demo_str[2];
		str2+=","+demo_str[3];
		str2+=","+demo_str[4];
		str2+=","+demo_str[5];
		demo_str=null;
	}

	else if((str[i].length())==4)
	{
		String[] demo_str=str[i].split(",");
		str2+=","+demo_str[0];
		str2+=","+demo_str[1];
		demo_str=null;
	}
	else if((str[i].length())==7)
	{
		String[] demo_str=str[i].split(",");
		str2+=","+demo_str[0];
		str2+=","+demo_str[1];
		str2+=","+demo_str[2];
		demo_str=null;
	}
	else if((str[i].length())==6)
	{
		String[] demo_str=str[i].split(",");
		str2+=","+demo_str[0];
		str2+=","+demo_str[1];
		str2+=","+demo_str[2];
		demo_str=null;
	}
	else if((str[i].length())==5)
	{
		String[] demo_str=str[i].split(",");
		if(demo_str.length==2)
		{
		str2+=","+demo_str[0];
		str2+=","+demo_str[1];
		}
		else
		{
			str2+=","+demo_str[0];
			str2+=","+demo_str[1];
			str2+=","+demo_str[2];
			
		}
	}
}
}


%>

<div class="headder">
<div class="he2">
<h1>Select Seat</h1>
</div>
</div>
<div class="details">

<div class="name">
Name :&nbsp;<span id="x1"></span>
</div>

<div class="date">
Date :&nbsp;<span id="x2"></span>
</div>

<div class="boarding">
Boarding :&nbsp;<span id="x3"></span>
</div>

<div class="deboarding">
Deboarding :&nbsp;<span id="x4"></span>
</div>

</div>

<div id="price">
&nbsp;Price :&nbsp;<span id="cs2"></span>
</div>

        <div class="bus">
		  <img class="driver" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWxG1fD2jJ7U_fJxDevPan_YSVwHCbWlX-CM5EjM-8Izy_2lGzgDr4bJPDIWQEywzQZTo&usqp=CAU" alt="driver">
      
            <div class="child1">
            <button id="1" class="btn" onclick="select(this)">1</button>
            <button id="8" class="btn" onclick="select(this)">8</button>
            <button id="9" class="btn" onclick="select(this)">9</button>
            <button id="16" class="btn" onclick="select(this)">16</button>
            <button id="17" class="btn" onclick="select(this)">17</button>
            <button id="24" class="btn" onclick="select(this)">24</button>     
            <button id="25" class="btn" onclick="select(this)">25</button>
            <button id="32" class="btn" onclick="select(this)">32</button>
            <button id="33" class="btn" onclick="select(this)">33</button>
            <button id="40" class="btn" onclick="select(this)">40</button>
            <button id="41" class="btn" onclick="select(this)">41</button><br>
            <button id="2" class="btn" onclick="select(this)">2</button>
            <button id="7" class="btn" onclick="select(this)">7</button> 
            <button id="10" class="btn" onclick="select(this)">10</button>
            <button id="15" class="btn" onclick="select(this)">15</button>
            <button id="18" class="btn" onclick="select(this)">18</button> 
            <button id="23" class="btn" onclick="select(this)">23</button>
            <button id="26" class="btn" onclick="select(this)">26</button>
            <button id="31" class="btn" onclick="select(this)">31</button>
            <button id="34" class="btn" onclick="select(this)">34</button> 
            <button id="39" class="btn" onclick="select(this)">39</button> 
            <button id="42" class="btn" onclick="select(this)">42</button><br><br>
        </div>
        <img class="line" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYHa2Rku8rqrt3AplKPI0JKrkpzgRiIxbOCfIcE_HIF3xKP5WwDVlt0h5MsrAhbmylREU&usqp=CAU">
        <div class="child2">
            <button id="3" class="btn" onclick="select(this)">3</button>
            <button id="6" class="btn" onclick="select(this)">6</button> 
            <button id="11" class="btn" onclick="select(this)">11</button> 
            <button id="14" class="btn" onclick="select(this)">14</button>
            <button id="19" class="btn" onclick="select(this)">19</button>
            <button id="22" class="btn" onclick="select(this)">22</button>
            <button id="27" class="btn" onclick="select(this)">27</button>
            <button id="30" class="btn" onclick="select(this)">30</button> 
            <button id="35" class="btn" onclick="select(this)">35</button>
            <button id="38" class="btn" onclick="select(this)">38</button> 
            <button id="43" class="btn" onclick="select(this)">43</button>
            <button id="46" class="btn" onclick="select(this)">46</button>
            <button id="47" class="btn" onclick="select(this)">47</button><br>
            <button id="4" class="btn" onclick="select(this)">4</button>
            <button id="5" class="btn" onclick="select(this)">5</button> 
            <button id="12" class="btn" onclick="select(this)">12</button>
            <button id="13" class="btn" onclick="select(this)">13</button> 
            <button id="20" class="btn" onclick="select(this)">20</button>
            <button id="21" class="btn" onclick="select(this)">21</button> 
            <button id="28" class="btn" onclick="select(this)">28</button>
            <button id="29" class="btn" onclick="select(this)">29</button>
            <button id="36" class="btn" onclick="select(this)">36</button>
            <button id="37" class="btn" onclick="select(this)">37</button>
            <button id="44" class="btn" onclick="select(this)">44</button> 
            <button id="45" class="btn" onclick="select(this)">45</button>
            <button id="48" class="btn" onclick="select(this)">48</button><br>
        </div>

   <button id="confirm" onclick="confirm()">Confirm</button>
	<button id="cancel" onclick="cancel()">Cancel</button>
	
	<button id="bus_num"><%= bn %></button>
	
 </div>

<script>
         
	
	    let x;
        var seat;
        function confirm()
        {
        	seat=[];
            for(x=1;x<=48;x++)
            {
            	
            	const btn=document.getElementById(x);
               if(btn.style.backgroundColor=="black")
                {
                   seat.push(x);
                  
                }
                
            }
            if(seat.length==0)
            {	
            	alert("select atlest 1 seat");
            }
            else
            {
        	 window.location="payment.jsp";
            	
            }
           
            var ary=JSON.stringify(seat);
            localStorage.setItem("selected_seats",ary);
        }
        
        function cancel()
        {
        	window.location="selection.jsp";
        }
             
       
        var price=Number(localStorage.getItem("price"));
        pricex=0;
        pricey=0;
        document.getElementById("cs2").innerHTML=pricex;

      var count=0;
       function select(button)
       {
        	
        	if(count>5)
        	{
        	 alert("only 6 seats can be selected");
        	 window.location="seats.jsp";
	        }
        
            const seat=document.getElementById(button.id);
            if(seat.style.backgroundColor!="black")
            {
            seat.style.backgroundColor="black";
            seat.style.color="white";
            pricey+=price;
            document.getElementById("cs2").innerHTML=pricey;
            count+=1;
            }
            else
            {
                seat.style.backgroundColor="white";
                seat.style.color="black";
                pricey-=price;
                document.getElementById("cs2").innerHTML=pricey;
                count-=1;
            }
            localStorage.setItem("total",pricey);
        }
       
		

 
var route_num=localStorage.getItem("route_number");
var boarding=localStorage.getItem("boarding");
var deboarding=localStorage.getItem("deboarding");

var name=localStorage.getItem("name");
var mail=localStorage.getItem("mail");
var password=localStorage.getItem("password");
var mobile_num=localStorage.getItem("mobile_num");
var date=localStorage.getItem("date");


document.getElementById("x1").innerHTML=name;
document.getElementById("x2").innerHTML=date;
document.getElementById("x3").innerHTML=boarding;
document.getElementById("x4").innerHTML=deboarding;



<%

String[] seats=str2.split(",");
for(int i=0;i<seats.length;i++)
{
	
%>

var user_seats=document.getElementById(<%= seats[i] %>);
user_seats.disabled="true";
user_seats.style.backgroundColor="rgba(230, 42, 42, 0.904)";
user_seats.style.color="white";

<%
}


%>
</script>
</body>
</html>