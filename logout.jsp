<%

int visit=Integer.parseInt(request.getParameter("visit"));
session.setAttribute("userid", null);
session.invalidate();
System.out.println("ttttttttttttttttttt");
if(visit==0)
response.sendRedirect("index.jsp");
else
response.sendRedirect("displaylarge.jsp");
%>
