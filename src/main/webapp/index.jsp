<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.Random" %>
<%
	Random r = new Random();
	int x = Math.abs(r.nextInt(1000,9999));
	System.out.println(x);
%>
<!DOCTYPE html>
<html>
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    
    
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
    <title>home page</title>
    
<style>
.btn btn-primary{
  border: 1px solid #999999;
  background-color: #cccccc;
  color: #666666;
}
</style>
    
  </head>
  <body>
	<nav class="navbar navbar-light bg-secondary" >
	  <div class="container-fluid">
	    <span class="navbar-brand mb-0 h1"><font color="white"  style="font-family:verdana; font-size:35px"> E-Payment Security System </font>
	    <lord-icon
    src="https://cdn.lordicon.com/zkfbupwq.json"
    trigger="loop"
    delay="1000"
    colors="outline:#121331,primary:#3a3347,secondary:#4bb3fd,tertiary:#ffc738,quaternary:#ebe6ef"
    style="width:100px;height:100px">
</lord-icon>
	   </span>
	    <span><a href="#myModal" role="button" class="btn btn-lg btn-primary" data-bs-toggle="modal">Sign in</a>
	    <a href="#myModal2" role="button" class="btn btn-lg btn-primary" data-bs-toggle="modal">Sign Up</a></span>
	    
	  </div>
	</nav>
	
	<!-- Sign in Modal Design -->
	<form name="f1" id="f1" method="post" action="checkuser.jsp">
	<div class="bs-example">
	    <div id="myModal" class="modal fade" tabindex="-1">
	        <div class="modal-dialog">
	            <div class="modal-content">
	                <div class="modal-header">
	                    <h3 class="modal-title">Sign in
	                    
	                    <lord-icon
    src="https://cdn.lordicon.com/rverfdch.json"
    trigger="loop"
    delay="1000"
    colors="outline:#242424,primary:#4030e8,secondary:#e4e4e4,tertiary:#d1faf0"
    style="width:70px;height:70px">
</lord-icon>
	                 </h3>   
	                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
	                </div>
	                 <div class="modal-body">
	                    <div class="row">
	                        <div class="col-12">
	                            <div class="mb-3">
	                                <label class="form-label">User ID</label>
	                                <input type="email" class="form-control" name="uid">
	                            </div>
	                            
	                        </div>
	                    </div>
	                    <div class="row">
	                        <div class="col-12">
	                            <div class="mb-3">
	                                <label class="form-label">Password</label>
	                                <input type="password" class="form-control" name="pwd">
	                            </div>
	                        </div>
	                    </div>
	                    
	                    <div class="row">
	                        <div class="col-6">
	                            <div class="mb-3">
	                                <label class="form-label">Captcha</label>
	                                <input type="text" class="form-control" value="<%=x%>" disabled>
	                            </div>
	                        </div>
	                        <input type="hidden" name="cap" id="cap" value="<%=x%>">
	 
	                        <div class="col-6">
	                        <div class="mb-3">
	                                <input type="text" class="form-control" onkeyup="checkCap(this.value)">
	                        </div>
	                        </div>
	                    </div>
	                    
	                    
	                    
	                </div>
	                <div class="modal-footer">
	                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
	                    <button type="submit" class="btn btn-primary style1" id="signin">Sign in</button>
	                </div>
	            </div>
	        </div>
	    </div>
	</div>
	</form>
	<!-- Sign Up Modal Design -->
	
    <form name="f2" id="f2" method="post" action="save.jsp">
	<div class="bs-example">
	    <div id="myModal2" class="modal fade" tabindex="-1">
	        <div class="modal-dialog">
	            <div class="modal-content">
	                <div class="modal-header">
	                    <h3 class="modal-title">Register</h3>
	                    
	                    <script src="https://cdn.lordicon.com/xdjxvujz.js"></script>
<lord-icon
    src="https://cdn.lordicon.com/qrgbwxzp.json"
    trigger="loop"
    delay="1000"
    colors="outline:#121331,primary:#3a3347,secondary:#646e78,tertiary:#ebe6ef"
    style="width:50px;height:50px">
</lord-icon>
	                    
	                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
	                </div>
	                 <div class="modal-body">
	                    
	                    <div class="row">
	                        <div class="col-12">
	                            <div class="mb-3">
	                                <label class="form-label">Name</label>
	                                <input type="text" class="form-control" name="name" required>
	                            </div>
	                            
	                        </div>
	                    </div>
	                    <div class="row">
	                        <div class="col-12">
	                            <div class="mb-3">
	                                <label class="form-label">Email</label>
	                                <input type="email" class="form-control" name="email" required>
	                            </div>
	                            
	                        </div>
	                    </div>  
	                    <div class="row">
	                        <div class="col-12">
	                            <div class="mb-3">
	                                <label class="form-label">Contact</label>
	                                <input type="tel" class="form-control" maxlength="10" name="contact" required>
	                            </div>
	                        </div>
	                    </div>
	                    <div class="row">
	                        <div class="col-12">
	                            <div class="mb-3">
	                                <label class="form-label">User ID</label>
	                                <input type="email" class="form-control" name="uid" required>
	                            </div>
	                            
	                        </div>
	                    </div>
	                    <div class="row">
	                        <div class="col-12">
	                            <div class="mb-3">
	                                <label class="form-label">Password</label>
	                                <input type="password" class="form-control" maxlength="16" minlength="8" name="pwd"  required>
	                            </div>
	                        </div>
	                    </div>
	                        
	                    
	                </div>
	                <div class="modal-footer">
	                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
	                    <button type="submit" class="btn btn-primary">Sign up</button>
	                </div>
	            </div>
	        </div>
	    </div>
	</div>
	
	</form>
	
	<div>
		<img alt="image not found" src="img/Payement1.png" width="100%" height="50%">
	</div>
	
	
	<script>
		$(document).ready(function(){
			$('#myModal').modal('show');
			$("#signin").prop('disabled',true)
		})
		function checkCap(v)
		{
			
			var x=$("#cap").val()
			x=parseInt(x)
			if(v.length==4)
				{
					if(v==x)
						{
						$("#signin").prop('disabled',false)
						}
					else{
						alert("No")
					}
				}
		}
	</script>
  </body>
</html>
