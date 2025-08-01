
<%@ page  import="java.sql.*" import="databaseconnection.*" import="javax.swing.JOptionPane"%>



<%! String name, lname, addr, city, state, zip, tele, email, un, pwd;
	int i=0;
%>
<%
try{
Connection con = databasecon.getconnection();

Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select max(id) from oldstd");
if(rs.next())
{
	i=rs.getInt(1);
	++i;
}
}
catch(Exception e){
System.out.println("Exception Occured");}

name=request.getParameter("name");
lname=request.getParameter("lname");
addr=request.getParameter("addr");
city=request.getParameter("city");
state=request.getParameter("state");
 zip=request.getParameter("zip");
tele=request.getParameter("tele");
String url=request.getParameter("url");

String  com=request.getParameter("com");String  posi=request.getParameter("posi");
 email=request.getParameter("email");
pwd=request.getParameter("pwd");
//System.out.println(pwd);
%>
<%
try{

Connection con = databasecon.getconnection();
Statement st=con.createStatement();
un="user"+i;
String sql="insert into oldstd(id,name,lname,address,city,state,zip,phone,email,url,position,company,pwd) values('"+i+"','"+name+"','"+lname+"','"+addr+"','"+city+"','"+state+"','"+zip+"','"+tele+"','"+email+"','"+url+"','"+com+"', '"+posi+"', '"+pwd+"')";
System.out.println(sql);
int q= st.executeUpdate(sql);


if(q>0)
{
	response.sendRedirect("profilepic2.jsp?id="+email+"");

	//response.sendRedirect("register.jsp?message=succ");
}
else
	response.sendRedirect("signup2.jsp?message=fail");

}
catch(Exception e)
{
e.printStackTrace();
	}
%>
