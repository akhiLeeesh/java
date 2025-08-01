
<%@ include file="uheader.jsp"%>
<%@ page  import="java.sql.*" import="databaseconnection.*" import="details.*"  %>



<%
try{
Connection con = databasecon.getconnection();
Statement st=con.createStatement();
Statement st2=con.createStatement();
String sql="select * from campus where sno='"+request.getParameter("id")+"'";
System.out.println(sql);
ResultSet rs=st.executeQuery(sql);
ResultSet rs2=null;
int cc=1;
%>


<table id="tab" width="100%" >
<tr><th>View Description
<%
while(rs.next()){
%>
<tr><td><%=rs.getString("des")%>

<%
}


}
catch(Exception e){
System.out.println("11="+e);
}
%>
</table>
