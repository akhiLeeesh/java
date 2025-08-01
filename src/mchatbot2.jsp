
<%@ page  import="java.sql.*"  import="java.util.*"  import="details.*" import="databaseconnection.*" %>



<%
String text=request.getParameter("text");
String std=request.getParameter("std");

try{

InsertChatBot2.main2(text,std,(String)session.getAttribute("femail"),(String)session.getAttribute("femail"));


}
catch(Exception e){
System.out.println("Exception Occured");
}
response.sendRedirect("mchatbot.jsp?email="+std+" ");


%>
