<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="p1.Connect" %>
<%
	Connect c1 = new Connect();
	String accno = request.getParameter("accno");
	String cno = request.getParameter("cno");
	String ifsc = request.getParameter("ifsc");
	String uid = request.getParameter("uid");
	boolean b = c1.saveDetails(accno,cno,ifsc,uid);
	if(b==true){
		response.sendRedirect("profile.jsp");	
	}
	else{
		
	}
	
	
%>

    
