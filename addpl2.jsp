<%@ page  import="java.sql.*" import="databaseconnection.*" %>
<%
String at = request.getParameter("at");
String pos = request.getParameter("pos");
String loc = request.getParameter("loc");
String no= request.getParameter("no");
String des= request.getParameter("des");


try{
Connection con1 = databasecon.getconnection();
Statement st1 = con1.createStatement();

st1.executeUpdate("insert into campus(at,position, location, num, des) values('"+at+"','"+pos+"','"+loc+"','"+no+"','"+des+"')");
		response.sendRedirect("addplacements.jsp?id=succ");

		}


catch(Exception e1)
{
out.println(e1.getMessage());
}

%>