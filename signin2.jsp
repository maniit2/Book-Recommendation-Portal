<%@ page import ="java.sql.*" %>
<%
System.out.println("------------------------------------------------------------------------------------------");
 System.out.println("signin2.jsp");
    String namex="";
String regiscode="";

String un = request.getParameter("un1");
String pw1 = request.getParameter("pass1");
String cat11 = request.getParameter("cat");
String cat22 = request.getParameter("sub_cat");
String cat33= request.getParameter("bid");
int visit=Integer.parseInt(request.getParameter("visit"));
String url="jdbc:oracle:thin:@localhost:1521:orcl";
Connection con=DriverManager.getConnection(url,"system","1");
System.out.println("{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{");

 System.out.println(cat11);
System.out.println(cat22);
System.out.println(cat33);
try{
Statement smnt =con.createStatement();
String query="select * from regis1 where u_name='" + un + "' and pw='" + pw1 + "'";
ResultSet res=smnt.executeQuery(query);
String namex1;
String regz="";

   if (res.next()) { namex1=res.getString("name");
                       regz=res.getString("reg_n");       
	   System.out.println("comettttttttttttttt"+namex1);
		System.out.println(regz);
		System.out.println("cometttttttttttttt");
		session.setAttribute("userid", un);
			System.out.println("success.jsp?name="+namex1+"&regz="+regz+"& cat1="+cat11+"&cat2="+cat22+"&cat3="+cat33+"&visit="+visit+"");
        response.sendRedirect("success.jsp?name="+namex1+"&regz="+regz+" &cat1="+cat11+"&cat2="+cat22+"&cat3="+cat33+"&visit="+visit+"");
    } else {
	if(visit==0)
        response.sendRedirect("index.jsp?mess2=invalid username or password");
    else{
	System.out.println("displaylarge.jsp?mess2=invalid username or password & cat1="+cat11+"&cat2="+cat22+"&cat3="+cat33+"");
	response.sendRedirect("displaylarge.jsp?mess2=invalid username or password&cat1="+cat11+"&cat2="+cat22+"&cat3="+cat33+"");
	}
	}
	}
	finally
	{
	
	
	}
%>
