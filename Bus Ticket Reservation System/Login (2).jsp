<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
        <style>
        
        
        
        body
        {
            
            background-color:#3d3f52;
        }
         .main
        {
            position: fixed;
        	color:rgb(0, 0, 0);
            border:0;
            height:630px;
            width:500px;
            margin-left: 32vw;
            margin-top: 6.5vh;
            
            border-radius: 10px;
            padding-top: 1vh;
            background-color: white;
        }
       label
       {
        font-size: 20px;
        font-family:cursive ;
       }
       
       #d1,#d2,#d3,#d4
       {
        margin:40px;
        margin-left: 6vw;
       }

    

       #d5
       {
        margin-left: 12vw;
        height:25px;
        width:10vw;
        font-size: 15px;
        margin-top: 1vh;
        border: 0;
        box-shadow: 0.5px 0.5px 5px black,-0.5px -0.5px 5px black;
       }

		#d5:hover
		{
		background-color:rgba(230, 42, 42, 0.904);
		color:  white;
		}
		
       input
       {
        height:25px;
        width:300px;
        margin-top: 2vh;
        border:0;
        background-color: rgb(214, 214, 214);
       
       }
       
       input:hover
       {
        font-size:15px;
        border: 0;
       }
       

       h1
       {
       
        text-align: center;
        font-size: 60px;
   		 color:rgb(0, 0, 0);
   		 margin-top:1vh;

       }

       .out
       {
        position: absolute;
        margin-top: 0.7vh;
        border:2px solid black;
        height: 725px;
        width:700px;
        margin-left: 25vw;
        border: 0;
		
        
       }
       
    </style>
</head>
<body>

    <div class="out"></div>
    <div class="main">
            <h1>Login</h1>
        <form action="selection.jsp" method="post">


            <div id="d1">
            <label for="i1">Name</label>
            <br>
            <input type="text" id="i1" name="name" placeholder="Enter Your Name" autocomplete="off">
            </div>

            
            <div id="d2">
            <label for="i2">Email</label>
            <br>
            <input type="text" id="i2" placeholder="Example@gmail.com" name="mail" autocomplete="off">
            </div>
            
            <div id="d3">
            <label for="i3">Password</label>
            <br>
            <input type="password" id="i3" placeholder="Enter password" name="password" autocomplete="off">
            </div>
            
            <div id="d4">  
            <label for="i4">Mobile Number</label>
            <br>
            <input type="text" id="i5" placeholder="91+" name="mob_num" autocomplete="off">
            </div>

           
                <input type="submit" id="d5" value="Login">
            
                
            </form>
        </div>
    
</body>
</html>