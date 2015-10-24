<html><head>



</head><body><center><a href="index.jsp"><h1>HOME</h1></a>
<table width=100% height=500px cellspacing=4px border=1> 
	 <%@ page contentType="text/html; charset=UTF-8" import="java.util.* , java.io.*, java.sql.*,java.util.Date"%>
<%@ page import="javax.servlet.*,java.text.*,java.util.*"  %>
<% { System.out.println("------------------------------------------------------------------------------------------");
int p1=Integer.parseInt(request.getParameter("cat1"));
int p2=Integer.parseInt(request.getParameter("cat2"));
int k1=1;
String regz=request.getParameter("regz");
try{
DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
}
catch(java.lang.Exception  e){
System.out.println("Unable to Connect to Driver Class ");

}
try{ System.out.println("welcome");

String url="jdbc:oracle:thin:@localhost:1521:orcl";
Connection con=DriverManager.getConnection(url,"system","1");
System.out.println("welcome --connection");
try{
Statement smnt =con.createStatement();
String query="select count(b_id) from books where category='"+p1+"' and sub_category='"+p2+"'";
ResultSet res=smnt.executeQuery(query);
System.out.println(res);
boolean more=res.next();
System.out.println(more);

Statement smnt1 =con.createStatement();
String query1="select b_name,author,rating,publication from books where category='"+p1+"' and sub_category='"+p2+"'";
ResultSet res1=smnt1.executeQuery(query1);
boolean more1=res1.next();


System.out.println("count(b_id)"+res.getInt("count(b_id)"));
for(k1=1;k1<=(res.getInt("count(b_id)"));k1++){
%>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <tr><td><a href="displaylarge.jsp?cat1=<%=p1%>&cat2=<%=p2%>&cat3=<%=k1%>&regz=<%=regz%>"><img src="${pageContext.request.contextPath}/displayimagenew2.jsp?cat=<%=p1%>&sub_cat=<%=p2%>&bid=<%=k1%>" width=250px height=250px align=left></a>
Book Name : <%=res1.getString("b_name")%></br>
Author Name : <%=res1.getString("author")%></br>
Publisher : <%=res1.getString("publication")%></br>
people's Rating : <%=res1.getInt("rating")%></br>
Arctic Buzz 's Rating :
 
 
 
 
 
 
 
 
 
 
 
 </td></tr>
 <%
 
 more1=res1.next();
 }%>
		 
		 

<% 

System.out.println("welcome jai ho");

}
catch(java.lang.Exception ex)
{
System.out.println("**Input provided is invalid**");
           ex.printStackTrace();

}
con.close();
}
catch(java.lang.Exception ex)
{
 System.out.println("**Input provided is invalid2**");
           ex.printStackTrace();
		  
}




System.out.println("finished.....................................yahooo000000000000");
}%></table>

<a href="index.jsp"><h1>HOME</h1></a>
</center>
</body></html>


