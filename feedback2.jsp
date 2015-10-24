<%
 if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) { response.sendRedirect("index.jsp");}

    String regz=request.getParameter("regz");


%>

<html>
<head>
<title></title>

</head>
<body><center>
<form name="abc2" method="get" action="feed2.jsp?regz=<%=regz%>">
<table>
   
		 <tr height=100px><td>
		 <a href="displaylarge.jsp?cat1=1&cat2=2&cat3=1"><img src="${pageContext.request.contextPath}/displayimagenew2.jsp?cat=1&sub_cat=2&bid=1" width=150px height=150px></a>
		 <input type=radio name="1" value="1">BUY &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type=radio name="1" value="0"> NOT BUY
		 </br>
		 <table ><tr><td>
		 Simplicity Of Language</td><td>&nbsp;&nbsp;<input type=radio name="1" value="1">1&nbsp;&nbsp;<input type=radio name="1" value="1">2&nbsp;&nbsp;<input type=radio name="1" value="1">3&nbsp;&nbsp;<input type=radio name="1" value="1">4&nbsp;&nbsp;<input type=radio name="1" value="1">5&nbsp;&nbsp;</br>
		 <tr><td>Content Accuracy</td><td>&nbsp;&nbsp;<input type=radio name="1" value="1">1&nbsp;&nbsp;<input type=radio name="1" value="1">2&nbsp;&nbsp;<input type=radio name="1" value="1">3&nbsp;&nbsp;<input type=radio name="1" value="1">4&nbsp;&nbsp;<input type=radio name="1" value="1">5&nbsp;&nbsp;</br> 
		 <tr><td>Requirement Fullfillment</td><td>&nbsp;&nbsp;<input type=radio name="1" value="1">1&nbsp;&nbsp;<input type=radio name="1" value="1">2&nbsp;&nbsp;<input type=radio name="1" value="1">3&nbsp;&nbsp;<input type=radio name="1" value="1">4&nbsp;&nbsp;<input type=radio name="1" value="1">5&nbsp;&nbsp;</br>
		 <tr><td>Clearity of Printing</td><td>&nbsp;&nbsp;<input type=radio name="1" value="1">1&nbsp;&nbsp;<input type=radio name="1" value="1">2&nbsp;&nbsp;<input type=radio name="1" value="1">3&nbsp;&nbsp;<input type=radio name="1" value="1">4&nbsp;&nbsp;<input type=radio name="1" value="1">5&nbsp;&nbsp;</br></td></tr>
		 </td></tr></table></br></td></tr>
		 <tr><td>
		 <center><a href="displaylarge.jsp?cat1=1&cat2=2&cat3=2"><img src="${pageContext.request.contextPath}/displayimagenew2.jsp?cat=1&sub_cat=2&bid=2" width=150px height=150px></a>
		 <input type=radio name="2" value="1">BUY &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type=radio name="2" value="0">NOT BUY
		 </br>
		 <table ><tr><td>
		 Simplicity Of Language</td><td>&nbsp;&nbsp;<input type=radio name="1" value="1">1&nbsp;&nbsp;<input type=radio name="1" value="1">2&nbsp;&nbsp;<input type=radio name="1" value="1">3&nbsp;&nbsp;<input type=radio name="1" value="1">4&nbsp;&nbsp;<input type=radio name="1" value="1">5&nbsp;&nbsp;</br>
		 <tr><td>Content Accuracy</td><td>&nbsp;&nbsp;<input type=radio name="1" value="1">1&nbsp;&nbsp;<input type=radio name="1" value="1">2&nbsp;&nbsp;<input type=radio name="1" value="1">3&nbsp;&nbsp;<input type=radio name="1" value="1">4&nbsp;&nbsp;<input type=radio name="1" value="1">5&nbsp;&nbsp;</br> 
		 <tr><td>Requirement Fullfillment</td><td>&nbsp;&nbsp;<input type=radio name="1" value="1">1&nbsp;&nbsp;<input type=radio name="1" value="1">2&nbsp;&nbsp;<input type=radio name="1" value="1">3&nbsp;&nbsp;<input type=radio name="1" value="1">4&nbsp;&nbsp;<input type=radio name="1" value="1">5&nbsp;&nbsp;</br>
		 <tr><td>Clearity of Printing</td><td>&nbsp;&nbsp;<input type=radio name="1" value="1">1&nbsp;&nbsp;<input type=radio name="1" value="1">2&nbsp;&nbsp;<input type=radio name="1" value="1">3&nbsp;&nbsp;<input type=radio name="1" value="1">4&nbsp;&nbsp;<input type=radio name="1" value="1">5&nbsp;&nbsp;</br></td></tr>
		 </td></tr></table></br></td></tr>
		 <tr><td><a href="displaylarge.jsp?cat1=1&cat2=2&cat3=3"><img src="${pageContext.request.contextPath}/displayimagenew2.jsp?cat=1&sub_cat=2&bid=3" width=150px height=150px></a>
		 <input type=radio name="3" value="1">BUY &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type=radio name="3" value="0">NOT BUY
		 </br>
		 <table ><tr><td>
		 Simplicity Of Language</td><td>&nbsp;&nbsp;<input type=radio name="1" value="1">1&nbsp;&nbsp;<input type=radio name="1" value="1">2&nbsp;&nbsp;<input type=radio name="1" value="1">3&nbsp;&nbsp;<input type=radio name="1" value="1">4&nbsp;&nbsp;<input type=radio name="1" value="1">5&nbsp;&nbsp;</br>
		 <tr><td>Content Accuracy</td><td>&nbsp;&nbsp;<input type=radio name="1" value="1">1&nbsp;&nbsp;<input type=radio name="1" value="1">2&nbsp;&nbsp;<input type=radio name="1" value="1">3&nbsp;&nbsp;<input type=radio name="1" value="1">4&nbsp;&nbsp;<input type=radio name="1" value="1">5&nbsp;&nbsp;</br> 
		 <tr><td>Requirement Fullfillment</td><td>&nbsp;&nbsp;<input type=radio name="1" value="1">1&nbsp;&nbsp;<input type=radio name="1" value="1">2&nbsp;&nbsp;<input type=radio name="1" value="1">3&nbsp;&nbsp;<input type=radio name="1" value="1">4&nbsp;&nbsp;<input type=radio name="1" value="1">5&nbsp;&nbsp;</br>
		 <tr><td>Clearity of Printing</td><td>&nbsp;&nbsp;<input type=radio name="1" value="1">1&nbsp;&nbsp;<input type=radio name="1" value="1">2&nbsp;&nbsp;<input type=radio name="1" value="1">3&nbsp;&nbsp;<input type=radio name="1" value="1">4&nbsp;&nbsp;<input type=radio name="1" value="1">5&nbsp;&nbsp;</br></td></tr>
		 </td></tr></table></br></td></tr>
		 <tr><td><a href="displaylarge.jsp?cat1=1&cat2=2&cat3=4"><img src="${pageContext.request.contextPath}/displayimagenew2.jsp?cat=1&sub_cat=2&bid=4" width=150px height=150px></a>
		 <input type=radio name="4" value="1">BUY &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type=radio name="4" value="0">NOT BUY
		 </br><table ><tr><td>
		 Simplicity Of Language</td><td>&nbsp;&nbsp;<input type=radio name="1" value="1">1&nbsp;&nbsp;<input type=radio name="1" value="1">2&nbsp;&nbsp;<input type=radio name="1" value="1">3&nbsp;&nbsp;<input type=radio name="1" value="1">4&nbsp;&nbsp;<input type=radio name="1" value="1">5&nbsp;&nbsp;</br>
		 <tr><td>Content Accuracy</td><td>&nbsp;&nbsp;<input type=radio name="1" value="1">1&nbsp;&nbsp;<input type=radio name="1" value="1">2&nbsp;&nbsp;<input type=radio name="1" value="1">3&nbsp;&nbsp;<input type=radio name="1" value="1">4&nbsp;&nbsp;<input type=radio name="1" value="1">5&nbsp;&nbsp;</br> 
		 <tr><td>Requirement Fullfillment</td><td>&nbsp;&nbsp;<input type=radio name="1" value="1">1&nbsp;&nbsp;<input type=radio name="1" value="1">2&nbsp;&nbsp;<input type=radio name="1" value="1">3&nbsp;&nbsp;<input type=radio name="1" value="1">4&nbsp;&nbsp;<input type=radio name="1" value="1">5&nbsp;&nbsp;</br>
		 <tr><td>Clearity of Printing</td><td>&nbsp;&nbsp;<input type=radio name="1" value="1">1&nbsp;&nbsp;<input type=radio name="1" value="1">2&nbsp;&nbsp;<input type=radio name="1" value="1">3&nbsp;&nbsp;<input type=radio name="1" value="1">4&nbsp;&nbsp;<input type=radio name="1" value="1">5&nbsp;&nbsp;</br></td></tr>
		 </td></tr></table></br></td></tr>
		 
		 <tr><td><a href="displaylarge.jsp?cat1=1&cat2=3&cat3=1"><img src="${pageContext.request.contextPath}/displayimagenew2.jsp?cat=1&sub_cat=2&bid=5" width=150px height=150px></a>
		 <input type=radio name="5" value="1">BUY &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type=radio name="5" value="0">NOT BUY</br>
		 <table ><tr><td>
		 Simplicity Of Language</td><td>&nbsp;&nbsp;<input type=radio name="1" value="1">1&nbsp;&nbsp;<input type=radio name="1" value="1">2&nbsp;&nbsp;<input type=radio name="1" value="1">3&nbsp;&nbsp;<input type=radio name="1" value="1">4&nbsp;&nbsp;<input type=radio name="1" value="1">5&nbsp;&nbsp;</br>
		 <tr><td>Content Accuracy</td><td>&nbsp;&nbsp;<input type=radio name="1" value="1">1&nbsp;&nbsp;<input type=radio name="1" value="1">2&nbsp;&nbsp;<input type=radio name="1" value="1">3&nbsp;&nbsp;<input type=radio name="1" value="1">4&nbsp;&nbsp;<input type=radio name="1" value="1">5&nbsp;&nbsp;</br> 
		 <tr><td>Requirement Fullfillment</td><td>&nbsp;&nbsp;<input type=radio name="1" value="1">1&nbsp;&nbsp;<input type=radio name="1" value="1">2&nbsp;&nbsp;<input type=radio name="1" value="1">3&nbsp;&nbsp;<input type=radio name="1" value="1">4&nbsp;&nbsp;<input type=radio name="1" value="1">5&nbsp;&nbsp;</br>
		 <tr><td>Clearity of Printing</td><td>&nbsp;&nbsp;<input type=radio name="1" value="1">1&nbsp;&nbsp;<input type=radio name="1" value="1">2&nbsp;&nbsp;<input type=radio name="1" value="1">3&nbsp;&nbsp;<input type=radio name="1" value="1">4&nbsp;&nbsp;<input type=radio name="1" value="1">5&nbsp;&nbsp;</br></td></tr>
		 </td></tr></table>
		 </br></td></tr>
</table>
<input type="submit" value="Finish">
</form>
</center>
</body>
</html>
