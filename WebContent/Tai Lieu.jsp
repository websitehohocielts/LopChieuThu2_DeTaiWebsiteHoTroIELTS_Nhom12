<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <li><a href="#">Tài Liệu</a></li>
  
  </ol>
<div class="panel-group" style="margin-left:10px; margin-right:10px">
    <div class="panel panel-info">
     <div class="panel-heading"><strong><center><h2>Tài Liệu</h2></center></strong></div>
      <div class="panel-body">

      <div class="row">
        <div class="col-md-2">
          <a id="link1" href="Xem Tai Lieu.jsp"> <figure>
        <img id="hinh1" src="images/sach3.jpg" class="img-rounded" align="bottom" width="100" height="100">
        <figcaption><h4><p id="ten1">Luật chính tả trong Tiếng Anh</p><h4></figcaption>
      </figure></a>
          
        </div>
        <div class="col-md-8">
          <p id="mieuta1" class="text justify" style="font-size: 14px">
            Luật chính tả trong tiếng Anh là tài liệu giúp các bạn viết chính tả các từ tiếng Anh được chính xác, tránh mất điểm đáng tiếc trong những bài thi cũng như trong công việc liên quan giấy tờ trình bày bằng tiếng Anh. Hy vọng, tài liệu này sẽ giúp ích được nhiều cho các bạn thêm tự tin, viết tiếng Anh được chuẩn xác.
          </p>
          <br />
          <br />
          <span class="glyphicon glyphicon-save"></span>
          
        </div>
      </div>
      <hr>
      <div class="row">
        <div class="col-md-2">
          <a id="link2" href="Xem Tai Lieu.jsp"><figure>
        <img id ="hinh2" src="images/sach4.jpg" class="img-rounded" align="bottom" width="100" height="100">
        <figcaption><h4><p id ="ten2">Cách viết bài luận bằng tiếng Anh</p><h4></figcaption>
      </figure></a>
          
        </div>
        <div class="col-md-8">
          <p id="mieuta2" class="text justify" style="font-size: 14px">
            Cách viết bài luận bằng Tiếng Anh là tài liệu tập hợp nhiều gợi ý chi tiết giúp các bạn viết luận Tiếng Anh trôi chảy và thành thạo nhất. Tài liệu chia thành từng mục, với nhiều ví dụ thực tế và hữu ích, giúp các bạn nâng cao kỹ năng viết Tiếng Anh tốt nhất.
          </p>
          <br />
          <br />
          <span class="glyphicon glyphicon-save"></span>
          
        </div>
      </div>
      <hr>
      <div class="row">
        <div class="col-md-2">
          <a id="link3" href="Xem Tai Lieu.jsp"><figure>
        <img id ="hinh3" src="images/sach1.jpg" class="img-rounded" align="bottom" width="100" height="100">
        <figcaption><h4><p id="ten3">52 cấu trúc và cụm từ thông dụng trong Tiếng Anh</p><h4></figcaption>
      </figure></a>
          
        </div>
        <div class="col-md-8">
          <p id ="mieuta3" class="text justify" style="font-size: 14px">
            Cấu trúc và cụm từ thông dụng trong Tiếng Anh

        52 cấu trúc và cụm từ thông dụng trong Tiếng Anh giúp người dùng củng cố kiến thức ngữ pháp tiếng Anh của mình và tự tin với khả năng tiếng Anh của bản thân với các cụm từ và cấu trúc phổ biến.
          </p>
          <br />
          <br />
          <span class="glyphicon glyphicon-save"></span> 
        </div>
      </div>

      </div>
      </div>
      </div>
      
     <center>
      <button class="btn btn-primary" onclick="laydanhsach(1)">1</button>
       <button class="btn btn-primary" onclick="laydanhsach(2)">2</button>
        <button class="btn btn-primary">></button>


        <script type="text/javascript">

      function laydanhsach(trang){
        var xhr = new XMLHttpRequest();
        xhr.onreadystatechange = function(){
          if(xhr.readyState ===4 && xhr.status===200){
            var items = JSON.parse(xhr.responseText);
      
            var trangkt = trang * 3 -1;
            var trangbd = trangkt-2;
             var y = 0;
            for(var index=0;index<items.length;index++){
               
              if(index >= trangbd && index<= trangkt)
              {
                y= y+1;
                if(y==1){
                document.getElementById("hinh1").src = items[index].linkanh;
                document.getElementById("link1").href = items[index].linktl;
                document.getElementById("ten1").innerHTML = items[index].tensach;
                document.getElementById("mieuta1").innerHTML = items[index].motasach;
                }
                if(y==2){
                  document.getElementById("hinh2").src = items[index].linkanh;
                document.getElementById("link2").href = items[index].linktl;
                document.getElementById("ten2").innerHTML = items[index].tensach;
                document.getElementById("mieuta2").innerHTML = items[index].motasach;
                }
                if(y==3){
                  document.getElementById("hinh3").src = items[index].linkanh;
                document.getElementById("link3").href = items[index].linktl;
                document.getElementById("ten3").innerHTML = items[index].tensach;
                document.getElementById("mieuta3").innerHTML = items[index].motasach;
                }
               
              }
            }
         
          }
        }
        xhr.open("GET","tailieu.json","true");
        xhr.send();

      }
      </script>

        </center>
      <br />
<!--sdfsdfsdf-->   

    <br />
           
<hr>
<%@ include file="footer.jsp" %>
</div>
</div>
</body>
</html>
