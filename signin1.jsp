
<%@ page contentType="text/html; charset=UTF-8" import="java.util.* , java.io.*, java.sql.*,java.util.Date"%>
<%@ page import="javax.servlet.*,java.text.*,java.text.DecimalFormat,java.lang.Long.*" %>
<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*,javax.faces.context.*" %>
<%

    {
    String url="jdbc:oracle:thin:@localhost:1521:orcl";
	Connection con=DriverManager.getConnection(url,"system","1");
String namex="";
String regiscode="";
String un = request.getParameter("un1");
String pw1 = request.getParameter("pass1");
String cat11 = request.getParameter("cat");
String cat22 = request.getParameter("sub_cat");
String cat33= request.getParameter("bid");
int visit=Integer.parseInt(request.getParameter("visit"));
int y=0;
  System.out.println("database checking home");
  System.out.println(un);
    System.out.println(pw1);
	  System.out.println(cat11);
	    System.out.println(cat22);
		  System.out.println(cat33);
		    System.out.println(visit);
String redirectURL2 = "";

Cookie[] coki=request.getCookies();
Cookie tokens=null;
if(coki != null)
{    System.out.println("cookie field step1");
for(int i=0;i<coki.length;i++)
{
  if(coki[i].getName().equals("token"))
   {
   tokens=coki[i];
    
   if(visit==0)
{ redirectURL2 = "index.jsp";
response.sendRedirect(redirectURL2);
}
else
{redirectURL2 = "displaylarge.jsp";
response.sendRedirect(redirectURL2);
}    System.out.println("come onnnnnnnnnnnnnnnnnnnn");
  System.out.println(tokens);
 	
   break;
   
   }
  }
  
  

}

try{
    DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
   }
catch(java.lang.Exception  e){
                                  System.out.println("Unable to Connect to Driver Class ");
                              
                           }
try{ System.out.println("welcome");

con=DriverManager.getConnection(url,"system","1");
System.out.println("welcome --connection>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
try{
String queriesa ="Select u_name from regis1 ";
        Statement smnta=con.createStatement();
		  System.out.println(queriesa);
        ResultSet resa=smnta.executeQuery(queriesa);
	    boolean more1=resa.next();
		  System.out.println(more1);
	    while(resa.next())
		{
		  if(un.equals(resa.getString("u_name")))
	      { 
		    System.out.println(un+ "    matched");
		  
		  String queriesa1 ="Select pw,reg_n,name from regis1 ";
        Statement smnta1=con.createStatement();
        ResultSet resa1=smnta1.executeQuery(queriesa1);
	    boolean more2=resa1.next();
	    while(resa1.next())
		{ System.out.println("here i came stepccccccccccccc");
	      if(pw1.equals(resa1.getString("pw")))
	      {
		System.out.println("here i came stepvvvvvvvvvvvvvvv");
		y=1;
		  namex=resa1.getString("name");
		  regiscode=resa1.getString("reg_n");

         
if(tokens==null)
{
    System.out.println("hm yaha a gye hai");
  long id=(long)(Math.random()*10000);;
  tokens = new Cookie("token",Long.toString(id));
  tokens.setMaxAge(-1);
  tokens.setPath("/");
  response.addCookie(tokens);
System.out.println(tokens);
  } 
		  }
	      
	}
	}
	        
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

String redirectURL1 = "";
if(y==0)
{
if(visit==0)
{ 
response.sendRedirect("index.jsp?mess2=Invalid username or password ");
}
else
{
response.sendRedirect("displaylarge.jsp?mess2=invalid username or password&cat1='"+cat11+"'&cat2='"+cat22+"'&cat3='"+cat33+"'");
}

}
else{
if(visit==0)
{ redirectURL1 = "index.jsp?mess2=Hi ";
response.sendRedirect("index.jsp?mess2=Hi "+namex);
}
else
{ redirectURL1 = "displaylarge.jsp?mess2=";
  response.sendRedirect("displaylarge.jsp?mess2="+namex);
  return ;
}
}
con.close();    
}
%>
<html>
<head>
<title></title>
</head>
<body>
</body>
</html>
