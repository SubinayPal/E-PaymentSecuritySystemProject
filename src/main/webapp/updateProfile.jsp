<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%
	String uid=(String)session.getAttribute("uid");
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">
@import url(https://fonts.googleapis.com/css?family=Lato:300,400,700);
body {
  background: #404142;
  color: #fff;
  font-weight: 400;
  font-size: 1em;
  font-family: 'Lato', Arial, sans-serif;
  margin:0;
  padding:0;
  padding-bottom:60px;
}
.ccheader {
  margin: 0 auto;
  padding: 2em;
  text-align: center;
}

.ccheader h1 {
  margin: 0;
  font-weight: 300;
  font-size: 2.5em;
  line-height: 1.3;
}
.ccheader {
  margin: 0 auto;
  padding: 2em;
  text-align: center;
}

.ccheader h1 {
  margin: 0;
  font-weight: 300;
  font-size: 2.5em;
  line-height: 1.3;
}

/* Form CSS*/
.ccform {
   margin: 0 auto;
    width: 800px;
}
.ccfield-prepend{
  margin-bottom:10px;
  width:100%;
}

.ccform-addon{
  color:#f8ae45; 
  float:left;
  padding:8px;
  width:8%;
  background:#FFFFFF;
  text-align:center;  
}

.ccformfield {
  color:#000000; 
  background:#FFFFFF;
  border:none;
  padding:15.5px;
  width:91.9%;
  display:block;
  font-family: 'Lato',Arial,sans-serif;
  font-size:14px;
}

.ccformfield {
  font-family: 'Lato',Arial,sans-serif;
}
.ccbtn{
  display:block;
  border:none;
  background:#f8ae45;
  color:#FFFFFF;
  padding:12px 25px;
  cursor:pointer;
  text-decoration:none;
  font-weight:bold;
  margin-left: 50vh;
}
.ccbtn:hover{
  background:#d8850e;

}
.credit {
  color:#fff;
  width: 800px;
  clear:both;
margin:0 auto;
  line-height:25px;
 padding: 25px 50px; 
}
.credit em{
margin-right:5px;
}
.credit a {
color: #0d2ed5;
font-weight: bold;
text-decoration: none;
}
</style>

</head>
<body>
<link href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">

<header class="ccheader">
    <h1>Update Profile</h1> 
</header>

<div class="wrapper">
    <form method="post" action="updateEdit.jsp" class="ccform">
    <div class="ccfield-prepend">
        <span class="ccform-addon" ></span>
        <input class="ccformfield" type="text" placeholder="Account Number" name="accno" required>
    </div>
    <div class="ccfield-prepend">
        <span class="ccform-addon" ></span>
        <input class="ccformfield" type="text" placeholder="Card Number" name="cno" required>
    </div>
    <div class="ccfield-prepend">
        <span class="ccform-addon"  ></span>
        <input class="ccformfield" type="text" placeholder="IFSC Code" name="ifsc" required>
    </div>
    <div class="ccfield-prepend">
        <span class="ccform-addon"  ></span>
        <input class="ccformfield" type="text" placeholder="User Id <%=uid %>" name="uid" required>
    </div>
    
    <!-- 
    
     <div class="ccfield-prepend">
        <span class="ccform-addon"></span>
        <input class="ccformfield" type="text" placeholder="" required>
    </div>
    <div class="ccfield-prepend">
        <span class="ccform-addon"></span>
        <input class="ccformfield" type="text" placeholder="" required>
    </div>
    <div class="ccfield-prepend">
        <span class="ccform-addon"></span>
        <input class="ccformfield" type="text" placeholder="" required>
    </div>
    
     -->
    
    <div class="ccfield-prepend">
        <input class="ccbtn" type="submit" value="Save">
    </div>
    
    
    
    </form>
</div>


</body>
</html>