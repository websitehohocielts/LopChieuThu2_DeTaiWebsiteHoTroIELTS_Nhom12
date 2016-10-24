 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
  
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
                <li ><a href="222.jsp">Home</a></li>
                <li ><a href="Gioi%20Thieu.jsp">Giới thiệu</a></li>
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
 <div class="content-right-full">
          <div class="content-right">
            <div class="intro-home">
                            
                    <h1 style="text-align: left;"><span style="color: #0000ff;">
                    <div class="container">
					<div class="row">
					<div class="alert alert-danger" role="alert" style="margin-right: 30px">
					 <marquee><p style="font-family:arial ; font-size: 16pt">Website hỗ trợ học ielts online </p></marquee>
					 </div>
					</div>
					</div>
                    </span>
                    </h1>

<div class="container">
    <div class="row" style="margin-right:1px">
        <div class="col-sm-3 col-md-3">
            <div class="panel-group" id="accordion">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne"><span class="glyphicon glyphicon-folder-close" style="color: navy;">
                            </span>Giới Thiệu</a>
                        </h4>
                    </div>
                    <div id="collapseOne" class="panel-collapse collapse in">
                        <div class="panel-body">
                            <table class="table">
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-pencil text-primary"></span><a href="#">Hướng dẫn học ielts online</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-pencil text-primary"></span><a href="#">Đăng ký thi ielts</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-pencil text-primary"></span><a href="#">Lịch thi ielts ở TP.HCM</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-pencil text-primary"></span><a href="#">Cấu trúc đề thi ielts</a>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo"><span class="glyphicon glyphicon-th" style="color: red">
                            </span>Ngữ pháp tiếng Anh, Từ vựng</a>
                        </h4>
                    </div>
                    <div id="collapseTwo" class="panel-collapse collapse">
                        <div class="panel-body">
                         <table class="table">
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-education text-primary"></span><a href="#">Ngữ pháp cơ bản</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-education text-primary"></span><a href="#">Grammar In Use</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-education text-primary"></span><a href="#">Các bài học từ vựng tiếng Anh</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-education text-primary"></span><a href="#">Từ vựng tiếng Anh</a>
                                    </td>
                                </tr>
                            </table>
                           
                        </div>
                    </div>
                </div>
               
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseFour"><span class="glyphicon glyphicon-file" style="color: orange">
                            </span>Tin tức luyện thi ielts</a>
                        </h4>
                    </div>
                    <div id="collapseFour" class="panel-collapse collapse">
                        <div class="panel-body">
                            <table class="table">
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-book" style="color: brown"></span><a href="#">Thể Bị Động Trong Ngữ Pháp IELS</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-book" style="color: brown"></span><a href="#">Mẫu Gợi Ý Phần 1 Thi Nói IELTS </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-book" style="color: brown"></span><a href="#">Cấu Trúc Đề Thi Nghe IELTS Academic</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-book" style="color: brown"></span><a href="#">Cách Làm Bài Thi IETLS Writing Dạng Cột</a>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-sm-9 col-md-9" >
            <div class="well" style="background:white;">
            <h1 style="text-align: center">Về chúng tôi</h1>
            <hr>
                <div class="content-right-full">
          <div class="content-right">
            <div class="intro-home">
           
            <address>
                <p style="text-align: justify;"><span style="font-size: small;"><strong>&nbsp;</strong></span></p>
                <p style="text-align: justify;">
                    <span style="font-size: small;">
                        <img style="margin: 10px; float: right; border: 1px solid gray;" src="images/sach3.jpg" border="0" width="300" height="300">Được quản lý và vận hành bởi những sáng lập viên tâm huyết và có nhiều kinh nghiệm trong lĩnh vực giáo dục Tiếng Anh trực tuyến, IeltsOnline cam kết luôn mang đến cho học viên chất lượng đào tạo và dịch vụ tốt nhất. Không chỉ là một website học tiếng Anh thông thường, chúng tôi mong muốn phát triển IeltsOnline thành một môi trường học ngoại ngữ đa phương tiện với nhiều ứng dụng và tiện ích giúp hỗ trợ học viên tối đa trong quá trình học tập, góp phần nâng cao hiệu quả học ngoại ngữ tại Việt Nam.</span>
                </p>
                <p style="text-align: justify;"><span style="font-size: small;">&nbsp;</span></p>
                <p style="text-align: justify;">
                    <span style="font-size: small;">-&nbsp;Học viên sẽ được học kỹ năng trả lời vấn đáp bằng giáo trình biện soạn nội bộ. Học viên có cơ hội&nbsp;<em>luyện tập và thực hành</em>&nbsp;hằng ngày các chủ đề thường gặp trong kỳ thi. Đặc biệt, các bạn sẽ đuợc phỏng vấn bởi các giáo viên lớn tuổi giàu kinh nghiệm mỗi buổi học (15 phút cho mỗi học viên).</span>
                </p>
                <p style="text-align: justify;"><span style="font-size: small;">&nbsp;</span></p>
                <p style="text-align: justify;">
                    <span style="font-size: small;">-&nbsp; Chúng tôi sẽ là người hướng dẫn tận tình cho học viên ở kỹ năng này. Các bạn sẽ biết cách phân tích các dạng bài viết, cách phát hoạt dàn ý và cách dùng các mẫu câu ăn điểm cho phần này. Bài viết sẽ luôn được chấm và sửa cẩn thận.</span>
                </p>
                <p style="text-align: justify;">
                    <span style="font-size: small;"><strong><br></strong>-&nbsp; Học viên sẽ được cung cấp tài liệu đọc hiểu nâng cao từ vựng, song song là học chiến thuật giải đề thi. Tất cả các bài đọc được chấm sửa và giải đáp thắc mắc. Tài liệu đọc phong phú và đa dạng.</span><span style="font-size: small;">Chúng tôi sẽ là người giúp bạn chọn lựa giáo trình, dạng bài đọc sát với đề thi và phù hợp với trình độ của từng học viên.</span>
                </p>
            </address>
            
            </div>
        </div>
    </div>

            </div>
        </div>
    </div>
</div>



 

<!--sdfsdfsdf-->   
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