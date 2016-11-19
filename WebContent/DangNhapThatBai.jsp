 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
  
    <title>Đăng nhập</title>
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
<div class="container" style="background-color: white; ">
<div class="slideshow">
    <div><a href="#"><img src="images/slide_1.jpg" alt="" border="0" /></a></div>
    <div><a href="#"><img src="images/slide_2.jpg" alt="" border="0" /></a></div>
    <div><a href="#"><img src="images/slide_3.jpg" alt="" border="0" /></a></div>
</div>
<hr>
<%@ include file="thanhMenuChuaDangNhap.jsp" %>

  <div class="modal fade" id="tbdn1" role="dialog">
                          <div class="modal-dialog modal-sm">
                            <div class="modal-content">
                              <div class="modal-body">
                                <div class="alert alert-success">
                                    <strong>Mời bạn đăng nhập </strong>
                                </div>
                               
                              </div>
                              <div class="modal-footer">
                            <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
                          </div>
                            </div>
                          </div>
                        </div>

            
 <div class="modal fade" id="fdangnhap" role="dialog" ng-app="dangnhap1">
 <div ng-controlle="demo1">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-12">
                                    <form name=dangn1 action = "loginbean.jsp" method = "POST">

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
                                        <center><button type="submit" class="btn btn-info" ng-disabled ="!dangn1.$valid">Đăng Nhập</button>
                                            <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button></center>

                                        
                                       
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
    </div>
    <div class= "row">
    <div class="col-md-6 col-md-offset-3"">
    

		<div class="alert alert-danger"> <span class="glyphicon glyphicon-warning-sign"></span> Đăng nhập thất bại ! Mời đăng nhập lại</div>
		<form role="form" action = "DangNhapServlet" method = "POST">
						<div class="form-group">
							<label for="username1">Username</label> <input
								type="text" class="form-control" id="username1" name ="user"
								placeholder="Enter Username" minlength = "4" maxlength = "45" required>
				<span class="help-block">Username tối thiểu 4 ký tự và tối đa 45 ký tự.</span>
						</div>
						<div class="form-group">
							<label for="Password1">Password</label> <input
								type="password" class="form-control" id="Password1" name="pass"
								placeholder="Password" minlength = "4" maxlength = "45" required>
								<span class="help-block">Mật khẩu tối thiểu 4 ký tự và tối đa 45 ký tự.</span>
						</div>
						
						<center><button type="submit" class="btn btn-primary" id ="dangnhaplai">Đăng Nhập</button>
							<a href="DangKy.jsp"><button type="button" class="btn btn-primary" id ="dangky1">Đăng Ký</button></a>
						</center>
					</form>
					
 			
			
			  
</div>
</div>
<script type="text/javascript" src="js/angular.min.js"></script>
  <script type="text/javascript">
    var app = angular.module('dangnhap1',[]);
        app.controller('demo1',function($scope){

        });
  </script>

<!--sdfsdf-->

        <br />
           
<hr>
<%@ include file="footer.jsp" %>
</body>
</html>