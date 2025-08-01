
<%@ include file="uheader.jsp"%>
<%@ page  import="java.sql.*" import="databaseconnection.*" import="details.*" %>



<%
try{
Connection con = databasecon.getconnection();
Statement st=con.createStatement();
Statement st2=con.createStatement();
String sql="SELECT * FROM oldstd";
//System.out.println(sql);
ResultSet rs=st.executeQuery(sql);
ResultSet rs2=null;
%>
<h3>View Results are...</i></h2><br>

<table align="" id="tab" width="100%">
<tr><th>Name<th>Contact<th>Email<th>Company<th>Link<th>Chat
<%
while(rs.next()){
%>
<tr>&nbsp;&nbsp;&nbsp;<td><%=rs.getString("name")%>&nbsp;&nbsp;&nbsp;&nbsp;<td><%=rs.getString("phone")%>&nbsp;&nbsp;&nbsp;&nbsp;<td><%=rs.getString("email")%><td>&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString("position")%>(<%=rs.getString("company")%>)<td><a href="<%=rs.getString("url")%>" target="_blank">Link</a>
<td><a href="#" onclick="window.open('chat2.jsp?email=<%=rs.getString("email")%>', 'newwindow', 'width=650, height=650'); return false;">Chat</a> 

<%
}


}
catch(Exception e){
System.out.println("11="+e);
}
%>
</table>
<%@ include file="ufooter.jsp"%>
