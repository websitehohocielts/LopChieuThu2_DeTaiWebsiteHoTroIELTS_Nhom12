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
    
    <script type="text/javascript">
		var id = $(location).attr('search').substring(1);
  
 	$.get('ThongTinBaiHoc',{id:id},function(responseJson){
		 if(responseJson!=null){
               $.each(responseJson, function(key,value) { 
            	  
                      document.getElementById("tieude").innerHTML = value['tieude'];
                   
                      document.getElementById("noidungbaihoc").innerHTML = value['noidung'];
                    
               });
            } 
	}); 
    
    
    </script>
</head>
<body style="background: url(images/background.jpg);">

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
        <li><a href="#">IELTS ONLINE</a></li>
        <li><a href="#">LISTENING</a></li>
    <li><a href="#">IELTS 6.0 - 8.0</a>
    </ol>
<div class="panel-group" style="margin-left:10px; margin-right:10px">
    <div class="panel panel-info">
     <div class="panel-heading"><strong><center><h2 id = "tieude"></h2></center></strong></div>
      <div class="panel-body">
    		<p id = "noidungbaihoc">
    	
    	</p>
      </div>
      </div>
      </div>

         
            <br/>
           
            <br />
            <p><Strong>Các bài học liên quan</Strong></p>
            <hr>
            <div class="row">
                <div class="col-sm-3">
                    <img src="images/sach1.jpg" align="left" width="50" height="50"/>
                    Test chu testttt<br>
                </div>
                <div class="col-sm-3">
                    <img src="images/sach7.jpg" align="left" width="50" height="50"/>
                    Test chu testttt<br>
                </div>
                <div class="col-sm-3">
                    <img src="images/sach8.jpg" align="left" width="50" height="50"/>
                    Test chu testttt<br>
                </div>
                <div class="col-sm-3">
                    <img src="images/sach6.jpg" align="left" width="50" height="50"/>
                    Test chu testttt<br>
                </div>
            </div>
 
<!--sdfsdfsdf-->   

    <br />
           
<hr>
<%@ include file="footer.jsp" %>
</body>
</html>