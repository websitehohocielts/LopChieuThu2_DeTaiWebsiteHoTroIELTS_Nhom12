<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
    <link rel="stylesheet" type="text/css" href="css/menu2.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="css/bootstrap.css" rel="stylesheet">
    <script src="js/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <link href="fonts/glyphicons-halflings-regular.woff" rel="fonts">
    <script type="text/javascript">
        $(document).ready(function()
    {
        initSlideShow();
        
    });
    function initSlideShow()
    {
        if($(".slideshow div").length > 1)
        {
            var transationTime = 2000;
            $(".slideshow div:first").addClass('active');
            setInterval(slideChangeImage, transationTime);
        }
    }
    function slideChangeImage()
    {
        var active = $(".slideshow div.active");
        if(active.length == 0)
        {
            active = $(".slideshow div:last");
        }
        
        var next = active.next().length ? active.next() : $(".slideshow div:first");
        active.addClass('lastactive');
        next.css({opacity:0.0})
                .addClass('active')
                .animate({opacity:1.0}, 1500, function()
                {
                    active.removeClass("active lastactive");    
                });
         
    }
    </script>
</head>
<body style="background: url(images/background.jpg);">
<!--
 <div id="logo">
    
         <center><img src="images/banner.jpg" style="width: 70%;" ></center>
         <hr>
 </div>
-->
<div class="container" style="background-color: white; ">
<div class="slideshow">
    <div><a href="#"><img src="images/slide_1.jpg" alt="" border="0" /></a></div>
    <div><a href="#"><img src="images/slide_2.jpg" alt="" border="0" /></a></div>
    <div><a href="#"><img src="images/slide_3.jpg" alt="" border="0" /></a></div>
</div>
<hr>
<% HttpSession userdn1 = request.getSession();%>
 <% if (userdn1.getAttribute("username1") == null){ %>
	<%@ include file="thanhMenuChuaDangNhap.jsp" %> 
	<%@ include file ="FileDangNhapMenuChuaDangNhap.jsp" %>
<% } %>
<% if (userdn1.getAttribute("username1") != null){ %>
	<%@ include file="thanhMenuDaDangNhap.jsp" %> 
<% } %> 

<!--sdfsdf-->
 <ol class="breadcrumb">
    <li><a href="#">Home</a></li>
    <li><a href="#">IELTS Online</a></li>
  <li><a href="#">SPEAKING</a></li>
<li><a href="#">IELTS 6.0 - 8.0</a></li>
    </ol>
    <div class="container">
       <div class="row">

        <a  href="hoc speaking.jsp"><img id="anh1" src="images/unit21read.jpg" align="left" width="100" height="100" class="img-circle"/>
         <p id="bai1">Unit 38. Cụm từ phổ biến với under và over</p><br></a>
      </div>
       <hr>
       <div class="row">
        <img id="anh2" src="images/unit21read.jpg" align="left" width="100" height="100" class="img-circle"/>
        <a id="bai2" href="#">Unit 21: Kỹ năng nghe loại câu hỏi xác định người (People Identifying) - Phần Short Conversation  </a><br>
      </div>
       <hr>
       <div class="row">
        <img id="anh3" src="images/unit22.jpg" align="left" width="100" height="100" class="img-circle"/>
        <a id="bai3" href="#">  Unit 21: Kỹ năng nghe loại câu hỏi xác định người (People Identifying) - Phần Short Conversation </a><br>
      </div>
      <br />
      <br />
      <button class="btn btn-primary" onclick="laydanhsach(1)">1</button>
    <button class="btn btn-primary" onclick="laydanhsach(2)">2</button>
    <button class="btn btn-primary">Next &rarr;</button>
     <script type="text/javascript">

      function laydanhsach(trang){
        var xhr = new XMLHttpRequest();
        xhr.onreadystatechange = function(){
          if(xhr.readyState ===4 && xhr.status===200){
            var items = JSON.parse(xhr.responseText);
           // var output = "<ul>";
            var trangkt = trang * 3 -1;
            var trangbd = trangkt-2;
             var y = 0;
            for(var index=0;index<items.length;index++){
               
              if(index >= trangbd && index<= trangkt)
              {
                y= y+1;
                if(y==1){
                document.getElementById("anh1").src = items[index].linkanh;
                document.getElementById("bai1").innerHTML = items[index].tenbai;
                }
                if(y==2){
                  document.getElementById("anh2").src = items[index].linkanh;
                document.getElementById("bai2").innerHTML = items[index].tenbai;
                }
                if(y==3){
                  document.getElementById("anh3").src = items[index].linkanh;
                document.getElementById("bai3").innerHTML = items[index].tenbai;
      
                }
                //output += "<li>" + items[index].tenbai;4
                
              }
            }
           // output += "</ul>";
            //document.getElementById("rs").innerHTML = output;
          }
        }
        xhr.open("GET","clickReading.json","true");
        xhr.send();

      }
      </script>

    </div>
 
<!--sdfsdfsdf-->   
<br/>
<hr>
 <%@ include file="footer.jsp" %>
 </div>
</body>
</html>