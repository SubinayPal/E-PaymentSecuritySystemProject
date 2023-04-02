<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="p1.Connect" %>
<%
	Connect c1=new Connect();
	String name=request.getParameter("name");
	String email=request.getParameter("email");
	String contact=request.getParameter("contact");
	String uid=request.getParameter("uid");
	String pwd=request.getParameter("pwd");
	
	boolean b=c1.saveRecord(name,email,contact,uid,pwd);
	
%>


<html>
  <head>
    <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:400,400i,700,900&display=swap" rel="stylesheet">
  </head>
    <style>
      body {
        text-align: center;
        padding: 40px 0;
        background: #EBF0F5;
      }
        h1 {
          color: #88B04B;
          font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
          font-weight: 900;
          font-size: 40px;
          margin-bottom: 10px;
        }
        p {
          color: #404F5E;
          font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
          font-size:20px;
          margin: 0;
        }
      i {
        color: #9ABC66;
        font-size: 100px;
        line-height: 200px;
        margin-left:-15px;
      }
      .card {
        background: white;
        padding: 60px;
        border-radius: 4px;
        box-shadow: 0 2px 3px #C8D0D8;
        display: inline-block;
        margin: 0 auto;
      }
    </style>
    <body>
      <div class="card">
      <div style="border-radius:200px; height:200px; width:200px; background: #F8FAF5; margin:0 auto;">
        <i class="checkmark">
        <script src="https://cdn.lordicon.com/xdjxvujz.js"></script>
<lord-icon
    src="https://cdn.lordicon.com/cfyppusy.json"
    trigger="hover"
    style="width:250px;height:250px">
</lord-icon>
        </i>
      </div>
        <h1>Success</h1> 
        <p>Your are ready to use our services. &#128516;
        <br/>
         A secure transaction is our only mission.
         <lord-icon
    src="https://cdn.lordicon.com/nuytrczo.json"
    trigger="hover"
    colors="outline:#121331,primary:#646e78,secondary:#4faef9,tertiary:#f5c5bc"
    style="width:32px;height:32px">
</lord-icon>
         </p>
      </div>
    </body>
</html>

