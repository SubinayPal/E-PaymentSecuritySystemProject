<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="p1.Connect" %>
<%
	Connect c1 = new Connect();
	String sname = request.getParameter("sname");
	String email = request.getParameter("email");
	String msg = request.getParameter("msg");
	boolean b = c1.saveContactUsDetails(sname, email, msg);
	if(b==true){
		response.sendRedirect("profile.jsp");
	}
	
%>