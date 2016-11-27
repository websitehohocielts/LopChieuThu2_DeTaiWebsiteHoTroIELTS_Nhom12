<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title></title>
    <link rel="stylesheet" type="text/css" href="css/menu2.css">

    <link href="css/bootstrap.css" rel="stylesheet">
    <script src="js/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
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
      <script type="text/javascript">
		var id = $(location).attr('search').substring(1);
  
 	$.get('XemNoiDungTaiLieu',{id:id},function(responseJson){
 	 
		 if(responseJson!=null){
		
               $.each(responseJson, function(key,value) { 
            	  
                      document.getElementById("tieude").innerHTML = value['tieude'];
                   
                      document.getElementById("noidungbaihoc").innerHTML = '<iframe src="'+value['link']+'" width="100%" height="500"></iframe>';
                    
               });
            } 
	}); 
    
    
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
        <br />
        <ol class="breadcrumb">
    <li><a href="#">Home</a></li>
    <li><a href="#">Tài Liệu </a></li>
    <li><a href="#">52 Cấu Trúc Tiếng Anh Thông Dụng</a></li>
  </ol>
<div class="panel-group" style="margin-left:10px; margin-right:10px">
    <div class="panel panel-info">
     <div class="panel-heading"><strong><center><h2 id = "tieude"></h2></center></strong></div>
      <div class="panel-body">
  		<p id = "noidungbaihoc">
    		
    	</p>
    	
    <center><button class="btn btn-info btn-lg"><span class="glyphicon glyphicon-save"> Download</span></button></center>
    </div>
      </div>
      </div>
      <p><Strong>Các bài học liên quan</Strong></p>
      <hr>
      <div class="row">
        <div class="col-sm-3">
          <img src="images\Desert.jpg" class="img-circle" align="left" width="50" height="50"/>
          Test chu testttt<br>
        </div>
        <div class="col-sm-3">
          <img src="images\Desert.jpg" class="img-circle" align="left" width="50" height="50"/>
          Test chu testttt<br>
        </div>
        <div class="col-sm-3">
          <img src="images\Desert.jpg" class="img-circle" align="left" width="50" height="50"/>
          Test chu testttt<br>
        </div>
        <div class="col-sm-3">
          <img src="images\Desert.jpg" class="img-circle" align="left" width="50" height="50"/>
          Test chu testttt<br>
        </div>
      </div>
<!--sdfsdfsdf-->   
       <br />
           
<hr>
<%@ include file="footer.jsp" %>
</div>
</body>
</html>