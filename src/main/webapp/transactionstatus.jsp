<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="p1.Connect" %>
<%@ page import="p1.*" %>
<%
	Connect c1=new Connect();

	String uid=(String)session.getAttribute("uid");
	System.out.println(uid);


	//RSA rsa = new RSA();
	AES_ENCRYPTION aes = new AES_ENCRYPTION();
	/*aes.init();*/
	String tid=request.getParameter("tid");
	
	//String accountnumber=rsa.encrypt(request.getParameter("accountnumber"));
	String accountnumber=aes.encrypt(request.getParameter("accountnumber"));
	//System.out.println(accountnumber);
	//String decAcc = aes.decrypt(accountnumber);
	//System.out.println("decrypted acc no = "+decAcc);
	String hname=request.getParameter("hname");
	
	//String phonenumber=rsa.encrypt(request.getParameter("phonenumber"));
	String phonenumber=aes.encrypt(request.getParameter("phonenumber"));
	
	//String email=rsa.encrypt(request.getParameter("email"));
	String email=aes.encrypt(request.getParameter("email"));
	
	String date=request.getParameter("date");
	String amount=request.getParameter("amount");
	
	/*String key = aes.getKey();
	boolean b=c1.saveReceiverRecord(tid, accountnumber, hname, phonenumber, email, date, amount, key);*/
	boolean b=c1.saveReceiverRecord(tid, accountnumber, hname, phonenumber, email, date, amount, uid);
	
	
%>
<%=b %> <br/>
<%=tid %> <br/>
<%=accountnumber %>
  <br/>
<br/>
<br/>
<br/>
<%
	if(b==true){
		response.sendRedirect("userDashboard.jsp?status=true");
		
		
	}
	
%>

 
 