
<%@ page  import="java.sql.*"  import="java.util.*"  import="details.*" import="com.mysql.*" %>



<%
String text=request.getParameter("text");

String mentor=request.getParameter("mentor");

try{

InsertChatBot2.main(text,(String)session.getAttribute("name"),(String)session.getAttribute("email"),mentor);


}
catch(Exception e){
System.out.println("Exception Occured");
}
response.sendRedirect("chat2.jsp?email="+mentor+" ");


%>
