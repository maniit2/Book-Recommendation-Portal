<%@ page contentType="text/html; charset=UTF-8" import="java.util.* , java.io.*, java.sql.*,java.util.Date"%>
<%@ page import="javax.servlet.*,java.text.*,java.util.*"  %>
<% { System.out.println("------------------------------------------------------------------------------------------");
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
String query="select * from abc2";
ResultSet res=smnt.executeQuery(query);
System.out.println(res);
boolean more=res.next();
System.out.println(more);
Blob b;
OutputStream oImage;
out.println("<html><head></head><body>");
while(more)
{
byte barray[]=res.getBytes(2);
response.setContentType("image/gif");
oImage=response.getOutputStream();
out.println("<div>");
oImage.write(barray);
oImage.flush();
oImage.close();
out.println("</div>");

more=res.next();
System.out.println("welcome jai ho");
out.println("</body></html>");
}
}
catch(java.lang.Exception ex)
{
System.out.println("**Input provided is invalid**");
           ex.printStackTrace();

}
}
catch(java.lang.Exception ex)
{
 System.out.println("**Input provided is invalid2**");
           ex.printStackTrace();
		  
}

out.println("welcome");


System.out.println("finished***********************");

}

%>
