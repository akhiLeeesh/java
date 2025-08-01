<%@ page  import="java.sql.*"  import="java.util.Date"  import="java.util.Vector" import="databaseconnection.*" import="details.*"  %>


<%@ include file="theader.jsp"%>

<%
    String message=request.getParameter("id");
    if(message!=null && message.equalsIgnoreCase("succ")){
    out.println("<script type=text/javascript>alert('Data Added !! ')</script>");
	}
 %>
	                  

<script language="javascript" type="text/javascript">

function popitup(url) {
	newwindow=window.open(url,'name','height=600,width=800');
	if (window.focus) {newwindow.focus()}
	return false;
}

// -->
</script>
<br><br>
<h2>Add Placements ..</h1>


<form method="post" action="addpl2.jsp">
<br><input type="text" name="at" placeholder="Company" size="50"><br>
<br><input type="text" name="pos" placeholder="Position" size="50"><br>
<br><input type="text" name="loc" placeholder="Location" size="50"><br>
<br><input type="text" name="no" placeholder="Number of openings" size="50"><br>
<br><textarea name="des" rows="" cols="60" placeholder="Add Description of the Job" size="50"></textarea><br>

<br><input type="submit"></form>



<br><br><br><br>