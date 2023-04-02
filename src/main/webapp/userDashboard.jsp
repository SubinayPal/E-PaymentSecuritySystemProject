<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>

@import url('https://fonts.googleapis.com/css?family=Exo:400,700');

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

.container {
    display: flex;
    flex-direction: row;
    align-content: center;
    align-items: center;
    margin-left:1vh;
}


.bttn-one {
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    margin: 2rem;
    text-decoration:none;

    width: 2rem;
    height: 1rem;

    border-radius: 1.25em;
    padding: 2em 3.25em 2em 3.25em;
    background: rgb(13, 0, 26);
    color: white;
    background-blend-mode: multiply;
    box-shadow: 0em .25em 2em 0em rgba(253, 151, 255, 1);

}




.bttn-two {
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    margin: 2rem;
	text-decoration:none;

    width: 2rem;
    height: 1rem;

    padding: 2em 3.25em 2em 3.25em;
    background: #010028;
    color: white;
    background-blend-mode: multiply;
    box-shadow: 0em .25em 2em 0em #B0FFF1;
    border-radius: 1.25em;

}



</style>

</head>
<body>
<form>
<section>
<div class="context">
<script src="https://cdn.lordicon.com/pzdvqjsp.js"></script>
<center>


<lord-icon
    src="https://cdn.lordicon.com/dqxvvqzi.json"
    trigger="loop"
    delay="2000"
    colors="outline:#121331,primary:#ffc738,secondary:#4bb3fd"
    style="width:150px;height:150px">
</lord-icon>
</center>

<div class="container">
    <button type="button" class="bttn-one"><a href="transaction.jsp" class="bttn-one">Transaction</a></button>
    <button type="button" class="bttn-two"><a href="profile.jsp" class="bttn-two">Profile</a></button>
<script src="https://cdn.lordicon.com/qjzruarw.js"></script>
<a href="transactionhistory.jsp">
<lord-icon
    src="https://cdn.lordicon.com/pqxdilfs.json"
    trigger="loop"
    delay="1000"
    style="width:90px;height:90px">
</lord-icon>
</a>
  </div>



</div>


</section>




    </form>
</body>


</html>
