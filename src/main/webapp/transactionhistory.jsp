<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="p1.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="javax.crypto.*" %>
<%
	Connect c1=new Connect();

	String uid=(String)session.getAttribute("uid");
	System.out.println(uid);



	ArrayList<ReceiverInfo> arr = c1.getReciverData(uid);
	//RSA rsa = new RSA();
	AES_ENCRYPTION aes = new AES_ENCRYPTION();
	//aes.init();
	
	
	
	
%>    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>


<style>

@import url('https://fonts.googleapis.com/css?family=Poppins:400,500,600,700,800,900&display=swap');

* {
  margin: 0;
  padding: 0;
  outline: 0;
}

body {
  font-family: 'Poppins', sans-serif;
}

section{
  width: 100%;
  height: 100vh;
  background: linear-gradient(-45deg, #3f51b1 0%, #5a55ae 13%, #7b5fac 25%, #8f6aae 38%, #a86aa4 50%, #cc6b8e 62%, #f18271 75%, #f3a469 87%, #f7c978 100%);;
  background-size: 400% 400%;
  position: relative;
  animation: animate 7.5s ease-in-out infinite;
  display: flex;
  justify-content: center;
  align-items: center;
}

h1{
  color: #fff;
  background: rgba(255,255,255,.2);
  padding: 20px;
  font-size: 50px;
  border-radius: 10px;
}

@keyframes animate{
  0%{
    background-position: 0 50%;
  }
  50%{
    background-position: 100% 50%;
  }
  100%{
    background-position: 0 50%;
  }
}

table{
	border: 2px solid black;
	background-color: white;
	width: 75%;
	
}


</style>


</head>
<body>

<section>

<table>
	<tr>
	<th>Transaction Id</th>
	<th>Account Number</th>
	<th>Holder's Name</th>
	<th>Phone Number</th>
	<th>Email</th>
	<th>Date</th>
	<th>Amount</th>
	
	
	</tr>
	<%
		
		for(int i=0;i<arr.size();i++)
		{
			ReceiverInfo obj = null;
			String accno = null;
			String hname=null;
			String phonenumber=null;
			String email= null;
			
			/* String key = null;
			SecretKey okey = null; */
			
			try{
			obj = (ReceiverInfo)arr.get(i);
			accno = obj.getAccountnumber();
			phonenumber = obj.getPhonenumber();
			email = obj.getEmail();
			//System.out.println(accno);
			
			/*key = c1.getKeyDB(obj.getTid());*/
			
			//aes.setKey(key);
			 
			//System.out.println("In transaction history = "+key);
			
			//accno=rsa.decrypt(accno);
			 accno = aes.decrypt(accno);
			 phonenumber = aes.decrypt(phonenumber);
			 email = aes.decrypt(email);
			//System.out.println(accno);	
			}catch(Exception e)
			{
				e.printStackTrace();
			}
		
	%>
		<tr>
		<td><%=obj.getTid()%></td>
		<td><%=accno %></td>
		<td><%=obj.getHname() %></td>
		<td><%=phonenumber %></td>
		<td><%=email %></td>
		<td><%=obj.getDate() %></td>
		<td><%=obj.getAmount() %></td>
		
		
		</tr>
	<%
		}
	%>
</table>


</section>

</body>
</html>