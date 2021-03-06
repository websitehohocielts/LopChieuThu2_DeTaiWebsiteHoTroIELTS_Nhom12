<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="myApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Xem thong tin ca nhan</title>
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
<
<% HttpSession userdn = request.getSession(); %>

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
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"> <%=userdn.getAttribute("hoten1") %> <b class="caret"></b></a>
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
                    <img src="imges\Desert.jpg"  class="img-circle" align="left" width="100" height="100" />Xin chào: <strong></style><%=userdn.getAttribute("hoten1") %></strong><br>
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
        <input class ="form-control" type="text" name="us" id = "us"value="<%=userdn.getAttribute("username1") %>" disabled> 
       </div>


       <div class="form-group">
        <label for="ht">Họ Tên</label>
        <input class ="form-control" type="text" name="ht" id ="ht" value="<%=userdn.getAttribute("hoten1") %>" ng-model="ht" required>
        <span style="color:red" ng-show="myForm.ht.$dirty && myForm.ht.$invalid">
        <span ng-show="myForm.ht.$error.required">Họ tên không thể để trống.</span>
        </span> 
       </div>

      


       <div class="form-group">
        <label for="email">Email</label>
        <input class ="form-control" type="email" name="email" id ="email" value="<%=userdn.getAttribute("email") %>" ng-model="email" required>
        <span style="color:red" ng-show="myForm.email.$dirty && myForm.email.$invalid">
        <span ng-show="myForm.email.$error.required">Email không được để trống</span>
        </span> 
       </div>

       <div class="form-group">
        <label for="sdt">Số điện thoại</label>
        <input class ="form-control" type="number" name="sdt" id ="sdt" ng-minlength ="9" ng-maxlength="11" value="<%=userdn.getAttribute("sodienthoai") %>" ng-model="sdt" required>
         <span style="color:red" ng-show="myForm.sdt.$dirty && myForm.sdt.$invalid">
        <span ng-show="myForm.sdt.$error.maxlength">Số điện thoại không hợp lệ</span>
          <span ng-show="myForm.sdt.$error.minlength">Số điện thoại không hợp lệ</span>
        <span ng-show="myForm.sdt.$error.required">Số điện thoại không được để trống</span>
        </span> 
       </div>
        <p>
        <center><input type="submit" class="btn btn-primary" ng-disabled="myForm.sdt.$error.minlength||myForm.sdt.$error.maxlength|| myForm.ht.$dirty && myForm.ht.$invalid || myForm.email.$dirty && myForm.email.$invalid || myForm.sdt.$dirty && myForm.sdt.$invalid" value="Cập nhật" data-target="#myModal" data-toggle="modal"></center>
        </p>
        </div>
        </div>
        </div>
        </form>
        </div>

<div class="modal fade" id="capnhatttthanhcong" role="dialog">
			    <div class="modal-dialog">
			     
			      <div class="modal-content">
			        <div class="modal-body">
			          <p>Cập nhật thông tin thành công !.</p>
			        </div>
			        <div class="modal-footer">
			          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			        </div>
			      </div>
			      
			    </div>
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
     $scope.ht = "<%=userdn.getAttribute("hoten1") %>";
    $scope.email = "<%=userdn.getAttribute("email") %>";
    $scope.sdt = "<%=userdn.getAttribute("sodienthoai") %>"
});
</script> 


 <div class="modal fade" id="myModal" role="dialog">
                <div class="modal-dialog modal-sm">
                <div class="modal-content">
                  <div class="modal-body">
                    <div class="alert alert-warning">
                        Bạn có chắc muốn thay đổi thông tin không ?
                    </div>
                   
                  </div>
                  <div class="modal-footer">
                        <button class = "btn btn-primary" name="capnhatthongtin" id= "capnhatthongtin" data-dismiss="modal">Đồng ý</button>  <button type="button" class="btn btn-primary" data-dismiss="modal">Hủy</button>
                    </div>
                </div>
              </div>
            </div>
            
            <script type="text/javascript">
            $('#capnhatthongtin').click(function(event){
    			var username = $('#us').val();
    			var hoten = $('#ht').val();
    			var email = $('#email').val();
    			var sdt = $('#sdt').val();
    	
    			 $.get('CapNhatThongTin',{user:username,em:email,sdt:sdt,ht:hoten},function(responseText){
    				/* alert(responseText); */
    				 $('#'+responseText+'').modal('show');
    			});  
    			
    			
    			 $('#myModal').dialog("close")
    		});
            </script>
<!--sdfsdfsdf-->   

          <br />
           
<hr>
<%@ include file="footer.jsp" %>
</body>
</html>