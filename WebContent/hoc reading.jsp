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
        <li><a href="#">IELTS ONLINE</a></li>
        <li><a href="#">READING</a></li>
    <li><a href="#">READING 6.0 - 8.0</a>
    </ol>
<div class="panel-group" style="margin-left:10px; margin-right:10px">
    <div class="panel panel-info">
     <div class="panel-heading"><strong><center><h2>Unit 38: Cụm từ phổ biến với "under" và "over"</h2></center></strong></div>
      <div class="panel-body">
    
    <br />
    <p><strong>UNDER </strong></p><br/>
             <p class="text justify"> 
                    * Go under: Thất bại về tài chính (việc làm ăn hoặc công ty)<br/>
                    - The business went under and they lost everything.<br/>
                    Việc làm ăn thất bại và họ mất tất cả.<br/>
                    - If the economy continues on this downward trend, thousands of companies will go under.
                    Nếu nền kinh tế tiếp tục theo hướng đi xuống, ngàn hàng công ty sẽ phá sản.</p>

          <p class="text justify"> 
          * Go under: Mất sự tĩnh táo khi bạn được tiêm thuốc mê<br/>
          - She <strong>went under</strong> as soon as she was given the anesthetic for the operation.<br/>
          <i>Cô ta bị mê sau khi được tiêm thuốc mê trong cuộc giải phẩu.</i><br/>
          - The dentist gave me a jab and I <strong>went under</strong>.
          Nha sĩ tiêm thuốc cho tôi và tôi bị mê.</p>
 
                    <p><b>OVER </b></p><br/>
          <p class="text justify">
        * Talk it over: Thảo luận về việc gì đó Helen’s mum said she’d talk it <strong>over</strong> with Helen’s dad.<br />
        Mẹ của Helen nói rằng bà ta muốn nói bàn bạc với ba của Helen.<br />
        Don’t just walk out! Let’s talk it <strong>over</strong> first.<br />
         (Đừng bỏ đi! Hãy bàn bạc lại.)
                     </p>
            
      <p class="text justify">
        <strong>* Hand something over/Hand over something:</strong> Đưa cái gì đó cho ai<br/>
        - You need to <strong>hand over your passport</strong> when you talk to the immigration officer.<br/>
        Bạn cần trình hộ chiếu của bạn khi bạn nói chuyện với nhân viên xuất nhập cảnh.</br>
        - The robbers told us to <b>hand over our wallets, purses and jewellery.</b><br />
        Những tên cướp bảo chúng tôi nộp ví, giỏ xách và tư trang.

      </p>
      <p class="text justify">
        <b>* Chew something over / Chew over something:</b> Suy nghĩ về việc gì đó một cách cẩn thận hoặc bàn bạc nó với người khác trước khi quyết định làm cái gì<br />
        - Let me <b>chew it over</b> first. I’ll let you know my decision tomorrow.<br />
        Hãy để tôi suy nghĩ lại. Tôi sẽ báo cho chị biết quyết định vào ngày mai.<br/>
        - You should <b>chew over what he said</b>. He had some really good ideas in the meeting.<br/>
        Bạn nên suy nghĩ về cái ông ta vừa nó. Ông ta thật sự có những ý kiến hay trong cuộc họp.<br />

      </p>
        
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





     <br />  
<hr>
<%@ include file="footer.jsp" %>
</div>
</div>
</body>
</html>