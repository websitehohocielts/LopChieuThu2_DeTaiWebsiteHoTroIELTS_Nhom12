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
        <li><a href="#">WRITING</a></li>
    <li><a href="#">IELTS 8.0</a>
    </ol>
<div class="panel-group" style="margin-left:10px; margin-right:10px">
    <div class="panel panel-info">
     <div class="panel-heading"><strong><center><h2><h2>Unit 3: Từ trọng tâm - Giới từ trong mô tả tranh phần IELTS Writing</h2></h2></center></strong></div>
      <div class="panel-body">
    
    <br />
    <br/>
    <p class="text justify">
        Giới từ là từ loại được sử dụng thường xuyên trong câu, nhưng không phải người học Tiếng Anh nào cũng biết cách sử dụng một cách chính xác. Sau đây, Ms Hoa Toeic tiếp tục chia sẻ về vai trò cũng như cách sử dụng chính xác giới từ trong phần 1- Miêu tả tranh, đề thi Toeic Writing - TOEIC Writing Test.
    </p>

            <div class="row">
                <div class="col-sm-6">
                     <p class="text justify">
                        <p><strong>1. Vai trò của giới từ trong câu</strong></p><br/>
                     
                        <span style="color: red"> + Giới từ + noun</span><br/>
                        <center><img src="b.jpg"></center>
                        <p class="text justify">
                            Chair/ around &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp     : There are 4 chairs around the table.<br/>
                            Vase/ on: &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp         : There is a vase on the table
                        </p>
                     </p>
                </div>
                <div class="col-sm-6">
                     <p class="text justify">
                        <p><strong>2. Sự biến đổi hình thái của giới từ phần mô tả tranh TOEIC Writing</strong></p><br/>
                        <p class="text justify">
                            Giới từ không có sự biến đổi hình thái. Tuy vậy, bạn cần lưu ý đến các giới từ được tạo thành từ hai từ trở lên để diễn đạt một ý nào đó: next to, instead of, because of, in front of…
                        </p>
                        <center><img src="111.jpg"></center>
                        <p class="text justify">
                            <strong>Next to/ woman:The man is sitting next to the woman.</strong>
                        </p>
                     </p>
                </div>
              </div>
              <br/><br/>
             
              </div>
              </div>
              </div>
            <br />
            <p><Strong>Các bài học liên quan</Strong></p>
            <hr>
            <div class="row">
                <div class="col-sm-3">
                    <img src="C:\Users\Public\Pictures\Sample Pictures\Desert.jpg" align="left" width="50" height="50"/>
                    Test chu testttt<br>
                </div>
                <div class="col-sm-3">
                    <img src="C:\Users\Public\Pictures\Sample Pictures\Penguins.jpg" align="left" width="50" height="50"/>
                    Test chu testttt<br>
                </div>
                <div class="col-sm-3">
                    <img src="C:\Users\Public\Pictures\Sample Pictures\Desert.jpg" align="left" width="50" height="50"/>
                    Test chu testttt<br>
                </div>
                <div class="col-sm-3">
                    <img src="C:\Users\Public\Pictures\Sample Pictures\Desert.jpg" align="left" width="50" height="50"/>
                    Test chu testttt<br>
                </div>
            </div>
 <hr>
<!--sdfsdfsdf-->   

    <%@ include file="footer.jsp" %>
    </div>
</body>
</html>