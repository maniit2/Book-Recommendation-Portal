<%
System.out.println("------------------------------------------------------------------------------------------");
 System.out.println("success.jsp");
String cat11 = request.getParameter("cat1");
String cat22 = request.getParameter("cat2");
String cat33= request.getParameter("cat3");
String regz= request.getParameter("regz");
 System.out.println(request.getParameter("regz"));
 System.out.println(cat11);
System.out.println(cat22);
System.out.println(cat33);
 System.out.println(request.getParameter("cat2"));
int visit=0;
try{
visit=Integer.parseInt(request.getParameter("visit"));
}
catch(java.lang.NumberFormatException y)
{}
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) { response.sendRedirect("index.jsp?mess2=Invalid username or password ");

%>
You are not logged in<br/>
<a href="index.jsp">Please Login</a>
<%} else {
if(visit==0){
String a=request.getParameter("name");
 System.out.println(a);
 response.sendRedirect("index.jsp?mess2=Hi "+a+"&regz="+regz+"");
}
else{ System.out.println("displaylarge.jsp?cat1="+cat11+"&cat2="+cat22+"&cat3="+cat33+"");
	response.sendRedirect("displaylarge.jsp?cat1="+cat11+"&cat2="+cat22+"&cat3="+cat33+"&regz="+regz+"");

}
 %>
Welcome <%=session.getAttribute("userid")%>
<a href='logout.jsp'>Log out</a>
<%
    }
%>

