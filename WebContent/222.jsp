
    <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="utf-8">
  
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
    $(document).on('click', '.panel-heading span.icon_minim', function (e) {
    var $this = $(this);
    if (!$this.hasClass('panel-collapsed')) {
        $this.parents('.panel').find('.panel-body').slideUp();
        $this.addClass('panel-collapsed');
        $this.removeClass('glyphicon-minus').addClass('glyphicon-plus');
    } else {
        $this.parents('.panel').find('.panel-body').slideDown();
        $this.removeClass('panel-collapsed');
        $this.removeClass('glyphicon-plus').addClass('glyphicon-minus');
    }
});
$(document).on('focus', '.panel-footer input.chat_input', function (e) {
    var $this = $(this);
    if ($('#minim_chat_window').hasClass('panel-collapsed')) {
        $this.parents('.panel').find('.panel-body').slideDown();
        $('#minim_chat_window').removeClass('panel-collapsed');
        $('#minim_chat_window').removeClass('glyphicon-plus').addClass('glyphicon-minus');
    }
});
$(document).on('click', '#new_chat', function (e) {
    var size = $( ".chat-window:last-child" ).css("margin-left");
     size_total = parseInt(size) + 400;
    alert(size_total);
    var clone = $( "#chat_window_1" ).clone().appendTo( ".container" );
    clone.css("margin-left", size_total);
});
$(document).on('click', '.icon_close', function (e) {
    //$(this).parent().parent().parent().parent().remove();
    $( "#chat_window_1" ).remove();
});

    </script>

    <style type="text/css">
      
.col-md-2, .col-md-10{
    padding:0;
}
.panel{
    margin-bottom: 0px;
}
.chat-window{
    bottom:0;
    position:fixed;
    float:right;
    margin-left:820px;
}
.chat-window > div > .panel{
    border-radius: 5px 5px 0 0;
}
.icon_minim{
    padding:2px 10px;
}
.msg_container_base{
  background: #e5e5e5;
  margin: 0;
  padding: 0 10px 10px;
  max-height:240px;
  overflow-x:hidden;
}
.top-bar {
  background: #666;
  color: white;
  padding: 10px;
  position: relative;
  overflow: hidden;
}
.msg_receive{
    padding-left:0;
    margin-left:0;
}
.msg_sent{
    padding-bottom:20px !important;
    margin-right:0;
}
.messages {
  background: white;
  padding: 10px;
  border-radius: 2px;
  box-shadow: 0 1px 2px rgba(0, 0, 0, 0.2);
  max-width:100%;

}
.messages > p {
    font-size: 13px;
    margin: 0 0 0.2rem 0;
  }
.messages > time {
    font-size: 11px;
    color: #ccc;
}
.msg_container {
    padding: 10px;
    overflow: hidden;
    display: flex;
}
img {
    display: block;
    width: 100%;
}
.avatar {
    position: relative;
}
.base_receive > .avatar:after {
    content: "";
    position: absolute;
    top: 0;
    right: 0;
    width: 0;
    height: 0;
    border: 5px solid #FFF;
    border-left-color: rgba(0, 0, 0, 0);
    border-bottom-color: rgba(0, 0, 0, 0);
}

.base_sent {
  justify-content: flex-end;
  align-items: flex-end;
}
.base_sent > .avatar:after {
    content: "";
    position: absolute;
    bottom: 0;
    left: 0;
    width: 0;
    height: 0;
    border: 5px solid white;
    border-right-color: transparent;
    border-top-color: transparent;
    box-shadow: 1px 1px 2px rgba(black, 0.2); // not quite perfect but close
}

.msg_sent > time{
    float: right;
}



.msg_container_base::-webkit-scrollbar-track
{
    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3);
    background-color: #F5F5F5;
}

.msg_container_base::-webkit-scrollbar
{
    width: 12px;
    background-color: #F5F5F5;
}

.msg_container_base::-webkit-scrollbar-thumb
{
    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,.3);
    background-color: #555;
}

.btn-group.dropup{
    position:fixed;
    left:0px;
    bottom:0;
}
    </style>
</head>
<body style="background: url(images/background.jpg);">
<!--
 <div id="logo">
    
         <center><img src="images/banner.jpg" style="width: 70%;" ></center>
         <hr>
 </div>
