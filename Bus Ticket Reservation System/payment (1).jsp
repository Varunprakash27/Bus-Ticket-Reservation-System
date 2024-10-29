<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <style>

@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@100;300;400;500;600&display=swap');

*{
  font-family: 'Poppins', sans-serif;
  margin:0; padding:0;
  box-sizing: border-box;
  outline: none; border:none;
  text-transform: capitalize;
  transition: all .2s linear;
}

.container{
  display: flex;
  justify-content: center;
  align-items: center;
  padding:25px;
  min-height: 100vh;
  background-color:#333; 
}

.container form{
  padding:20px;
  width:700px;
  background: #fff;
  box-shadow: 0 5px 10px rgba(0,0,0,.1);
}

.container form .row{
  display: flex;
  flex-wrap: wrap;
  gap:15px;
}

.container form .row .col{
  flex:1 1 250px;
}

.container form .row .col .title{
  font-size: 20px;
  color:#333;
  padding-bottom: 5px;
  text-transform: uppercase;
}

.container form .row .col .inputBox{
  margin:15px 0;
}

.container form .row .col .inputBox span{
  margin-bottom: 10px;
  display: block;
}

.container form .row .col .inputBox input{
  width: 100%;
  border:1px solid #ccc;
  padding:10px 15px;
  font-size: 15px;
  text-transform: none;
}

.container form .row .col .inputBox input:focus{
  border:1px solid #000;
}

.container form .row .col .flex{
  display: flex;
  gap:15px;
}

.container form .row .col .flex .inputBox{
  margin-top: 5px;
}

.container form .row .col .inputBox img{
  height: 90px;
  margin-top: 4px;
  width:25vw;
  filter: drop-shadow(0 0 1px #ffffff);
}

#sub{
  width: 100%;
  padding:12px;
  font-size: 17px;
  background: rgb(236, 69, 69);
  color:#fff;
  margin-top: 5px;
  cursor: pointer;
}

#sub:hover{
background: #000000;
  color:white;
}
    </style>
</head>
<body>
<%@page import="java.sql.*" %>
<%

Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bus","root","root");

Statement stmt= con.createStatement();

String q1="select ticket_number from reservation";

ResultSet res=stmt.executeQuery(q1);

int ticket_num=0;

while(res.next())
{
	ticket_num=res.getInt("ticket_number");
}

System.out.println(ticket_num);
session.setAttribute("ticket_number", ticket_num);
%>

<div class="container">

    <form action="final.jsp">

        <div class="row">

            <div class="col">

                <h3 class="title">billing address</h3>

                <div class="inputBox">
                    <span>full name :</span>
                    <input type="text" placeholder="name">
                </div>
                <div class="inputBox">
                    <span>email :</span>
                    <input type="email" placeholder="example@example.com">
                </div>
             
                <div class="flex">
                    <div class="inputBox">
                        <span>state :</span>
                        <input type="text" placeholder="india">
                    </div>
                    
                </div>

            </div>

            <div class="col">

                <h3 class="title">payment</h3>

                <div class="inputBox">
                    <img src="https://t3.ftcdn.net/jpg/05/38/53/76/360_F_538537674_qpvDKu7W7XlMgCdJsmd7Bk9NpWIacy4X.jpg" alt="">
                </div>
                <div class="inputBox">
                    <span>Total Amount :</span>
                    <input type="text" name="total" id="amount" readonly>
                </div>
                <div class="inputBox">
                    <span>credit card number :</span>
                    <input type="number" placeholder="1111-2222-3333-4444">
                </div>
                <div class="inputBox">
                    <span>exp month :</span>
                    <input type="text" placeholder="january">
                </div>

                <div class="flex">
                    <div class="inputBox">
                        <span>exp year :</span>
                        <input type="number" placeholder="2022">
                    </div>
                    <div class="inputBox">
                        <span>CVV :</span>
                        <input type="text" placeholder="1234">
                    </div>
                </div>

            </div>
    
        </div>
		<input type="hidden" name="hidden" id="hidden">
		<input type="hidden" name="total" id="ttl">
        <input type="submit"  id="sub" value="Proceed">

    </form>

</div>    
    <script>
    	var price=localStorage.getItem("total");
        var total=document.getElementById("amount").value=price;        

        var seats=JSON.parse(localStorage.getItem("selected_seats"));
   		document.getElementById("hidden").value=seats;
   		
   		
    </script>
</body>
</html>