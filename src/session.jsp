<%
					  String user123=(String)session.getAttribute("email");
					  if(user123 ==null)
					  {
							response.sendRedirect("index.jsp?id=exp");
					  }

%>