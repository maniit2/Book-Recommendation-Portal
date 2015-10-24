<html>
<body>
<head>
<title></title>
<script type="text/javascript">
var points=0;
var i=0;
function submitRating()
{

if(points==0)
points=1;
i=1;
switch(points)
{
case 5:document.getElementById("star15").src="imagx\\star3.jpg";
case 4:document.getElementById("star14").src="imagx\\star3.jpg";
case 3:document.getElementById("star13").src="imagx\\star3.jpg";
case 2:document.getElementById("star12").src="imagx\\star3.jpg";
case 1:document.getElementById("star11").src="imagx\\star3.jpg";
}



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
</head>
<body >
<div id=star >
<img id="star11" src="imagx\star1.jpg"  width=50 height=50 alt="star1" onmouseover=starRating1() >
<img id="star12" src="imagx\star1.jpg"  width=50 height=50 alt="star1" onmouseover=starRating2() >
<img id="star13" src="imagx\star1.jpg"  width=50 height=50 alt="star1" onmouseover=starRating3() >
<img id="star14" src="imagx\star1.jpg"  width=50 height=50 alt="star1" onmouseover=starRating4() >
<img id="star15" src="imagx\star1.jpg"  width=50 height=50 alt="star1" onmouseover=starRating5() >
</div>
<input type=button value=submitRating onclick="submitRating()">
</body>
</html>
