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
   $(document).ready(function(){
	  document.getElementById("page").value = 1;
	   var page = $('#page').val();
	   var muc = $(location).attr('search').substring(1);
	   var chuyenmuc = "Speaking";
	   
	   ds(page,muc,chuyenmuc);
		
   })
  function ds(page,muc,chuyenmuc){
		
		  $.get('DanhSachBaiHocServlet',{chuyenmuc:chuyenmuc,muc:muc},function(responseJson){
			 if(responseJson!=null){
       
       	   //var table1 = $("#danhsach");
	               $.each(responseJson, function(key,value) { 
	               		 
	            	   var div = document.createElement('div');

	            	    div.className = 'row';

	            	    div.innerHTML = '<img id ="anh2" src="images/unit22.jpg" class="img-circle" align="left" width="50" height="50"/>'+
	            	          '<a id ="link2" href="hoc%20speaking.jsp?'+value['ID']+'"><p id="bai2">'+value['tieude']+'</p></a><br>'

	            	     document.getElementById('danhsach').appendChild(div);
	            	    div.innerHTML = div.innerHTML + '<hr>';
	            	    
	               });
           }
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

    </ol>
       <center>
 <div class="alert alert-success">
                       <strong>Chọn bài học SPEAKING</strong>  
                    </div>
                    </center> 
                    
    <div class="container" id = "danhsach" name = "danhsach">
    
      </div>
       <center>
                 
                 <span> Chuyển tới trang :  <input type ="number" name="page" id ="page" style ="width:50px">
                  <button type="button" class="btn btn-primary btn-sm" name ="gopage" id ="gopage" onclick = "chuyentrang()">Đến</button> </span> 
   				
                  </center>
 
<!--sdfsdfsdf-->   
<br/>
<hr>
 <%@ include file="footer.jsp" %>
 </div>
</body>
</html>