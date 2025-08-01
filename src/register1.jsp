
<%@ page  import="java.sql.*" import="databaseconnection.*" import="javax.swing.JOptionPane"%>



<%! String name, lname, addr, city, state, zip, tele, email, un, pwd;
	int i=0;
%>
<%
try{
Connection con = databasecon.getconnection();

Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select max(id) from student");
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
String branch=request.getParameter("branch");

String  year=request.getParameter("year");
 email=request.getParameter("email");
pwd=request.getParameter("pwd");
//System.out.println(pwd);
%>
<%
try{

Connection con = databasecon.getconnection();
Statement st=con.createStatement();
un="user"+i;
String sql="insert into student(id,name,lname,address,city,state,zip,phone,email,branch,year,pwd) values('"+i+"','"+name+"','"+lname+"','"+addr+"','"+city+"','"+state+"','"+zip+"','"+tele+"','"+email+"','"+branch+"','"+year+"', '"+pwd+"')";
System.out.println(sql);
int q= st.executeUpdate(sql);


if(q>0)
{
	response.sendRedirect("profilepic.jsp?id="+email+"");

	//response.sendRedirect("register.jsp?message=succ");
}
else
	response.sendRedirect("signup.jsp?message=fail");

}
catch(Exception e)
{
e.printStackTrace();
	}
%>