-->
<% HttpSession userdn = request.getSession();%>
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
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"> <%=userdn.getAttribute("hoten1") %><b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="Xem thong tin ca nhan.jsp">Thông tin cá nhân</a></li>
                        <li class="divider"></li>
                        <li ><a href="LogoutServlet">Đăng xuất</a></li>
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
                        <li data-toggle="modal" data-target="#tbdn1"><a href="#">Test Reading</a></li>
                        <li class="divider"></li>
                        <li data-toggle="modal" data-target="#tbdn1"><a href="#">Test Listening</a></li>
                    </ul>
                </li>
                <li><a href="Tai%20Lieu.jsp">Tài liệu</a></li>
                <li data-toggle="modal" data-target="#tbdn1"><a href="Tin Nhan Ho Tro.jsp">Tin nhắn hỗ trợ</a></li>




            </ul>
        </div><!--/.nav-collapse -->
    </div>
</div>



            
 <div class="modal fade" id="fdangnhap" role="dialog" ng-app="dangnhap1">
 <div ng-controlle="demo1">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-12">
                                    <form name=dangn1>

                                      <div class="modal-dialog modal-sm">
                                        <div class="modal-content">
                                          <div class="modal-body">
                                
                    

                                        <div class="form-group">
                                        <label for="user">Username:</label>
                                        <input class="form-control" type="text" id ="us" name="user" ng-minlength="4" ng-maxlength="15" ng-model="user" required/>
                                        <span class="text-danger" ng-show="dangn1.user.$error.required">User không được để trống</span>
                                        <span class="text-danger" ng-show="dangn1.user.$error.minlength">Độ dài tối thiểu là 4</span>
                                        <span class="text-danger" ng-show="dangn1.user.$error.maxlength">Độ dài tối đa là 15</span>
                                        </div>

                                        <div class="form-group">
                                        <label for="pass">Mật khẩu:</label>
                                        <input id ="ps" class="form-control" type="password" name="pass" ng-minlength="4" ng-maxlength="15" ng-model="pass" required/>
                                        <span class="text-danger" ng-show="dangn1.pass.$error.required">Password không được để trống</span>
                                        <span class="text-danger" ng-show="dangn1.pass.$error.minlength">Độ dài password tối thiểu là 4</span>
                                        <span class="text-danger" ng-show="dangn1.pass.$error.maxlength">Độ dài password tối đa là 15</span>
                                        </div>

                                        <br />
                                        <center><button type="submit" class="btn btn-info" ng-disabled ="!dangn1.$valid" onclick="DangNhapz()">Đăng Nhập</button>
                                            <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button></center>

                                        </center>
                                       
                                  
                        
                                    </form>
                                </div>
                            </div>

                        </div>
                    </div> 
                    </div> 
                     </div>
 </div>
 </div>


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
        <div class="col-sm-3 col-md-3"  >
            <div class="panel-group" id="accordion" >
                <div class="panel panel-default" >
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne"><span class="glyphicon glyphicon-folder-close" style="color: navy;">
                            </span>IELTS</a>
                        </h4>
                    </div>
                    <div id="collapseOne" class="panel-collapse collapse in">
                        <div class="panel-body">
                            <table class="table">
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-pencil text-primary"></span><a href="http://www.jquery2dotnet.com">Tổng quát về ielts </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-pencil text-primary"></span><a href="http://www.jquery2dotnet.com">Địa điểm thi ielts</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-pencil text-primary"></span><a href="http://www.jquery2dotnet.com">Lệ phí thi ielts ở TP.HCM</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-pencil text-primary"></span><a href="http://www.jquery2dotnet.com">Nhận kết quả thi ielts</a>
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
                            </span>KĨ NĂNG</a>
                        </h4>
                    </div>
                    <div id="collapseTwo" class="panel-collapse collapse">
                        <div class="panel-body">
                         <table class="table">
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-education text-primary"></span><a href="http://www.jquery2dotnet.com">Kỹ năng viêt ielts</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-education text-primary"></span><a href="http://www.jquery2dotnet.com">Kỹ năng đọc ielts</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-education text-primary"></span><a href="http://www.jquery2dotnet.com">Kỹ năng nói ielts</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-education text-primary"></span><a href="http://www.jquery2dotnet.com">Kỹ năng nghe ielts</a>
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
                                        <span class="glyphicon glyphicon-book" style="color: brown"></span><a href="ielts.jsp">Thể Bị Động Trong Ngữ Pháp IELS</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-book" style="color: brown"></span><a href="http://www.jquery2dotnet.com">Mẫu Gợi Ý Phần 1 Thi Nói IELTS </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-book" style="color: brown"></span><a href="http://www.jquery2dotnet.com">Cấu Trúc Đề Thi Nghe IELTS Academic</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="glyphicon glyphicon-book" style="color: brown"></span><a href="http://www.jquery2dotnet.com">Cách Làm Bài Thi IETLS Writing Dạng Cột</a>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-sm-9 col-md-9" >
            <div class="well">
                <div class="content-right-full">
          <div class="content-right">
            <div class="intro-home">

                    <p><span style="color: #0000ff;"><strong><span style="font-size: x-large; text-align: left;">&nbsp;</span></strong></span></p>
                    <p style="text-align: center;"><strong>
                    <span style="color: #333333; font-size: x-large; text-align: left;">&nbsp;</span></strong><strong style="color: #0000ff; font-size: x-large;">Bạn muốn vượt qua kỳ thi&nbsp;<span style="color: #ff6600;">IELTS</span>&nbsp;trong 4 tháng?</strong></p>
                    <p style="text-align: center;"><strong style="color: #0000ff; font-size: x-large;">&nbsp;</strong></p>
                    <p style="text-align: center;"><strong style="color: #0000ff; font-size: x-large;"><img src="images/IELTS.jpg" border="0" width="855" height="235"></strong></p>
                    <p>&nbsp;<strong style="font-size: small;"><strong><strong>&nbsp;</strong></strong></strong></p>
            <address>
                    <p style="text-align: justify;">
                        <span style="font-size: small;">
                        <strong>Vượt qua&nbsp;kỳ thi IELTS</strong> là một vấn đề cực kì khó khăn trong&nbsp;<strong>luyện thi ielts<a href="http://www.luyenthiielts.net/" title="luyện thi ielts"></a></strong>. Nhiều học sinh đã mất rất nhiều thời gian và công sức học tập nhưng vẫn không thể đạt được kết quả mong muốn.&nbsp;<em>Lí do của sự thất bại này, về cơ bản, là do các bạn chưa xây dựng được một chiến lược học tập hợp lý, không được giảng dạy đúng trọng tâm kiến thức cần thiết cho kỳ thi.</em></span>
                    </p>
                    <p style="text-align: justify;"><span style="font-size: small;">&nbsp;&nbsp;</span></p>
                    <p style="text-align: justify;">
                        <span style="font-size: small;">Với hơn 20<em>&nbsp;năm kinh nghiệm</em>&nbsp;trong việc&nbsp;<strong>giảng dạy IELTS</strong><strong>&nbsp;</strong>(tại các&nbsp;<strong><em>trung tâm Anh Ngữ hàng đầu</em></strong>), giảng viên ĐH**, Thạc sỹ Nguyễn Văn ABC chắc chắn sẽ giúp các bạn vượt qua kỳ thì IELTS để các bạn có thể đạt được ước mơ học tập và làm việc tại nước ngoài.</span>
                    </p>
                    <p style="text-align: justify;"><span style="font-size: small;">&nbsp;</span></p>
                    <p style="text-align: justify;">
                        <span style="font-size: small;"></span><span style="font-size: small;"></span><strong style="font-size: small;">Với giáo trình được biên soạn kỹ lưỡng (luôn cập nhật các đề luyện thi mới nhất hằng tuần), khóa học sẽ giúp các bạn chuẩn bị tốt nhất cho kỳ thi. Hơn 95% học viên sau khi hoàn thành khóa học đạt điểm 6.0 trở lên.</strong>
                        </p>
                    <p style="text-align: justify;"><strong style="font-size: small;">&nbsp;</strong></p>
                <p style="text-align: center;"><span style="font-size: large;"><strong>&nbsp;</strong><strong style="font-size: small; text-align: center;"><span style="text-decoration: underline;"><a href="http://www.luyenthiielts.net/gioi-thieu/diem-thi-ielts-tham-khao" title="Điểm thi ielts tham khảo."><span style="color: #0000ff;">Xem thêm điểm thi các học viên trung tâm</span></a></span></strong></span></p>
            </address>
            <address>
                <p style="text-align: justify;"><span style="font-size: small;"><strong>&nbsp;</strong></span></p>
                <p style="text-align: justify;">
                    <span style="font-size: small;">
                        <img style="margin: 10px; float: right; border: 1px solid gray;" src="images/way_to_ielts.jpg" border="0" width="300" height="300">-<strong> Kỹ năng Nghe IELTS</strong>&nbsp;được giảng dạy bằng&nbsp;<em>giáo trình luyện thi ielts nội bộ đặc biệt, được chia làm 02 phần. Phần ôn tập để tập nghe ở nhà, phần kỹ năng sẽ nghe và được hướng dẫn tại lớp. Mỗi học viên được hỗ trợ một máy vi tính để thực hành nghe.&nbsp;</em>&nbsp;</span>
                </p>
                <p style="text-align: justify;"><span style="font-size: small;">&nbsp;</span></p>
                <p style="text-align: justify;">
                    <span style="font-size: small;">-&nbsp;<strong>Kỹ năng Nói IELTS&nbsp;:&nbsp;</strong>Được học kỹ năng trả lời vấn đáp bằng giáo trình biện soạn nội bộ. Học viên có cơ hội&nbsp;<em>luyện tập và thực hành</em>&nbsp;hằng ngày các chủ đề thường gặp trong kỳ thi. Đặc biệt, các bạn sẽ đuợc phỏng vấn bởi các giáo viên lớn tuổi giàu kinh nghiệm mỗi buổi học (15 phút cho mỗi học viên).</span>
                </p>
                <p style="text-align: justify;"><span style="font-size: small;">&nbsp;</span></p>
                <p style="text-align: justify;">
                    <span style="font-size: small;">-&nbsp;<strong>Kỹ năng viết IELTS</strong>&nbsp;: Chúng tôi sẽ là   người hướng dẫn tận tình cho học viên ở kỹ năng này. Các bạn sẽ biết cách phân tích các dạng bài viết, cách phát hoạt dàn ý và cách dùng các mẫu câu ăn điểm cho phần này. Bài viết sẽ luôn được chấm và sửa cẩn thận.</span>
                </p>
                <p style="text-align: justify;">
                    <span style="font-size: small;"><strong><br></strong>-&nbsp;<strong>Kỹ năng Đọc IELTS</strong>: Học viên sẽ được cung cấp tài liệu đọc hiểu nâng cao từ vựng, song song là học chiến thuật giải đề thi. Tất cả các bài đọc được chấm sửa và giải đáp thắc mắc. Tài liệu đọc phong phú và đa dạng.</span><span style="font-size: small;">Chúng tôi sẽ là người giúp bạn chọn lựa giáo trình, dạng bài đọc sát với đề thi và phù hợp với trình độ của từng học viên.</span>
                </p>
            </address>
            
            </div>
        </div>
    </div>

            </div>
        </div>
    </div>
