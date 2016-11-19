<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="taoloinhac">
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
<% HttpSession userdn1 = request.getSession();%>
 <% if (userdn1.getAttribute("username1") == null){ %>
	<%@ include file="thanhMenuChuaDangNhap.jsp" %> 
	<%@ include file ="FileDangNhapMenuChuaDangNhap.jsp" %>
<% } %>
<% if (userdn1.getAttribute("username1") != null){ %>
	<%@ include file="thanhMenuDaDangNhap.jsp" %> 
<% } %> 
<!--sdfsdf-->
        <div class="row">
    
        <div class="col-sm-3" style="margin-left:20px">
        <div class="panel-group">
          <div class="panel panel-info">
     
             <div class="panel-body">
        
          <img src="images\Desert.jpg"  class="img-circle" align="left" width="100" height="100" />Xin chào: <strong><%=userdn1.getAttribute("hoten1") %>></strong><br>
        
        
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
        </div>

<div ng-controlle="demo">
    <div class="container">
      <div class="row">
        <div class="col-sm-8">
          <form name=dangky>
<div class="panel-group" style="margin-left:10px; margin-right:10px">
    <div class="panel panel-info">
     <div class="panel-heading"><strong><center><h2>Tạo lời nhắc</h2></center></strong></div>
      <div class="panel-body">
            <div class="form-group">
              <label for="user">Tiêu đề:</label>
              <input class="form-control" type="text" name="user" ng-minlength="10" ng-maxlength="100" ng-model="user" required/>
              <span class="text-danger" ng-show="dangky.user.$error.required">Tiêu đề không được để trống</span>
            <span class="text-danger" ng-show="dangky.user.$error.minlength">Độ dài tối thiểu là 10</span>
            <span class="text-danger" ng-show="dangky.user.$error.maxlength">Độ dài tối đa là 100</span>
              </div>

            <div class="form-group">
              <label for="pass">Chọn ngày:</label>
              <input class="form-control" type="date" name="pass"ng-model="pass" required/>
              <span class="text-danger" ng-show="dangky.pass.$error.required">Ngày không được để trống</span>
        
              </div>
              
              <div class="form-group">
              <label for="sdt">Nội dung:</label>
              <textarea class="form-control" type="text" name="sdt" ng-minlength ="10" ng-maxlength="250" ng-model="sdt" rows="5" required/></textarea>
              <span class="text-danger" ng-show="dangky.sdt.$error.required">Nội dung không được để trống</span>
               <span class="text-danger" ng-show="dangky.sdt.$error.minlength">Nội dung không được nhỏ hơn 10 ký tự</span>
              <span class="text-danger" ng-show="dangky.sdt.$error.maxlength">ội dung không được lớn hơn 250 ký tự</span>
              </div>
</div>
</div>
</div>


            <br />
           <center> <button type="submit" class="btn btn-info" ng-disabled ="!dangky.$valid" data-toggle="modal" data-target="#dktc">Tạo lời nhắc</button>
           </center>
            <div class="modal fade" id="dktc" role="dialog">
                          <div class="modal-dialog modal-sm">
                            <div class="modal-content">
                              <div class="modal-body">
                                <div class="alert alert-success">
                                    <strong>Tạo lời nhắc thành công </strong>
                                </div>
                               
                              </div>
                              <div class="modal-footer">
                            <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
                          </div>
                            </div>
                          </div>
                        </div>
          </form>
        </div>
      </div>
    </div>
  </div>

  <script type="text/javascript" src="js/angular.min.js"></script>
  <script type="text/javascript">
    var app = angular.module('taoloinhac',[]);
        app.controller('demo',function($scope){

        });
  </script>

</div>
</div>
</div>  
<!--sdfsdfsdf-->   
 <br />
           
<hr>
<%@ include file="footer.jsp" %>
</body>
</html>