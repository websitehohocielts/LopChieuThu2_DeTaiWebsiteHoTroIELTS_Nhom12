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
<div class="navbar navbar-default navbar-fixed-top" role="navigation" style="font-size: 17px" >
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="222.jsp"><span class="glyphicon glyphicon-home"></span></a>
        </div>
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav navbar-right">
           <li>
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Nguyễn Văn A <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="Xem thong tin ca nhan.jsp">Thông tin cá nhân</a></li>
                        <li class="divider"></li>
                        <li ><a href="111.jsp">Đăng xuất</a></li>
                    </ul>
                </li>
            </ul>
            <ul class="nav navbar-nav">
                <li class="active"><a href="222.jsp">Home</a></li>
                <li><a href="Gioi%20Thieu.jsp">Giới thiệu</a></li>
                <li>
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">IELTS Online <b class="caret"></b></a>
                    <ul class="dropdown-menu multi-level">
                      
                         <li class="dropdown-submenu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">IELTS Reading</a>
                            <ul class="dropdown-menu">
                                        <li><a href="click%20hoc%20reading.jsp">IELTS 6.0</a></li>
                                        <li class="divider"></li>
                                        <li><a href="click%20hoc%20reading.jsp">IELTS 6.0 - 8.0</a></li>
                                        <li class="divider"></li>
                                        <li><a href="click%20hoc%20reading.jsp">IELTS 8.0</a></li>
                                           
                                    </ul>
                        </li>
                        <li class="divider"></li>
                        <li class="dropdown-submenu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">IELTS Listening</a>
                            <ul class="dropdown-menu">
                                        <li><a href="click%20listenning.jsp">IELTS 6.0</a></li>
                                        <li class="divider"></li>
                                        <li><a href="click%20listenning.jspl">IELTS 6.0 - 8.0</a></li>
                                        <li class="divider"></li>
                                        <li><a href="click%20listenning.jsp">IELTS 8.0</a></li>
                               
                            </ul>
                        </li>

                        <li class="divider"></li>
                        <li class="dropdown-submenu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">IELTS Speaking</a>
                            <ul class="dropdown-menu">
                                        <li><a href="click%20speaking.jsp">IELTS 6.0</a></li>
                                        <li class="divider"></li>
                                        <li><a href="click%20speaking.jsp">IELTS 6.0 - 8.0</a></li>
                                        <li class="divider"></li>
                                        <li><a href="click%20speaking.jsp">IELTS 8.0</a></li>
                               
                            </ul>
                        </li>

                        <li class="divider"></li>
                       <li class="dropdown-submenu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">IELTS Writing</a>
                            <ul class="dropdown-menu">
                                <li><a href="click%20writing.jsp">IELTS 6.0</a></li>
                                <li class="divider"></li>
                                <li><a href="click%20writing.jsp">IELTS 6.0 - 8.0</a></li>
                                <li class="divider"></li>
                                <li><a href="click%20writing.jsp">IELTS 8.0</a></li>
                            </ul>
                        </li>
                    </ul>
                </li>



                <li>
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Free Test <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="click Test Reading.jsp">Test Reading</a></li>
                        <li class="divider"></li>
                        <li ><a href="click Test Listening.jsp">Test Listening</a></li>
                    </ul>
                </li>
                <li><a href="Tai%20Lieu.jsp">Tài liệu</a></li>
                <li><a href="Tin Nhan Ho Tro.jsp">Tin nhắn hỗ trợ</a></li>







            </ul>
        </div><!--/.nav-collapse -->
    </div>
</div>
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
<footer class="site-footer" style="background-color: #f8f8f8">
    <div class="row">
   
        <div class="col-sm-6">
        
             <p><strong>ieltsonline.Com - a product of Cong-Thi-Tu, Ltd.</strong></p>

            <p>Giấy phép ĐKKD số: 0102852740 cấp bởi Sở Kế hoạch và Đầu tư Hà Nội.<br>
                Giấy phép đào tạo tiếng Anh số: 9816/QĐ-SGD&amp;ĐT cấp bởi Sở Giáo dục và Đào tạo Hà Nội.<br>
                Giấy phép cung cấp dịch vụ mạng xã hội học tiếng Anh trực tuyến số: 549/GP-BTTTT cấp bởi Bộ Thông tin &amp; Truyền thông. <br>
                Địa chỉ: <span class="black1"> số nhà 13,15,23, ngõ 259/9 phố Vọng, Đồng Tâm, Hai Bà Trưng, Hà Nội.<br>
                Tel: 1900 63 62 55  hoặc  047 30 82 838.</span> <a href="mailto:lophoc@ieltsonline.com" class="blue1">Email: lophoc@ieltsonline.com </a><br>
           

            
        </div>
        <div class="col-sm-6">
             
             <p>
             Địa chỉ: số 64 ngõ 49 Huỳnh Thúc Kháng, Đống Đa, Hà nội. 
            Tel: 04 6276 2098 - 04 6276 2596.
            </p>
        </div>
    </div>
   </div>
</footer>
</body>
</html>
