<html><head>

    <link rel="shortcut icon" href="imagx\x2.jpg"/>
    <script src="jquery-1.11.1.min.js"></script>
    

</head><body><center>
<table width=100% height=500px cellspacing=4px border=1> 
	 <%@ page contentType="text/html; charset=UTF-8" import="java.util.* , java.io.*, java.sql.*,java.util.Date"%>
<%@ page import="javax.servlet.*,java.text.*,java.util.*"  %>
<% { System.out.println("------------------------------------------------------------------------------------------");
 System.out.println("displaylarge.jsp");


System.out.println(request.getParameter("cat1"));
int p1=0,p2=0,p3=0,p4=0;
try{
if(request.getParameter("cat1")!=null)
 p1=Integer.parseInt(request.getParameter("cat1"));
if(request.getParameter("cat2")!=null)
p2=Integer.parseInt(request.getParameter("cat2"));
if(request.getParameter("cat3")!=null)
p3=Integer.parseInt(request.getParameter("cat3"));
//if(request.getParameter("cat4")!=null)
//p4=Integer.parseInt(request.getParameter("user_id"));
//int k1=1;
}catch(java.lang.NumberFormatException y)
{

}
String regz=request.getParameter("regz");
System.out.println(p1);
System.out.println(p2);
System.out.println(p3);
System.out.println(regz);
 
 
 
 
 
 
 
 
 
 
 
 
try{
DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
}
catch(java.lang.Exception  e){
System.out.println("Unable to Connect to Driver Class ");

}
try{
String url="jdbc:oracle:thin:@localhost:1521:orcl";
Connection con=DriverManager.getConnection(url,"system","1");

try{
Statement smnt1 =con.createStatement();
String query1="select book_desc,author_desc from books where category='"+p1+"' and sub_category='"+p2+"' and b_id='"+p3+"'";
System.out.println(query1);
ResultSet res1=smnt1.executeQuery(query1);
boolean more1=res1.next();


%>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <tr><td>
 <div>
 <img src="${pageContext.request.contextPath}/displayimagenew2.jsp?cat=<%=p1%>&sub_cat=<%=p2%>&bid=<%=p3%>" width=300px height=300px align=left></a>
<%if(res1.getString("book_desc")!=null){
 %>
Book Description : <%=res1.getString("book_desc")%>
</br>
Author Description : <%=res1.getString("author_desc")%>
 </div>
 	
	<%}
	else{ %>
	Book Description : Not Available
</br>
Author Description : Not Available
 </div>
<%}%>
<%
	String mess2 = "";
	mess2 = request.getParameter("mess");
if(request.getParameter("mess2")!=null){ mess2 =request.getParameter("mess2");}

	if(mess2 == null)
		mess2="";
%>	
<div id=star align=right>

<%= mess2 %></br>

<img id="star11" src="imagx\star1.jpg"  width=25 height=25 alt="star1" onmouseover=starRating1() >
<img id="star12" src="imagx\star1.jpg"  width=25 height=25 alt="star1" onmouseover=starRating2() >
<img id="star13" src="imagx\star1.jpg"  width=25 height=25 alt="star1" onmouseover=starRating3() >
<img id="star14" src="imagx\star1.jpg"  width=25 height=25 alt="star1" onmouseover=starRating4() >
<img id="star15" src="imagx\star1.jpg"  width=25 height=25 alt="star1" onmouseover=starRating5() >
</div>	 
	<script type="text/javascript"> 
    function redirect1()
	{
	  window.location.assign="signup1.html?visit=1&cat=<%=p1%>&sub_cat=<%=p2%>&bid=<%=p3%>&regz=<%=regz%>";
	  
	}
	
	function visible1()
	{
	<% 
     
  if( (session.getAttribute("userid") == null) || (session.getAttribute("userid") == "") )
    { 
 %>

	this.as.style.visibility="visible";
<%}
%>
	}
	
</script>
<div class="hello1" style="text-align:right">
<form name="signin2" method="post" action="">
<input type="button" name="un1" onclick="submitRating()" value="Submit Rating" onmouseover="visible1()" />
</form>            
<div class="signin1" style="text-align:right; visibility:hidden" id="as" >
 <span style="color:red">Please SignIn first,if you have not</span></br>
          <form name="signin2" method="post" action="signin2.jsp?visit=1&cat=<%=p1%>&sub_cat=<%=p2%>&bid=<%=p3%>" >
                Username<input type="text" id="un" name="un1" placeholder="Username Or Email-ID" />
                </br>Password<input type="password" id="pass" name="pass1" >
             </br> <input type="button" id="button2" value="New User ? Click Here !" onclick="redirect1()">&nbsp;&nbsp;&nbsp;
			 <input name="submit2" type="submit" value="Submit" id="submit1" >
           </br></form>
  
		  
		  
		  </div>
    </div>
    	 

 
 
 
 
 
 
 
 
 
 </td></tr>
 
	
<script type="text/javascript">

var points=0;
var i=0;
function submitRating()
{



if(points==0)
points=1;

<% if((session.getAttribute("userid") != null) && (session.getAttribute("userid") != "")){
	
	%>
	   window.location.assign("rating.jsp?cat1=<%=p1%>&cat2=<%=p2%>&cat3=<%=p3%>&regz=<%=regz%>");
i=1;	
	



switch(points)
{
case 5:document.getElementById("star15").src="imagx\\star3.jpg";
case 4:document.getElementById("star14").src="imagx\\star3.jpg";
case 3:document.getElementById("star13").src="imagx\\star3.jpg";
case 2:document.getElementById("star12").src="imagx\\star3.jpg";
case 1:document.getElementById("star11").src="imagx\\star3.jpg";
}
<%}else {%>


 alert("SignIn Please ");
 
 i=0;
 document.getElementById("star11").src="imagx\\star1.jpg";
 document.getElementById("star12").src="imagx\\star1.jpg";
 document.getElementById("star13").src="imagx\\star1.jpg";
 document.getElementById("star14").src="imagx\\star1.jpg";
 document.getElementById("star15").src="imagx\\star1.jpg";
 <%}%>
	
}

function starRating1()
{ 
 if(i==0){
 points=1;
 document.getElementById("star11").src="imagx\\star2.jpg";
 document.getElementById("star12").src="imagx\\star1.jpg";
 document.getElementById("star13").src="imagx\\star1.jpg";
 document.getElementById("star14").src="imagx\\star1.jpg";
 document.getElementById("star15").src="imagx\\star1.jpg";
 }}
function starRating2()
{ if(i==0){ 
points=2;
 document.getElementById("star11").src="imagx\\star2.jpg";
 document.getElementById("star12").src="imagx\\star2.jpg";
 document.getElementById("star13").src="imagx\\star1.jpg";
 document.getElementById("star14").src="imagx\\star1.jpg";
 document.getElementById("star15").src="imagx\\star1.jpg";
 }}
 function starRating3()
{ if(i==0){ 
points=3;
 document.getElementById("star11").src="imagx\\star2.jpg";
 document.getElementById("star12").src="imagx\\star2.jpg";
 document.getElementById("star13").src="imagx\\star2.jpg";
 document.getElementById("star14").src="imagx\\star1.jpg";
 document.getElementById("star15").src="imagx\\star1.jpg";
 }
 }
 function starRating4()
{  if(i==0){ 
points=4;
 document.getElementById("star11").src="imagx\\star2.jpg";
 document.getElementById("star12").src="imagx\\star2.jpg";
 document.getElementById("star13").src="imagx\\star2.jpg";
 document.getElementById("star14").src="imagx\\star2.jpg";
 document.getElementById("star15").src="imagx\\star1.jpg";
 }
 }
 function starRating5()
{ if(i==0){ 
points=5;
 document.getElementById("star11").src="imagx\\star2.jpg";
 document.getElementById("star12").src="imagx\\star2.jpg";
 document.getElementById("star13").src="imagx\\star2.jpg";
 document.getElementById("star14").src="imagx\\star2.jpg";
 document.getElementById("star15").src="imagx\\star2.jpg";
 }
 }
</script>    	 
		 

<% 


}
catch(java.lang.Exception ex)
{
System.out.println("**Input provided is invalid*********************");
           ex.printStackTrace();

}
con.close();
}
catch(java.lang.Exception ex)
{
 System.out.println("**Input provided is invalid2**+++++++++++++++++++++");
           ex.printStackTrace();
		  
}




System.out.println("finished....kkkkkkkkkkkkkkkkkkkk.................................yahooo000000000000");
%></table>

<a href="index.jsp?regz=<%=regz%>"><h1>HOME</h1></a>
<%}%></center>
</body></html>


