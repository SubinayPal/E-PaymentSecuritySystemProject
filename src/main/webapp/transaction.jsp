<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.sql.Timestamp" import="java.time.Instant" %>
<% Timestamp ts1 = Timestamp.from(Instant.now());  

	String uid=(String)session.getAttribute("uid");
	//System.out.println(uid);
   
   //System.out.println("Timestamp : "+ts1);
%>   


    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>

body{
	margin:0;
	padding:0;
	font-family:"arial",heletica,sans-serif;
	font-size:12px;
    background: #2980b9 url('https://static.tumblr.com/03fbbc566b081016810402488936fbae/pqpk3dn/MRSmlzpj3/tumblr_static_bg3.png') repeat 0 0;
	-webkit-animation: 10s linear 0s normal none infinite animate;
	-moz-animation: 10s linear 0s normal none infinite animate;
	-ms-animation: 10s linear 0s normal none infinite animate;
	-o-animation: 10s linear 0s normal none infinite animate;
	animation: 10s linear 0s normal none infinite animate;
 
}
 
@-webkit-keyframes animate {
	from {background-position:0 0;}
	to {background-position: 500px 0;}
}
 
@-moz-keyframes animate {
	from {background-position:0 0;}
	to {background-position: 500px 0;}
}
 
@-ms-keyframes animate {
	from {background-position:0 0;}
	to {background-position: 500px 0;}
}
 
@-o-keyframes animate {
	from {background-position:0 0;}
	to {background-position: 500px 0;}
}
 
@keyframes animate {
	from {background-position:0 0;}
	to {background-position: 500px 0;}
}

.container {
  height: 900px;
  width: 400px;
  background-image: linear-gradient(#1e6b30, #308d46);
  top: 50%;
  left: 50%;
  position: absolute;
  transform: translate(-50%, -50%);
  position: absolute;
  border-bottom-left-radius: 180px;
  border-top-right-radius: 150px;
}
  
.main-content {
  height: 235px;
  background-color: #1b9236;
  border-bottom-left-radius: 90px;
  border-bottom-right-radius: 80px;
  border-top: #1e6b30;
}
  
.text {
  text-align: center;
  font-size: 300%;
  text-decoration: aliceblue;
  color: aliceblue;
}
  
.course {
  color: black;
  font-size: 25px;
  font-weight: bolder;
}
  
.centre-content {
  height: 180px;
  margin: -70px 30px 20px;
  color: aliceblue;
  text-align: center;
  font-size: 20px;
  border-radius: 25px;
  padding-top: 0.5px;
  background-image: linear-gradient(#1e6b30, #308d46);
}
  
.centre-content-h1 {
  padding-top: 30px;
  padding-bottom: 30px;
  font-weight: normal;
}
  
.price {
  font-size: 60px;
  margin-left: 5px;
  bottom: 15px;
  position: relative;
}
  
.pay-now-btn {
  cursor: pointer;
  color: #fff;
  height: 50px;
  width: 290px;
  border: none;
  margin: 5px 30px;
  background-color: rgb(71, 177, 61);
  position: relative;
}
  
.card-details {
  background: rgb(8, 49, 14);
  color: rgb(225, 223, 233);
  margin: 10px 30px;
  padding: 10px;
  /* border-bottom-left-radius: 80px; */
}
  
.card-details p {
  font-size: 15px;
}
  
.card-details label {
  font-size: 15px;
  line-height: 35px;
}
  
.submit-now-btn {
  cursor: pointer;
  color: #fff;
  height: 30px;
  width: 240px;
  border: none;
  margin: 5px 30px;
  background-color: rgb(71, 177, 61);
}

</style>

</head>
<body>
<form name="f1" id="f1" method="post" action="transactionstatus.jsp">
<div class="container">
      <div class="main-content">
        <p class="text">Subinay Pal</p>
      </div>
  
      <div class="centre-content">
        <h1 class="price">
        
        <script src="https://cdn.lordicon.com/qjzruarw.js"></script>
<lord-icon
    src="https://cdn.lordicon.com/ujmqspux.json"
    trigger="loop"
    delay="2000"
    style="width:150px;height:150px">
</lord-icon>
        
        <span></span></h1>
        <p class="course">
        
        </p>
      </div>
   
      <div class="last-content">
      <!-- 
        <button type="button" class="pay-now-btn">
           Apply Coupons
        </button>
        <button type="button" class="pay-now-btn">
           Pay with Netbanking
        </button>
    -->
        <!-- <button type="button" class="pay-now-btn">
        Netbanking options
        </button> -->
      </div>
  
      <div class="card-details">
        <p>Receiver Account Details </p>
        
        
        <div class="transaction-id">
          <label> Transaction Id. </label>
          <input
            type="text"
            class="transaction-id-field"
            value="<%=ts1 %>" readonly
            name="tid"
            
            />
            
        </div>
  
        <div class="card-number">
          <label> Account Number </label>
          <input
            type="text"
            class="account-number-field"
            placeholder="####-###-####"
            name="accountnumber"
            />
        </div>
        <div class="nameholder-number">
          <label>Holder's Name </label>
          <input
            type="text"
            class="account-name-field"
            placeholder="Enter your Name"
            name="hname"
            />
        </div>
        <div class="phone-number">
          <label> Phone Number </label>
          <input
            type="text"
            class="phone-number-field"
            placeholder="1234567890"
            name="phonenumber"/>
        </div>
        
        <div class="email">
          <label> Email Id. </label>
          <input
            type="email"
            class="email-field"
            placeholder="abc@gmail.com"
            name="email"
            />
        </div>
        
        <br />
        <div class="date-number">
          <label> Date </label>
          <input type="text" class="date-number-field" 
                 placeholder="DD-MM-YY" 
                 name="date"
                 />
        </div>
        <br />
        
        <div class="phone-number">
          <label> Amount </label>
          <input
            type="text"
            class="ammount-number-field"
            placeholder="1234567890"
            name="amount"
            />
        </div>
  <!-- 
        <div class="cvv-number">
          <label> CVV number </label>
          <input type="text" class="cvv-number-field" 
                 placeholder="xxx" />
        </div>
   -->   
   
   
   <div class="transaction-id">
          <label> User Id. </label>
          <input
            type="text"
            class="user-id-field"
            value="<%=uid %>" readonly
            name="tid"
            
            />
            
        </div>
   
   
   
        <button type="submit" 
                class="submit-now-btn">
          Transfer
        </button>
      </div>
    </div>
    </form>
</body>
</html>