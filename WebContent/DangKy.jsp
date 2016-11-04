<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="dangky1">
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
            <a class="navbar-brand" href="111.jsp"><span class="glyphicon glyphicon-home"></span></a>
        </div>
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav navbar-right">
                <button class="btn btn-primary" data-toggle="modal" data-target="#fdangnhap" style="margin-top:0.2cm">Đăng Nhập</button> &nbsp; <button class="btn btn-primary" style="margin-top:0.2cm">Đăng Ký</button>
            </ul>
            <ul class="nav navbar-nav">
                <li class="active"><a href="111.jsp">Home</a></li>
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
                <li data-toggle="modal" data-target="#tbdn1"><a href="#">Tin nhắn hỗ trợ</a></li>




            </ul>
        </div><!--/.nav-collapse -->
    </div>
</div>

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
                                    <form name=dangn1 action = "DangNhapServlet" method = "POST">

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

<!---->

<div ng-controlle="demo">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <form name=dangky class="form-horizontal" role="form">
<div class="panel-group" style="margin-left:10px; margin-right:10px">
    <div class="panel panel-info">
     <div class="panel-heading"><strong><center><h2>Đăng ký tài khoản</h2></center></strong></div>
      <div class="panel-body">
            <div class="form-group">
              <label for="user" class="col-lg-2 control-label">Username:</label>
              <div class="col-lg-10">
              <input class="form-control" type="text" name="user" id ="user" ng-minlength="4" ng-maxlength="15" ng-model="user" required/>
              <span class="text-danger" ng-show="dangky.user.$error.required">User không được để trống</span>
            <span class="text-danger" ng-show="dangky.user.$error.minlength">Độ dài tối thiểu là 4</span>
            <span class="text-danger" ng-show="dangky.user.$error.maxlength">Độ dài tối đa là 15</span>
              </div>
              </div>

            <div class="form-group">
              <label for="pass" class="col-lg-2 control-label" align ="margin-left">Mật khẩu:</label>
               <div class="col-lg-10">
              <input class="form-control" type="password" name="pass"  id ="passw" ng-minlength="4" ng-maxlength="15" ng-model="pass" required/>
              <span class="text-danger" ng-show="dangky.pass.$error.required">Password không được để trống</span>
            <span class="text-danger" ng-show="dangky.pass.$error.minlength">Độ dài password tối thiểu là 4</span>
            <span class="text-danger" ng-show="dangky.pass.$error.maxlength">Độ dài password tối đa là 15</span>
             
              </div>
              </div>
              <div class="form-group">
              
              <label for="npass" class="col-lg-2 control-label">Nhập lại mật khẩu:</label>
               <div class="col-lg-10">
              <input class="form-control" type="password" name="npass" ng-minlength="4" ng-maxlength="15" ng-model="npass" ng-pattern="pass" required/>
              <span class="text-danger" ng-show="dangky.npass.$error.required">Password không được để trống</span>
            <span class="text-danger" ng-show="dangky.npass.$error.minlength">Độ dài password tối thiểu là 4</span>
            <span class="text-danger" ng-show="dangky.npass.$error.maxlength">Độ dài password tối đa là 15</span>
            <span class="text-danger" ng-show="dangky.npass.$error.pattern">Nhập lại mật khẩu không khớp</span>
              </div>
              </div>

              <div class="form-group" >
              <label for="myemail" class="col-lg-2 control-label">Email :</label><div class="col-lg-10"> <input class="form-control" type="email" name="myemail" id="email" ng-model="myemail" required/></p>
              <span class="text-danger" ng-show="dangky.myemail.$error.required">Email không được để trống</span>
              <span class="text-danger" ng-show="dangky.myemail.$error.email">Không đúng định dạng Email</span>
            </div>
            
            </div>

            <div class="form-group">
              <label for="hoten" class="col-lg-2 control-label">Họ tên:</label>
              <div class="col-lg-10">
              <input class="form-control" type="text" name="hoten" id="hoten" ng-model="hoten" required/>
              <span class="text-danger" ng-show="dangky.hoten.$error.required">Họ tên không được để trống</span>
              </div>
              </div>

              <div class="form-group">
              <label for="sdt" class="col-lg-2 control-label">Số điện thoại:</label>
              <div class="col-lg-10">
              <input class="form-control" type="number" name="sdt" id="sdt" ng-minlength ="10" ng-maxlength="11" ng-model="sdt" required/>
              <span class="text-danger" ng-show="dangky.sdt.$error.required">Số điệ thoại không được để trống</span>
               <span class="text-danger" ng-show="dangky.sdt.$error.minlength">Số điện thoại không hợp lệ</span>
              <span class="text-danger" ng-show="dangky.sdt.$error.maxlength">Số điện thoại không hợp lệ</span>
              </div>
            </div>

            <br />
           <center> <button type="submit" class="btn btn-info" ng-disabled ="!dangky.$valid" data-toggle="modal" data-target="#dktc" id="dktkb">Đăng Ký</button>
           </center>
           
           <script type ="text/javascript">
	$(document).ready(function(){
		$('#dktkb').click(function(event){
			var username = $('#user').val();
			var password = $('#passw').val();
			var email = $('#email').val();
			var sdt = $('#sdt').val();
			var hoten = $('#hoten').val();
			
			 $.get('DangKy',{user:username,pass:password,em:email,sdt:sdt,ht:hoten},function(responseText){
				alert(responseText);
			});  
			
		});
	});
</script>
           
          </form>
        </div>
      </div>
    </div>
  </div>

  <script type="text/javascript" src="js/angular.min.js"></script>
  <script type="text/javascript">
    var app = angular.module('dangky1',[]);
        app.controller('demo',function($scope){

        });
  </script>

</div>
</div>
</div>  
<!--sdfsdf-->
        <br />
 <hr>          
<%@ include file="footer.jsp" %>
</body>
</html>
