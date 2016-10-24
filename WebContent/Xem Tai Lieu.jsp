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
                                        <li><a href="click%20listenning.jsp">IELTS 6.0 - 8.0</a></li>
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
        <br />
        <ol class="breadcrumb">
    <li><a href="#">Home</a></li>
    <li><a href="#">Tài Liệu </a></li>
    <li><a href="#">52 Cấu Trúc Tiếng Anh Thông Dụng</a></li>
  </ol>
<div class="panel-group" style="margin-left:10px; margin-right:10px">
    <div class="panel panel-info">
     <div class="panel-heading"><strong><center><h2>52 Cấu Trúc Tiếng Anh Thông Dụng</h2></center></strong></div>
      <div class="panel-body">
  
  <br />
  <p>
        Đây là bài học rất hay, mem SHARE về WALL để khi nào cần thì học nhé <br/><br/>
      .
      • S + V+ too + adj/adv + (for someone) + to do something(quá....để cho ai làm gì...)<br/><br/>

      • S + V + so + adj/ adv + that +S + V (quá... đến nỗi mà...)<br/><br/>

      • It + V + such + (a/an) + N(s) + that + S +V(quá... đến nỗi mà...)<br/><br/>

      • S + V + adj/ adv + enough + (for someone) + to do something. (Đủ... cho ai đó làm gì...)<br/><br/>

      • Have/ get + something + done (VpII)(nhờ ai hoặc thuê ai làm gì...)<br/><br/>

      • It + be + time + S + V (-ed, cột 2) / It’s +time +for someone +to do something(đã đến lúc ai đóphải làm <br/><br/>gì...)

      • It + takes/took+ someone + amount of time + to do something(làm gì... mất bao nhiêu thờigian...)<br/><br/>

      • To prevent/stop + someone/something + From + V-ing(ngăn cản ai/cái gì... không làm gì..)<br/><br/>

      • S + find+ it+ adj to do something(thấy ... để làm gì...)<br/><br/>

      • To prefer + Noun/ V-ing + to + N/ V-ing.(Thích cái gì/làm gì hơn cái gì/ làm gì)<br/><br/>

      • Would rather + V¬ (infinitive) + than + V (infinitive)(thích làm gì hơn làm gì)<br/><br/>

      • To be/get Used to + V-ing(quen làm gì)<br/><br/>

      • Used to + V (infinitive)(Thường làm gì trong qk và bây giờ không làm nữa)<br/><br/>

      • to be amazed at = to be surprised at + N/V-ing( ngạc nhiên về....)<br/><br/>
      • to be angry at + N/V-ing(tức giận về)<br/><br/>
      • to be good at/ bad at + N/ V-ing(giỏi về.../ kém về...)<br/><br/>
      • to be/get tired of + N/V-ing(mệt mỏi về...)<br/><br/>
      • can’t stand/ help/ bear/ resist + V-ing(không nhịn được làm gì...)<br/><br/>
      • to be keen on/ to be fond of + N/V-ing(thích làm gì đó...)<br/><br/>
      • to be interested in + N/V-ing(quan tâm đến...)<br/><br/>
      • to waste + time/ money + V-ing(tốn tiền hoặc tg làm gì)<br/><br/>
      • To spend + amount of time/ money + V-ing(dành bao nhiêu thời gian làm gì…)<br/><br/>
      • To spend + amount of time/ money + on + something(dành thời gian vào việc gì...)<br/><br/>
      • to give up + V-ing/ N(từ bỏ làm gì/ cái gì...)<br/><br/>
      • would like/ want/wish + to do something(thích làm gì...)<br/><br/>
      • have + (something) to + Verb(có cái gì đó để làm)<br/><br/>
      • It + be + something/ someone + that/ who(chính...mà...)<br/><br/>
      • Had better + V(infinitive)(nên làm gì....)<br/><br/>
    </p>
    <br />
    <br />
    <center><button class="btn btn-info btn-lg"><span class="glyphicon glyphicon-save"> Download</span></button></center>
    
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