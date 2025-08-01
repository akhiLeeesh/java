<%
session.invalidate();%>
	                  <%
                                                       String m=request.getParameter("id");
                                                       if(m!=null && m.equalsIgnoreCase("exp"))
                                                       {
                                                                  out.println("<script type=text/javascript>alert('Sorry, your session expired, login again '); </script>");
                                                       }
                                               %>


<%@ include file="header.jsp"%>

<%@ include file="footer.jsp"%>