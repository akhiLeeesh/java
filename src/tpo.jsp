<%
String title="";
%>

<%@ include file="header.jsp"%>
							<%
						
							String message=request.getParameter("id");
							if(message!=null )
							{
								out.println("<font color='Green'><h2>Registration Successful</h2></font>");
							}
						
						%>
						<br><br><br>
<font size="+3" color="#6666ff" align="center"><h1>Login Page for TPO</h1></font>

<form method="post" action="tlogin.jsp">
	<table  align="center" cellpadding=10><tr><td>

	<tr><td><input type="text" name="uid" required placeholder="Username"  size="40">
		<tr><td><input type="password" name="pwd" required placeholder="Password" size="40">

			<tr><td>		  <div class="form_settings"><input class="submit" type="submit"  value="  Login   &nbsp;&nbsp;   " >

</form>

</tr>
</table>						
<br><br>



<%@ include file="footer.jsp"%>
