<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Wrong Input</title>
<style>
	body{
		background: #A1E5F5;
	}
    .text {
        text-align: center;
        margin-top: 100px;
    }
    
    h1 {
        color: red;
    }
    
    .btn {
        text-align: center;
        margin-top: 20px;
    }
    
    button {
        padding: 10px 20px;
        font-size: 16px;
        background-color: #4CAF50;
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }
    
    button:hover {
        background-color: #45a049;
    }
</style>
</head>
<body>
<div class="text">
<h1>Wrong User Id or Password...!!!</h1>
<h2>Go back and try again...</h2>
</div>
<div class="btn">
<a href="index.jsp"><button>Home Page</button></a>
</div>

</body>
</html>
