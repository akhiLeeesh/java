<%@ page  import="java.sql.*" import="databaseconnection.*" %>
<%
String at = request.getParameter("at");
String pos = request.getParameter("pos");
String loc = request.getParameter("loc");
String link= request.getParameter("link");
String des= request.getParameter("des");


try{
Connection con1 = databasecon.getconnection();
Statement st1 = con1.createStatement();

st1.executeUpdate("insert into requirement(at,position, location, link, des, name) values('"+at+"','"+pos+"','"+loc+"','"+link+"','"+des+"','"+session.getAttribute("name")+"')");
		response.sendRedirect("addreq.jsp?id=succ");

		}


catch(Exception e1)
{
out.println(e1.getMessage());
}

%>