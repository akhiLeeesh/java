<%@ include file="header.jsp"%>

<br><br><br>
<font size="+3" color="#6666ff" align="center"><h1>Login Page for Former Student</h1></font>

<b>

					<table  cellspacing=20 ><tr><td>
	                  <%
                                                       String m=request.getParameter("id");
                                                       if(m!=null && m.equalsIgnoreCase("fail"))
                                                       {
                                                               out.println("<font  color='red'><blink><h3>&nbsp;&nbsp;&nbsp;Login Fail   !! </blink></font></h3>");
                                                       }
                                               %>
											   </table>



<form method="post" action="ulogin2.jsp">
	<table  align="center" cellpadding=10><tr><td>

	<tr><td><input type="text" name="uid" required placeholder="Username"  size="45">
		<tr><td><input type="password" name="pwd" required placeholder="Password" size="45">

			<tr><td>		  <div class="form_settings"><input class="submit" type="submit"  value="  Login   &nbsp;&nbsp;   " >

</form>

</tr>
</table>						

										<br><br>							<center><h2><a class="active" href="signup2.jsp">Former Student Sign Up</a>	   </h2></center>



<br><br><br>
<%@ include file="foote.jsp"%>