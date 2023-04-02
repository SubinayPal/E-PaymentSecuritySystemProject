<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="p1.Connect" %>
    
    
    
<%
	Connect c1 = new Connect();
	//String name=request.getParameter("name");
	//String email=request.getParameter("email");
	//String contact=request.getParameter("contact");
	String uid = request.getParameter("uid");
	String pwd = request.getParameter("pwd");
	
	boolean b = c1.checkRecord(uid,pwd);
		if(b==true){
			session.setAttribute("uid",uid);
			
			response.sendRedirect("userDashboard.jsp");	
		}
		else{
			
		}
	//System.out.println(b);
%>