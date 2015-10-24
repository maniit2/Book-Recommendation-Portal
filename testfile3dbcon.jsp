
<%@ page contentType="text/html; charset=UTF-8" import="java.util.* , java.io.*, java.sql.*,java.util.Date"%>
<%@ page import="javax.servlet.*,java.text.*,java.util.*"  %>
<%
try{
DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
}
catch(ClassNotFoundException e){
System.out.println("Unable to Connect to Driver Class ");
return ;
}
try{
String url="jdbc:oracle:thin:@localhost:1521:XE";
Connection con=DriverManager.getConnection(url,"system","1");
try{
Statement smnt =con.createStatement();
String query="select * from abc";
ResultSet res=smnt.executeQuery(query);
boolean more=res.next();
while(more)
{
System.out.println("Col1:"+res.getInt("sno"));
more=res.next();
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








%>
