<% 
   // Document   : filter1
   // Created on : Oct 18, 2014, 7:47:15 PM
    // Author     : Rajmani
%>
<%@ page import=" java.util.* , java.sql.* , java.io.*,java.sql.*, java.text.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
	String abc = request.getParameter("search_text");
	if(abc.length()==0)
	{
	response.sendRedirect("index.jsp");
	}
 System.out.println("00000000000000000000000000000000000000000000000000000000000000000000000000000");       
   String redirectURL="";     
   Connection con = null; 
   Statement smnt1 = null; 
 
   %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ArcticBuzz</title>
        <link rel="shortcut icon" href="imagx\x2.jpg"/>
    <script src="jquery-1.11.1.min.js"></script>
		
<link rel="stylesheet" href="css3menu1/style.css" type="text/css" />
    <style type="text/css">
         
div.signin1
{
margin:0px;
padding:5px;
text-align:right;
background:white;
border:solid 1px #c3c3c3;
display:none;
height: 100px;
width:250px;
color: black;
z-index:2;
position:static;
}
div.hello1{position: static;width:120px;text-align:right;
z-index:1;}
#submit1
{
	padding: 6px 10px;
	color: #fff;
	font-size: 14px;
	background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#a4d04a), to(#459300));
	text-shadow: #050505 0 -1px 0;
	background-color: #459300;
	-moz-border-radius: 4px;
        -webkit-border-radius: 4px;
	border-radius: 4px;
	border: solid 1px transparent;
	font-weight: bold;
	cursor: pointer;
	letter-spacing: 1px;
}
			
#submit1:hover 
{
	background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#a4d04a), to(#a4d04a), color-stop(80%, #76b226));
	text-shadow: #050505 0 -1px 2px;
	background-color: #a4d04a;
	color: #fff;
}

    
    
    
</style>    
    
    </head>
<body bgcolor="silver" ><!-background="imagx\image2.jpg"--->
<div>
<center>
<form name=a method=get action=filterx.jsp>
    <table ><tr><td>
<a href="index.jsp"><img src="imagx\1k.png"  height="70" width="490" alt="HOME"></a></td><td>
<img src="imagx\image.jpg"  height="20" width="20"></td><td>
<input type="text" name="search_text" size="100" style="width:725" placeholder="Search any books of your choice or let us recommend you">
<input type="submit" name="submit" value="Search" >
</td></tr></table>
</form>
</center>
</div>
    
    <script type="text/javascript"> 
$(document).ready(function(){
$(".hello1").mouseenter(function(){
    $(".signin1").show("fast");
  });
  $(".hello1").mouseleave(function(){
    $(".signin1").hide("fast");
  });
});

</script>

    
    
    <div class="hello1" style="text-align:right">Hello&nbsp;&nbsp;
        <a href="">Sign In&nbsp;&nbsp;&nbsp;&nbsp;</a>
        <div class="signin1">
            <form name="signin2" method="post" action="">
                Username<input type="text" name="un1" placeholder="Username Or Email-ID"/>
                </br>Password<input type="password" name="pass1">
             </br>New User ? <a href="">Start Here</a> &nbsp;&nbsp;&nbsp;   <input type="submit" value="Submit" id="submit1">
           </br></form>
        </div>
    </div>
        <table  border="1" width="100%" style="z-index:0" >
           <tr>
               <td width=14%>
                   <ul id="css3menu1" class="topmenu">
	<li class="topfirst"><a href="#" style="width:171px;">All books</a></li>
	<li class="topmenu"><a href="#" style="width:171px;"><span>TextBooks</span></a>
	<ul>
		<li class="subfirst"><a href="#">School level</a></li>
		<li><a href="#"><span>Undergraduate Level</span></a>
		<ul>
			<li class="subfirst"><a href="#">Engineering TextBooks</a></li>
			<li><a href="filter3.jsp?category=1">Computer Science &amp; Information Technology TextBooks</a></li>
			<li><a href="#">Featured Examination</a></li>
			<li><a href="#">Science &amp; Mathematics TextBooks</a></li>
			<li><a href="#">General Knowledge Books</a></li>
		</ul></li>
		<li><a href="#">Above UnderGraduation</a></li>
	</ul></li>
	<li class="topmenu"><a href="#" style="width:171px;">BestSellers</a></li>
	<li class="topmenu"><a href="#" style="width:171px;">New Releases &amp; Pre-Orders</a></li>
	<li class="topmenu"><a href="#" style="width:171px;">Books in Hindi</a></li>
	<li class="topmenu"><a href="#" style="width:171px;">Children's  &amp; Young Adult</a></li>
	<li class="topmenu"><a href="#" style="width:171px;">Literature &amp; Fiction</a></li>
	<li class="topmenu"><a href="#" style="width:171px;">Indian Writing</a></li>
	<li class="topmenu"><a href="#" style="width:171px;">Exam Preparation</a></li>
	<li class="topmenu"><a href="#" style="width:171px;">Business &amp; Economics</a></li>
	<li class="topmenu"><a href="#" style="width:171px;">eBooks</a></li>
