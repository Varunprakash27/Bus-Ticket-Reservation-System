<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Selection</title>
  <style>
        
        body
        {
       
         background-color:#3d3f52;
        }
         
         #x1
         {
            border: 1px solid black;
            height:400px;
            width: 450px;
            margin-top: 15vh;
            margin-left: 34vw;
        	color:white;
         	background-color:rgba(230, 42, 42, 0.904);
         }
         #i1,#i2,#i3
         {
            
            margin :20px;
            margin-left: 5vw;
            height:19px;
            width:280px;
         }
         
         #i4
         {
         	margin :20px;
            margin-left: 5vw;
            height:23px;
            width:110px;
            margin-left:12vw;
         	margin-top:4vh;
         	border:0;
         	border-radius:4px;
         }
         
         #i4:hover
         {
         	background-color:black;
         	color:white;
         }
         
         
         datalist
         {
            border: 2px rgb(209, 40, 40);
         }
         
         h1
         {
          font-size:45px;
          text-align:center;
          color:white;
          font-family:cursive;
         }
        label
        {
        	font-size:25px;
        	margin-left:5vw;
        	font-family:cursive;
        } 
        
       .d1
       {
       	margin-top:3vh;
       }
       
       input:hover
       {
       	font-size:15px;
       }
       
       
       
</style>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

</head>
<body>

<h1>Choose Your Requirements..</h1>

<%

String name=request.getParameter("name");
String mail=request.getParameter("mail");
String password=request.getParameter("password");
String mobile_num=request.getParameter("mob_num");

session.setAttribute("name", name);
session.setAttribute("mob_num", mobile_num);

%>
  <div id="x1">
            <form action="tickets.jsp" method="post">
            
        	<div class="d1">     
        	<label for="i1">Boarding</label><br>
             <input autocomplete="off" type="text" id="i1" list="lst" placeholder="Point" name="v1">
                <datalist id="lst" >    
                <option value="Bengaluru"></option>
                <option value="Ballari"></option>
                <option value="Belagavi"></option>
                <option value="Chikkamagaluru"></option>
                <option value="Davanagere"></option>
                <option value="Dharwad"></option>
                <option value="Hosapet"></option>
                <option value="Mysore"></option>
                <option value="Mangaluru"></option>
                <option value="Madikeri"></option>
                <option value="Hubballi"></option>
                <option value="Shivamogga"></option>
                <option value="Karwar"></option>
                <option value="Kundapura"></option>
                <option value="Udupi"></option>
                </datalist>
            
                <br>
                </div>
                
                 <label for="i2">Deboarding</label><br>
                <input autocomplete="off" placeholder="Point" type="text" id="i2" list="lst2" name="v2">
                <datalist id="lst2" >    
                    <option value="Bengaluru"></option>
                    <option value="Ballari"></option>
                    <option value="Belagavi"></option>
                    <option value="Chikkamagaluru"></option>
                    <option value="Davanagere"></option>
                    <option value="Dharwad"></option>
                    <option value="Hosapet"></option>
                    <option value="Mysore"></option>
                    <option value="Mangaluru"></option>
                    <option value="Madikeri"></option>
                    <option value="Hubballi"></option>
                    <option value="Shivamogga"></option>
                    <option value="Karwar"></option>
                    <option value="Kundapura"></option>
                    <option value="Udupi"></option>
                    </datalist>
                
                <br>
                
                 <label for="i3">Date</label><br>
                <input placeholder="dd/mm/yy" type="text" id="i3"  name="v3">
                 <br>
                 <input id="i4" type="submit" value="Search">   
            </form>
        </div>

 <script>
 
 var v1="<%= name %>";
 var v2="<%= mail %>";
 var v3="<%= password %>";
 var v4="<%= mobile_num %>";

localStorage.setItem("name",v1);
localStorage.setItem("mail",v2);
localStorage.setItem("date",v3);
localStorage.setItem("mobile_num",v4);


  
</script>

</body>
</html>