<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF8">
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
            <a class="navbar-brand" href="222.html"><span class="glyphicon glyphicon-home"></span></a>
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
        <td><a href="Tao loi nhac.jsp">Tạo lời nhắc</a></td>
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
          <div class="panel-heading"><strong><center><h4>Quản Lý Practice Test</h4></center></strong></div>
             <div class="panel-body">

                

              <ul class="nav nav-tabs">
                <li class="active"><a data-toggle="tab" href="#home"><strong>Test Reading</strong></a></li>
                <li><a data-toggle="tab" href="#menu1"><strong>Test Listening</strong></a></li>
                
              </ul>

              <div class="tab-content">
                <div id="home" class="tab-pane fade in active">
              <table class="table table-bordered">
                    <thead><br/>
                      <tr>
                        <th>Tên bài kiểm tra</th>
                        
                        <th>Điểm Số</th>
                        <th>Kiểm Tra Lại</th>
                       
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td><form>
                      <label><a id="tenread1" href="#">Bài kiểm tra Reading 5</a></label>
                    </div></form></td>
                        <td><p id="diemread1">8.5 </p></td>
                        <td><a id="linkread1" href ="#"><span class="glyphicon glyphicon-repeat"></span> </a></td>
                      </tr>
                      <tr>
                        <td><form>
                      <label><a id="tenread2" href="#">Bài kiểm tra Reading 3</a></label>
                    </div></form></td>
                        <td><p id="diemread2">10 </p></td>
                        <td><a id="linkread2" href ="#"><span class="glyphicon glyphicon-repeat"></span> </a></td>
                      </tr>
                      <tr>
                        <td><form>
                      <label><a id="tenread3" href="#">Bài kiểm tra Reading 2</a></label>
                    </div></form></td>
                        <td><p id="diemread3">1.5 </p></td>
                        <td><a id="linkread3" href ="#"><span class="glyphicon glyphicon-repeat"></span> </a></td>
                      </tr>
                    </tbody>
                  </table>
                   <center>
                   <button class="btn btn-primary" onclick="laydanhsachReading(1)">1</button>
                      <button class="btn btn-primary" onclick="laydanhsachReading(2)">2</button>
                      <button class="btn btn-primary">></button>
                      <script type="text/javascript">
                      function laydanhsachReading(trang){
                        var xhr = new XMLHttpRequest();
                        xhr.onreadystatechange = function(){
                          if(xhr.readyState ===4 && xhr.status===200){
                            var items = JSON.parse(xhr.responseText);
                      
                            var trangkt = trang * 3 -1;
                            var trangbd = trangkt-2;
                             var y = 0;
                            for(var index=0;index<items.length;index++){
                               
                              if(index >= trangbd && index<= trangkt)
                              {
                                y= y+1;
                                if(y==1){
                                document.getElementById("tenread1").innerHTML = items[index].tenbai;
                                document.getElementById("diemread1").innerHTML = items[index].diem;
                                document.getElementById("linkread1").href = items[index].linkbai;
                                }
                                if(y==2){
                                   document.getElementById("tenread2").innerHTML = items[index].tenbai;
                                document.getElementById("diemread2").innerHTML = items[index].diem;
                                document.getElementById("linkread2").href = items[index].linkbai;
                                }
                                if(y==3){
                                 document.getElementById("tenread3").innerHTML = items[index].tenbai;
                                document.getElementById("diemread3").innerHTML = items[index].diem;
                                document.getElementById("linkread3").href = items[index].linkbai;
                                }
                               
                              }
                            }
                         
                          }
                        }
                        xhr.open("GET","practiceTestListen.json","true");
                        xhr.send();

                      }
                      </script>
                    </center>
                </div>
                <div id="menu1" class="tab-pane fade">
                  <table class="table table-bordered">
                    <thead><br/>
                      <tr>
                        <th>Tên bài kiểm tra</th>
                        
                        <th>Điểm Số</th>
                        <th>Kiểm Tra Lại</th>
                       
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td><form>
                      <label><a id="tenlisten1" href="#">Bài kiểm tra Listening 7</a></label>
                    </div></form></td>
                        <td><p id="diemlisten1">6.6 </p></td>
                        <td><a id="linklisten1" href ="#"><span class="glyphicon glyphicon-repeat"></span> </a></td>
                      </tr>
                      <tr>
                        <td><form>
                      <label><a id="tenlisten2" href="#">Bài kiểm tra Listening 3</a></label>
                    </div></form></td>
                        <td><p id="diemlisten2">9.8 </p></td>
                        <td><a id="linklisten2" href ="#"><span class="glyphicon glyphicon-repeat"></span> </a></td>
                      </tr>
                      <tr>
                        <td><form>
                      <label><a id="tenlisten3" href="#">Bài kiểm tra Listening 9</a></label>
                    </div></form></td>
                        <td><p id="diemlisten3">4.5</p> </td>
                        <td><a id="linklisten3" href ="#"><span class="glyphicon glyphicon-repeat"></span> </a></td>
                      </tr>
                    </tbody>
                  </table>
                   <center>
                   <button class="btn btn-primary" onclick="laydanhsachListen(1)">1</button>
                      <button class="btn btn-primary" onclick="laydanhsachListen(2)">2</button>
                      <button class="btn btn-primary">></button>
                      <script type="text/javascript">
                      function laydanhsachListen(trang){
                        var xhr = new XMLHttpRequest();
                        xhr.onreadystatechange = function(){
                          if(xhr.readyState ===4 && xhr.status===200){
                            var items = JSON.parse(xhr.responseText);
                      
                            var trangkt = trang * 3 -1;
                            var trangbd = trangkt-2;
                             var y = 0;
                            for(var index=0;index<items.length;index++){
                               
                              if(index >= trangbd && index<= trangkt)
                              {
                                y= y+1;
                                if(y==1){
                                document.getElementById("tenlisten1").innerHTML = items[index].tenbai;
                                document.getElementById("diemlisten1").innerHTML = items[index].diem;
                                document.getElementById("linklisten1").href = items[index].linkbai;
                                }
                                if(y==2){
                                   document.getElementById("tenlisten2").innerHTML = items[index].tenbai;
                                document.getElementById("diemlisten2").innerHTML = items[index].diem;
                                document.getElementById("linklisten2").href = items[index].linkbai;
                                }
                                if(y==3){
                                 document.getElementById("tenlisten3").innerHTML = items[index].tenbai;
                                document.getElementById("diemlisten3").innerHTML = items[index].diem;
                                document.getElementById("linklisten3").href = items[index].linkbai;
                                }
                               
                              }
                            }
                         
                          }
                        }
                        xhr.open("GET","practiceTestListen.json","true");
                        xhr.send();

                      }
                      </script>
                    </center>
                </div>
                
              </div>
            </div>
             </div>
          </div>   
        </div>
        </div>
            <div class="col-sm-4">
                

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