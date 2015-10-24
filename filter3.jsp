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
<script type="text/javascript">
var subj= new Array;
var i=0;
</script>    
    
    </head>
<body bgcolor="silver" ><!-background="imagx\image2.jpg"--->
<div>
<center>
<form name=a method=get action=filter1.jsp>
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
       	 <div id="displaysubject">
		 <table width=100% height=500px >
		 
		 <%@ page contentType="text/html; charset=UTF-8" import="java.util.* , java.io.*, java.sql.*,java.util.Date"%>
<%@ page import="javax.servlet.*,java.text.*,java.util.*"  %>
<% { System.out.println("------------------------------------------------------------------------------------------");
int p=Integer.parseInt(request.getParameter("category"));
String regz=request.getParameter("regz");
int k1=1;
int top[]=new int[4];
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
String query="select distinct subject from books where category='"+p+"' group by subject";
ResultSet res=smnt.executeQuery(query);
System.out.println(res);
boolean more=res.next();
System.out.println(more);
top[0]=1;   // recommendation using rating 
top[1]=2;    // top would contain b_id of particular sub_category in descreasing order based on rating
top[2]=3;
top[3]=4;
while(more)
{
System.out.println("Subjects:"+res.getString("subject"));
%>
<tr bgcolor=yellow height=20px><td ><%=res.getString("subject")%></td></tr>
		 <tr height=100px><td>
		 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="displaylarge.jsp?cat1=<%=p%>&cat2=<%=k1%>&cat3=<%=top[0]%>&regz=<%=regz%>"><img src="${pageContext.request.contextPath}/displayimagenew2.jsp?cat=<%=p%>&sub_cat=<%=k1%>&bid=<%=top[0]%>" width=150px height=150px></a>
		 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		 <a href="displaylarge.jsp?cat1=<%=p%>&cat2=<%=k1%>&cat3=<%=top[1]%>&regz=<%=regz%>"><img src="${pageContext.request.contextPath}/displayimagenew2.jsp?cat=<%=p%>&sub_cat=<%=k1%>&bid=<%=top[1]%>" width=150px height=150px></a>
		 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		 <a href="displaylarge.jsp?cat1=<%=p%>&cat2=<%=k1%>&cat3=<%=top[2]%>&regz=<%=regz%>"><img src="${pageContext.request.contextPath}/displayimagenew2.jsp?cat=<%=p%>&sub_cat=<%=k1%>&bid=<%=top[2]%>" width=150px height=150px></a>
		 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		 <a href="displaylarge.jsp?cat1=<%=p%>&cat2=<%=k1%>&cat3=<%=top[3]%>&regz=<%=regz%>"><img src="${pageContext.request.contextPath}/displayimagenew2.jsp?cat=<%=p%>&sub_cat=<%=k1%>&bid=<%=top[3]%>" width=150px height=150px></a>
		 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		 <a href="displaymore.jsp?cat1=<%=p%>&cat2=<%=k1%>&regz=<%=regz%>">see more</a>
		 </td></tr>

<% k1++;
more=res.next();
System.out.println("welcome jai ho");
}
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
%>

		 
		 
		 </table>
		 
		 </div>
		 
		 
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
<%
}

%>
