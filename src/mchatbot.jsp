<head>
<style> 
input[type=text] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    box-sizing: border-box;
    border: none;
    border-bottom: 2px solid red;
}
</style>
</head>
		<%
		String demail=(String)session.getAttribute("femail");
		%>
<%@ page  import="java.sql.*" import="databaseconnection.*" import="details.*" %>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
    margin: 0 auto;
    padding: 0 20px;
}

.container {
    border: 2px solid #dedede;
    background-color: #f1f1f1;
    border-radius: 5px;
    padding: 10px;
    margin: 10px 0;
}

.darker {
    border-color: #ccc;
    background-color: #ddd;
}

.container::after {
    content: "";
    clear: both;
    display: table;
}

.container img {
    float: left;
    max-width: 60px;
    width: 100%;
    margin-right: 20px;
    border-radius: 50%;
}

.container img.right {
    float: right;
    margin-left: 20px;
    margin-right:0;
}

.time-right {
    float: right;
    color: #aaa;
}

.time-left {
    float: left;
    color: #999;
}
</style>
</head>

<style>
table {
 height: 500px;
    width: 100%;
    display:block;
}
thead {
    display: inline-block;
    width: 100%;
    height: 20px;
}
tbody {
    height: 500px;
    display: inline-block;
    width: 100%;
    overflow: auto;
}
</style>

<body>
<br><br><br>
<!-- <table >
<tr><td > -->
<%
Connection ccc=databasecon.getconnection();
	Statement ss = ccc.createStatement();
		
	String sss = "select * from msgs  where chatof='"+request.getParameter("email")+""+demail+"'  order by sno ";

	ResultSet r=ss.executeQuery(sss);
	while(r.next())
	{
		if(r.getString("user_").equals(demail)){
%>
<div class="container">

  <img src="images/mentor.png" alt="Avatar" width="30" height="50">
  <p class="time-left"><%=r.getString("msg")%></p>
  <span class="time-right"><%=r.getString("time_")%></span>
</div>

<%	
}else{%>
<div class="container darker">
   <img src="images/mentee.png" alt="Avatar" class="right" width="30" height="50">
 <p class="time-right" ><%=r.getString("msg")%></p>
  <span class="time-left"><%=r.getString("time_")%></span>
</div>		
<%}
}
%>




					<form method="post" action="mchatbot2.jsp">
						<input  type="text" name="text"  autofocus placeholder="Your Message...">
						<input type="hidden" name="std" value="<%=request.getParameter("email")%>">
</form>
<!-- </table> -->
</body>
</html>
<br><br><br>

