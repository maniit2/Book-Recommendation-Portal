
<%@ page contentType="text/html; charset=UTF-8" import="java.util.* , java.io.*, java.sql.*,java.util.Date"%>
<%@ page import="javax.servlet.*,java.text.*,java.text.DecimalFormat,java.lang.Long.*" %>
<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*,javax.faces.context.*" %>
<%

    

String un = request.getParameter("un");
String pw1 = request.getParameter("pw");
String name = request.getParameter("first_name");
int visit=Integer.parseInt(request.getParameter("visit"));
String regi1 ;
int regi;
regi=(int)(Math.random()*10000);
regi1 = String.format ("%d", regi);

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
String queriesa ="Select reg_n from regis1 ";
        Statement smnta=con.createStatement();
        ResultSet resa=smnta.executeQuery(queriesa);
	    boolean more1=resa.next();
	    while(more1)
		{
	      if(regi1==resa.getString("reg_n"))
	      {
	        regi=(int)(Math.random()*10000);
              //regi1=(String)regi;  /*diff. b/w (String) and Convert.ToString */
            regi1 = String.format ("%d", regi);
		System.out.println("stage 3 ");
		    more1=resa.first();
		   continue;
	      }
	        more1=resa.next();
			System.out.println("stage 4 ");
        }
		resa.close();
		queriesa ="Select reg_n from regis1 ";
         smnta=con.createStatement();
       resa=smnta.executeQuery(queriesa);
	     more1=resa.next();
	    while(more1)
		{
	      if(regi1==resa.getString("reg_n"))
	      {
	        regi=(int)(Math.random()*100000);
        
            regi1 = String.format ("%d", regi);
		System.out.println("stage 3 ");
		    more1=resa.first();
		   continue;
	      }
	        more1=resa.next();
			System.out.println("stage 4 ");
        }
		
		
Statement smnt =con.createStatement();
String query="insert into regis1(reg_n,name,u_name,pw) values('"+regi1+"','"+name+"','"+un+"','"+pw1+"')";
smnt.executeUpdate(query);
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

String redirectURL1 = "";
if(visit==0)
{ redirectURL1 = "index.jsp?mess=successfully signed up";
response.sendRedirect(redirectURL1);
}
else
{redirectURL1 = "displaylarge.jsp?mess=successfully signed up";
response.sendRedirect(redirectURL1);
}
    

%>


<html>
<head>
<title></title></head>
<body>


</body>
</html>
