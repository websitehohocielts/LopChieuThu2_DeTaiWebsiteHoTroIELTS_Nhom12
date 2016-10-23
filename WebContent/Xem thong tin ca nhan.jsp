<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="myApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
    <link rel="stylesheet" type="text/css" href="css/menu2.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="css/bootstrap.css" rel="stylesheet">
    <script src="js/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <link href="fonts/glyphicons-halflings-regular.woff" rel="fonts">
  <script src="js/angular.min.js"></script>
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
        <div class="row">
    <div class="col-sm-3">
            <div class="panel-group">
                <div class="panel panel-info">
                <br />
                    <img src="imges\Desert.jpg"  class="img-circle" align="left" width="100" height="100" />Xin chào: <strong></style>Nguyễn Văn A</strong><br>
                        <table class="table table-hover">
                        <tbody>
                          <tr>
                            <td><a href="Xem thong tin ca nhan.jsp">Xem thông tin cá nhân</a></td>
                          </tr>
                          <tr>
                            <td><a href="Doi Mat Khau.jsp">Thay đổi mật khẩu</a></td>
                          </tr>
                          <tr>
                            <td><a href="user upload tai lieu.jsp">Upload tài liệu</a></td>
                          </tr>
                          <tr>
                            <td><a href="Quan ly practice test.jsp">Quản lý practice test</a></td>
                          </tr>
                          <tr>
                            <td><a href="Quan ly bai hoc.jsp">Quản lý bài học</a></td>
                          </tr>
                          <tr>
                            <td><a href="Tao loi nhac.jsp">Tạo lời nhắc</a></td>
                          </tr>
                        </tbody>
                      </table>

                    </div>
                </div>
            </div>
    


   <form ng-app="myApp" ng-controller="validateCtrl" name="myForm" novalidate>
   <div class="row">
        <div class="col-sm-5">
        <div class="panel-group" style="margin-left:10px; margin-right:10px">
    <div class="panel panel-info">
     <div class="panel-heading"><strong><center>Thông tin cá nhân</center></strong></div>
      <div class="panel-body">
       
        <div class="form-group">
        <label for="us">Username</label>
        <input class ="form-control" type="text" name="us" value="nva1" disabled> 
       </div>


       <div class="form-group">
        <label for="ht">Họ Tên</label>
        <input class ="form-control" type="text" name="ht" ng-model="ht" required>
        <span style="color:red" ng-show="myForm.ht.$dirty && myForm.ht.$invalid">
        <span ng-show="myForm.ht.$error.required">Họ tên không thể để trống.</span>
        </span>
       </div>

        <div class="form-group">
        <label for="ns">Ngày Sinh</label>
        <input class ="form-control" type="date" name="ns">
       </div>


       <div class="form-group">
        <label for="email">Email</label>
        <input class ="form-control" type="email" name="email" ng-model="email" required>
        <span style="color:red" ng-show="myForm.email.$dirty && myForm.email.$invalid">
        <span ng-show="myForm.email.$error.required">Email không được để trống</span>
        </span>
       </div>

       <div class="form-group">
        <label for="sdt">Số điện thoại</label>
        <input class ="form-control" type="number" name="sdt" ng-model="sdt" required>
        <span style="color:red" ng-show="myForm.sdt.$dirty && myForm.sdt.$invalid">
        <span ng-show="myForm.sdt.$error.required">Số điện thoại không được để trống</span>
        </span>
       </div>


        <p>
        <center><input type="submit" class="btn btn-primary" ng-disabled="myForm.ht.$dirty && myForm.ht.$invalid || myForm.email.$dirty && myForm.email.$invalid || myForm.sdt.$dirty && myForm.sdt.$invalid" value="Cập nhật" data-target="#myModal" data-toggle="modal"></center>
        </p>
        </div>
        </div>
        </div>
        </form>
        </div>


         <div class="col-sm-3">
                <div class="panel-group">
                <div class="panel panel-info">
                <div class="panel-heading"><strong><center>Lịch học sắp tới</center></strong></div>
                 <div class="panel-body">
          
            
                 </div>
                </div>
            </div>

            </div>


        </div> 
<script>
var app = angular.module('myApp', []);
app.controller('validateCtrl', function($scope) {
    $scope.ht = 'Nguyễn Văn A';
    $scope.email = 'jnguyenvana@gmail.com';
    $scope.ns = '10-12-1996';
    $scope.sdt = 0969234123
});
</script>


 <div class="modal fade" id="myModal" role="dialog">
                           <div class="modal-dialog modal-lg">
                <div class="modal-content">
                  <div class="modal-body">
                    <div class="alert alert-success">
                        <strong>Success!</strong> Thay đổi thông tin thành công.
                    </div>
                   
                  </div>
                  <div class="modal-footer">
                        <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
                    </div>
                </div>
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