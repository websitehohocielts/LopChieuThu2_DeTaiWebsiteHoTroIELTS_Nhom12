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
            


<!--sdfsdf-->
 <div class="row">

            <div class="col-sm-3" style="margin-left:20px">
            
            <div class="panel-group">
    <div class="panel panel-info">
     
      <div class="panel-body">
     
                    <img src="images\Desert.jpg" class="img-circle" align="left" width="100" height="100" /><strong>Xin chào Nguyễn Văn A</strong><br>
            
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
        <td><a href="">Tạo lời nhắc</a></td>
      </tr>
    </tbody>
  </table>

            </div>
        </div>
        </div>
        </div>
            <div class="col-sm-8">
                    <div class="panel-group">
          <div class="panel panel-info">
          <div class="panel-heading"><strong><center>Đổi mật khẩu</center></strong></div>
             <div class="panel-body">
             <form id ="frmDMK">
                    <div class="form-group">
                        <label for="inputmkc">Mật khẩu cũ</label>
                        <input type="password" class="form-control" id="inputmkc">
                    </div>
                    <div class="form-group">
                        <label for="inputHT">Mật khẩu mới</label>
                        <input type="password" class="form-control" id="inputHT">
                    </div>
                    <div class="form-group">
                        <label for="inputNS">Nhập lại mật khẩu mới</label>
                        <input type="password" class="form-control" id="inputNS">
                    </div>
                    
                    <center><button type="submit" class="btn btn-primary" id ="dmk">Save</button></center>
                    </form>
                    
                    <script>
                    function validateText(id){
                    	if($("#"+id).val() == null || $("#"+id).val() == "" || $("#"+id).val().length < 4 || $("#"+id).val().length > 15){
                    		
                    		var div = $("#"+id).closest("div");
                    		div.addClass("has-error has-feedback");
                    		div.append('<span class="glyphicon glyphicon-remove form-control-feedback"></span>');
                    		return false;
                    	}
                    	else{
                    		if(id == "inputNS" && $("#inputNS").val() != $("#inputHT").val())
                    			{
                    				alert("Hai ô nhập mật khẩ mới không giống nhau !");
                    				return false;
                    			}
                    		var div = $("#"+id).closest("div");
                    		div.removeClass("has-error");
                    		div.addClass("has-success has-feedback");
                    		div.append('<span class="glyphicon glyphicon-ok form-control-feedback"></span>')
                    		
                    		return true;
                    	}
                    }
                    	$(document).ready(function(){
                    			$("#dmk").click(function(){
                    				if(!validateText("inputmkc")){
                    					return false;
                    				}
                    				if(!validateText("inputHT")){
                    					return false;
                    				}
                    				if(!validateText("inputNS")){
                    					return false;
                    				}
                    				else{
                    					alert("Đổi mật khẩu thành công");
                    				}
                    			})
                    		}		
                    	)
                    </script>
          <!--    <div class="modal fade" id="myModal" role="dialog">
              <div class="modal-dialog modal-lg">
                <div class="modal-content">
                  <div class="modal-body">
                    <div class="alert alert-success">
                        <strong>Success!</strong> Thay đổi mật khẩu thành công.
                    </div>
                   
                  </div>
                  <div class="modal-footer">
                <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
              </div>
                </div>
              </div>
            </div>
            -->
  
            </div>
        </div>
        </div>
        </div>
           
            </div>
 
<!--sdfsdfsdf-->   
<br/>
   
   <hr>
      <%@ include file="footer.jsp" %>
</body>
</html>
