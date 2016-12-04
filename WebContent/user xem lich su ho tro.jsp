<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>Lich su ho tro</title>
    <link rel="stylesheet" type="text/css" href="css/menu2.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="css/bootstrap.css" rel="stylesheet">
    <script src="js/jquery.min.js"></script>
    <link href="fonts/glyphicons-halflings-regular.woff" rel="fonts">
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
   
   $(document).ready(function(){
		  
		  document.getElementById("page").value = 1;
		   var page = $('#page').val();
			$.get('LichSuTinNhanServlet',{page:page},function(responseJson){
				 if(responseJson!=null){
	           	   $("#dsTinNhan").find("tr:gt(0)").remove();
	           	   var table1 = $("#dsTinNhan");
		               $.each(responseJson, function(key,value) { 
		               		   var rowNew = $("<tr><td></td><td></td><td></td></tr>");
		               			rowNew.children().eq(0).html('<a href ="User-xem-tra-loi-tin-nhan-ho-tro.jsp?'+value['id']+'" >'+value['tieude']+' </a>');
		                       rowNew.children().eq(1).text(value['usernhan']); 
		                       rowNew.children().eq(2).html('<span class="glyphicon glyphicon-remove" id ='+value['id']+'></span>'); 
		                       rowNew.appendTo(table1);
		               });
	               }
			});
		   
	   })
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
    <li><a href="#">Lịch sử hỗ trợ</a></li>
   </ol>
   <div class="panel-group" style="margin-left:10px; margin-right:10px">
    <div class="panel panel-info">
     <div class="panel-heading"><strong><center><h2>Lịch sử hỗ trợ</h2></center></strong></div>
      <div class="panel-body">

      <div class="tab-content">
                <div id="home" class="tab-pane fade in active">
              <table class="table table-bordered" id ="dsTinNhan">
                   
                      <tr>
                        <th width="50%">Tiêu đề</th>
                     	 <th>Người nhận</th>
                        <th>Xóa</th>
                      </tr>
               
                  </table>
                    <center>
                 <span> Chuyển tới trang :  <input type ="number" name="page" id ="page" style ="width:50px">
                  <button type="button" class="btn btn-primary btn-sm" name ="gopage" id ="gopage" onclick = "chuyentrang()">Đến</button> </span> 
   				
                  </center>
                </div>


      </div>
      </div>
      </div>
<!--sdfsdfsdf-->   
<br/>
<hr>
<%@ include file="footer.jsp" %>
</div>
</body>
</html>