</ul>
                   
               </td>
               <td>
       	 <table>
		 
		<%
		
		int k1=0;
  int k2=0;
  int found=0;
  int found1=0;
   k1=abc.length()- k2;
   char[] MAP = {
    //A  B   C   D   E   F   G   H   I   J   K   L   M
    '0','1','2','3','0','1','2','0','0','2','2','4','5',
    //N  O   P   W   R   S   T   U   V   W   X   Y   Z
    '5','0','1','2','6','2','3','0','1','0','2','0','2' 
	};
  
  
  
		
		%> 
  <%! String soundex_method(String s,char[] MAP,int found,int found1,int k1) 
  {	  StringBuffer res = new StringBuffer();
      int i=0;
	String t = s.toUpperCase();
	
    char c, prev = '?';
	for (i=0; i<k1 ; i++ ) 
	{
    if ( c>='A' && c<='Z') 
	{ c=t.charAt(i);
    prev = c;
 // First char is installed unchanged, for sorting.
    if (i==0)
     res.append(c);
    else 
	{
      char m = MAP[c-'A'];
      if (m != '0')
       res.append(m);
     }
    }
    }
    if (res.length() == 0)
     return null;
    return res.toString();
}
   int choose(Statement smnt1,String query1,String abc,char[] MAP,int found,int found1,int k1)
   { ResultSet res1=smnt1.executeQuery(query1);
     boolean more1=res1.next();
System.out.println(res1.getString("b_name"));
 String str1=soundex_method(abc);
 while(res1.next())
 {
 System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"); 
 String name= res1.getString("b_name"); 
 System.out.println(name);
 try{
 System.out.println(str1);
 String str2=soundex_method(name,MAP,found,found1,k1);
 System.out.println(str2);
 System.out.println(str1.equals(str2,MAP,found,found1,k1));
 if(str1.equals(str2))
 {  found=1;
    found1=0;
  System.out.println(""+name);
  System.out.println(res1.getInt("b_id"));
  %>
  
  <tr><td><a href="displaylarge.jsp?cat1=<%=res1.getInt("category")%>&cat2=<%=res1.getInt("sub_category")%>&cat3=<%=res1.getInt("b_id")%>"><img src="${pageContext.request.contextPath}/displayimagenew2.jsp?cat=<%=res1.getInt("category")%>&sub_cat=<%=res1.getInt("sub_category")%>&bid=<%=res1.getInt("b_id")%>" width=250px height=250px align=left></a>
Book Name : <%=res1.getString("b_name")%></br>
Author Name : <%=res1.getString("author")%></br>
Publisher : <%=res1.getString("publication")%></br>
people's Rating : <%=res1.getInt("rating")%></br>
Arctic Buzz 's Rating :
 
 </td></tr>
  
  <%
  
 }
   
   
   }
   catch(java.lang.Exception  e){
System.out.println("Unable to Connect to Driver Class ");

}

   }
   }

   
   
 %><%       
 try{
DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
}
catch(java.lang.Exception  e){
System.out.println("Unable to Connect to Driver Class ");
}
try{ 
 String url="jdbc:oracle:thin:@localhost:1521:orcl";
con=DriverManager.getConnection(url,"system","1");
System.out.println("welcome --connection");
 smnt1 =con.createStatement();
String query1="select b_name,b_id,category,sub_category,author,publication ,rating from books ";
System.out.println(query1);

while(found==0 && k1>0)
{ 
choose(smnt1,query1,abc,MAP,found,found1,k1);
 k2++;
 }
 }
 
 if(found1==0)
 {%><center>
 <h1>No Match Found , Try more refined Search</h1>
 
 </center>
 <%}
 
 
 res1.close();
 }
 
catch(java.lang.Exception ex)
{
System.out.println("**Input provided is invalid**");
           ex.printStackTrace();

}
 finally
 {
 try
 {
 if(con!=null) 
   con.close();
 
 }
 catch(java.lang.Exception ex)
{
System.out.println("**Input provided is invalid**");
           ex.printStackTrace();

}

 
 System.out.println("---------------------------------------------------------");
 }
      
      
%>		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 
		 </table>
		 
		 
         </td></tr>
       </table>
</br>
       <span style="text-align:right">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           &#169&nbsp;Aug-2014&nbsp;NIT Patna&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="aboutus.jsp" style="font-size:23px">About Us</a>
               &nbsp;&nbsp;&nbsp;&nbsp;
<a href="https://www.facebook.com/pages/Arctic-Buzz/1491676064427812?skip_nax_wizard=true&ref_type=bookmark"><img src="imagx\fb.jpg" width="30" height="30" target="_blank"></a></p></span>
    
    </body>
</html>