</div>

<script type="text/javascript" src="js/angular.min.js"></script>
  <script type="text/javascript">
    var app = angular.module('dangnhap1',[]);
        app.controller('demo1',function($scope){

        });
  </script>

  
<!--chat-->

<div class="container">
    <div class="row chat-window col-xs-5 col-md-3" id="chat_window_1" >
        <div class="col-xs-12 col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading top-bar">
                    <div class="col-md-8 col-xs-8">
                        <h3 class="panel-title"><span class="glyphicon glyphicon-comment"></span> Chat</h3>
                    </div>
                    <div class="col-md-4 col-xs-4" style="text-align: right;">
                        <a href="#"><span id="minim_chat_window" class="glyphicon glyphicon-minus icon_minim"></span></a>
                        <a href="#"><span class="glyphicon glyphicon-remove icon_close" data-id="chat_window_1"></span></a>
                    </div>
                </div>
                <div class="panel-body msg_container_base">
                    <div class="row msg_container base_receive">
                        <div class="col-md-2 col-xs-2 avatar">
                            <img src="images/Desert.jpg" class=" img-responsive ">
                        </div>
                        <div class="col-xs-10 col-md-10">
                            <div class="messages msg_receive">
                                 <p>Chào bạn, hiện nay IeltsOnline phát triển chương trình học tiếng Anh Online thú vị và hiệu quả ^^ Giúp bạn học ielts, phát âm, giao tiếp, từ vựng... Hãy chat với mình để được tư vấn thông tin chi tiết nhé!</p>
                                <time datetime="2009-11-13T20:00">About • 1 min</time>
                            </div>
                        </div>
                    </div>
                <div class="panel-footer">
                    <div class="input-group">
                        <input id="btn-input" type="text" class="form-control input-sm chat_input" placeholder="Write your message here..." />
                        <span class="input-group-btn">
                        <button class="btn btn-primary btn-sm" id="btn-chat">Send</button>
                        </span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
   <div class="btn-group dropup">
        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
            <span class="glyphicon glyphicon-cog"></span>
            <span class="sr-only">Toggle Dropdown</span>
        </button>
        <ul class="dropdown-menu" role="menu">
            <li><a href="#" id="new_chat"><span class="glyphicon glyphicon-plus"></span> Add</a></li>
            <li><a href="#"><span class="glyphicon glyphicon-list"></span> Other</a></li>
            <li><a href="#"><span class="glyphicon glyphicon-remove"></span> Close</a></li>
            <li class="divider"></li>
            <li><a href="#"><span class="glyphicon glyphicon-eye-close"></span> Invisible</a></li>
        </ul>
    </div>
</div>



<!--sdfsdf-->

        <br />
           
<hr>
<%@ include file="footer.jsp" %>

</body>
</html>
