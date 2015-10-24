<%@ page contentType="text/html; charset=UTF-8" import="java.util.* , java.io.*, java.sql.*,java.util.Date"%>
<%@ page import="javax.servlet.*,java.text.*,java.util.*"  %>
<%
 {
 System.out.println("------------------------------------------------------------------------------------------");
 System.out.println("rating.jsp");
 String cat11 = request.getParameter("cat1");
String cat22 = request.getParameter("cat2");
String cat33= request.getParameter("cat3");
String regz= request.getParameter("regz");
if(regz.equals("null"))
{

response.sendRedirect("displaylarge.jsp?cat1="+cat11+"&cat2="+cat22+"&cat3="+cat33+"&regz="+regz+"&mess=please login");
}
else{
try{
DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
}
catch(java.lang.Exception  e){
System.out.println("Unable to Connect to Driver Class ");

}

String url="jdbc:oracle:thin:@localhost:1521:orcl";
Connection con=DriverManager.getConnection(url,"system","1");
try{
Statement smnt1 =con.createStatement();
String query1="select u_bid from books where category='"+cat11+"' and sub_category='"+cat22+"' and b_id='"+cat33+"'";
System.out.println(query1);
ResultSet res1=smnt1.executeQuery(query1);
boolean more1=res1.next();
int  h=res1.getInt("u_bid");
System.out.println(h);
Statement smnt2=con.createStatement();
String query2="insert into hits values("+h+","+regz+")";
System.out.println(query2);
ResultSet res2=smnt2.executeQuery(query2);
boolean more2=res2.next();
response.sendRedirect("displaylarge.jsp?cat1="+cat11+"&cat2="+cat22+"&cat3="+cat33+"&regz="+regz+"&mess=Your Feedback Is Being Saved.</br> Thank You</br>");
 }
 finally
 {
 
 }}}
 %>
