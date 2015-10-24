<%-- 
    Document   : index
    Created on : Oct 7, 2014, 5:06:56 PM
    Author     : Rajmani
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ArcticBuzz</title>
        <link rel="shortcut icon" href="imagx\x2.jpg"/>
    <script src="jquery-1.11.1.min.js"></script>
    <script type = "text/javascript">
          function displayNextImage() {
              x = (x === images.length - 1) ? 0 : x + 1;
              document.getElementById("img").src = images[x];
          }

          function displayPreviousImage() {
              x = (x <= 0) ? images.length - 1 : x - 1;
              document.getElementById("img").src = images[x];
          }

          
            var p = setInterval(displayNextImage, 1000);
			
          var images = [], x = 0;
          images[0] = "imagx\\a.jpg";
          images[1] = "imagx\\b.jpg";
          images[2] = "imagx\\c.jpg";
          images[3] = "imagx\\d.jpg";
          images[4] = "imagx\\e.jpg";
          images[5] = "imagx\\f.jpg";
	  images[6] = "imagx\\g.jpg";
          images[7] = "imagx\\h.jpg";
	  images[8] = "imagx\\i.jpg";
        images[9] = "imagx\\er18.jpg";

		function abc()
		{
		if(this.a.search_text==null)
		{ 
		alert("enter search string");
		return false;
		}
		else 
		return true;
		
		}
		
		
		
	  </script>
		
<link rel="stylesheet" href="css3menu1/style.css" type="text/css" />

<script type="text/javascript">
    $(document).ready(function()
    {
        $(".imagearea1").mouseenter(function()
        {
            clearInterval(p);
        });
        $(".imagearea1").mouseleave(function()
        {
            p = setInterval(displayNextImage, 1000);
        });
    });
    </script>
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
<form name=a method=get action=filterxnew4.jsp onsubmit="return abc()">
    
	<table  ><tr><td>
<a href="index.jsp" ><img src="imagx\1k.png"  height="70" width="490"></a></td><td>
<img src="imagx\image.jpg"  height="20" width="20"></td><td>
<input type="text" name="search_text" size="100" style="width:8" placeholder="Search any books of your choice or let us recommend you">
<input type="submit" name="submit" value="Search" >

</td></tr></table>
</form>
</center>

</div>
<%
	String mess2 = "";
	mess2 = request.getParameter("mess");
	 if(request.getParameter("mess2")!=null){ mess2 =request.getParameter("mess2");}
	if(mess2 == null)
		mess2="";
  %>
  
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

    
    
    <div class="hello1" ><span style="color:green">Hello&nbsp;</span>&nbsp;<span style="color:red"><%=mess2%></span>
        <a href="">Sign In&nbsp;</a>
        <div class="signin1">
            <form name="signin2" method="post" action="signin1.jsp?visit=0">
                Username<input type="text" name="un1" placeholder="Username Or Email-ID"/>
                </br>Password<input type="password" name="pass1">
             </br>New User ? <a href="signup2.html">Start Here</a> &nbsp;&nbsp;&nbsp;   <input type="submit" value="Submit" id="submit1">
           </br></form>
        </div>
    </div>
        <table  border="1" width="100%" style="z-index:0" >
           <tr>
               <td>
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
       	 
     <center>
         <div class="imagearea1">
       <img id="img" src="imagx\a.jpg" height="400" width="500" alt="WELCOME" >
       </div> 
       </br>
       <button onclick="displayPreviousImage();"></button>
       <button onclick="displayNextImage();"></button>
	
     
         
             </center>      
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
