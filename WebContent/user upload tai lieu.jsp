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
                        <li ><a href="click Test Listening.html.jsp">Test Listening</a></li>
                    </ul>
                </li>
                <li><a href="Tai%20Lieu.jsp">Tài liệu</a></li>
                <li><a href="Tin Nhan Ho Tro.jsp">Tin nhắn hỗ trợ</a></li>




            </ul>
        </div><!--/.nav-collapse -->
    </div>
</div>
<!--sdfsdf-->
     <ol class="breadcrumb">
      <li><a href="#">Home</a></li>
      <li><a href="#">IELTS Online</a></li>
      <li><a href="#">WRITING</a></li>
    <li><a href="#">IELTS 8.0</a></li>
    </ol>
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
          <div class="panel-heading"><strong><center><h4>Quản Lý File</h4></center></strong></div>
             <div class="panel-body">

                

              <ul class="nav nav-tabs">
                <li class="active"><a data-toggle="tab" href="#home"><strong>File của tôi</strong></a></li>
                <li><a data-toggle="tab" href="#menu1"><strong>File được share</strong></a></li>
                <li><a data-toggle="tab" href="#menu2"><strong>Upload File</strong></a></li>
              </ul>

              <div class="tab-content">
                <div id="home" class="tab-pane fade in active">
              <table class="table table-bordered">
                    <thead><br/>
                      <tr>
                        <th>Title</th>
                        
                        <th>Type</th>
                        <th>Size</th>
                        <th>Date Published</th>
                        <th>Delete</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td><form>
                    <div class="checkbox">
                      <label><input type="checkbox" value=""><a href="Xem Tai Lieu.jsp"><p id="f1">52 cấu trúc tiếng anh</p></a> &nbsp;&nbsp; <a href ="#"><span class="glyphicon glyphicon-save"></span> </a> &nbsp;&nbsp; <span class="glyphicon glyphicon-share-alt" data-toggle="modal" data-target="#chonchiase"></span></label>
                    </div></form></td>
                        <td><p id="type1">PDF</p> </td>
                        <td><p id="size1">3.5 Mb</p></td>
                        <td><p id="ngay1">08/09/2016</p></td>
                        <td><a id="link1" href ="#"><span class="glyphicon glyphicon-remove"></span></a></td>

                      </tr>
                      <tr>
                        <td><form>
                    <div class="checkbox">
                      <label><input type="checkbox" value=""><p id="f2"><a href="#">Started Ielts</a>&nbsp;&nbsp; </p><a href ="#"><span class="glyphicon glyphicon-save"></span></a> &nbsp;&nbsp; <span class="glyphicon glyphicon-share-alt" data-toggle="modal" data-target="#chonchiase"></span></a></label>
                    </div></form></td>
                         <td><p id="type2">PDF</p> </td>
                        <td><p id="size2">8.5 Mb</p></td>
                        <td><p id="ngay2">15/01/2016</p></td>
                         <td><a id="link2" href ="#"><span class="glyphicon glyphicon-remove"></span></a></td>

                      </tr>
                      <tr>
                        <td><form>
                    <div class="checkbox">
                      <label><input type="checkbox" value=""><a href="#"><p id="f3">LongMan Ielts &nbsp;&nbsp;</p></a> <a href ="#"><span class="glyphicon glyphicon-save"></span></a> &nbsp;&nbsp; <span class="glyphicon glyphicon-share-alt" data-toggle="modal" data-target="#chonchiase"></span></label>
                    </div></form></td>
                         <td><p id="type3">PDF</p> </td>
                        <td><p id="size3">567Kb</p></td>
                        <td><p id="ngay3">28/07/2016</p></td>
                         <td><a id="link3" href ="#"><span class="glyphicon glyphicon-remove"></span></a></td>

                      </tr>
                    </tbody>
                  </table>
                   <center>
                      <button class="btn btn-primary" onclick="laydanhsachFile(1)">1</button>
                      <button class="btn btn-primary" onclick="laydanhsachFile(2)">2</button>
                      <button class="btn btn-primary">></button>
                       <script type="text/javascript">
                      function laydanhsachFile(trang){
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
                                document.getElementById("f1").innerHTML = items[index].tenbai;
                                document.getElementById("ngay1").innerHTML = items[index].ngay;
                                document.getElementById("link1").href = items[index].linkbai;
                                document.getElementById("type1").innerHTML = items[index].type;
                                document.getElementById("size1").innerHTML = items[index].size;
                                
                                }
                                if(y==2){
                                   document.getElementById("f2").innerHTML = items[index].tenbai;
                                document.getElementById("ngay2").innerHTML = items[index].ngay;
                                document.getElementById("link2").href = items[index].linkbai;
                                document.getElementById("type2").innerHTML = items[index].type;
                                document.getElementById("size2").innerHTML = items[index].size;
                                }
                                if(y==3){
                                 document.getElementById("f3").innerHTML = items[index].tenbai;
                                document.getElementById("ngay3").innerHTML = items[index].ngay;
                                document.getElementById("link3").href = items[index].linkbai;
                                document.getElementById("type3").innerHTML = items[index].type;
                                document.getElementById("size3").innerHTML = items[index].size;
                                }
                               
                              }
                            }
                         
                          }
                        }
                        xhr.open("GET","userquanlyfile.json","true");
                        xhr.send();

                      }
                      </script>
                    </center>
                </div>
                <div id="menu1" class="tab-pane fade">
                  <table class="table table-bordered">
                    <thead><br/>
                      <tr>
                        <th>Title</th>
                        <th>Type</th>
                        <th>Size</th>
                        <th>Chia sẻ</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td><form>
                    
                      <label><p id="f11"><a href="Xem Tai Lieu.html">52 cấu trúc tiếng anh</a>&nbsp;&nbsp; <a href ="#"><span class="glyphicon glyphicon-save"></p></span></a></label>
                    </div></form></td>
                       <td><p id="type11">PDF</p> </td><p id="f1">
                        <td><p id="size11">3.5 Mb</p></td>
                        <td><p id="share11">Được chia sẻ bởi nguyenvana12</p></td>
                        <td><a id="link11" href ="#"><span class="glyphicon glyphicon-remove"></span></a></td>

                      </tr>
                      <tr>
                        <td><form>
                   
                      <label><a href="#"><p id="f22">Started Ielts</p></a>&nbsp;&nbsp; <a href ="#"><span class="glyphicon glyphicon-save"></span></a></label>
                    </div></form></td>
                        <td><p id="type22">PDF</p> </td>
                        <td><p id="size22">8.5 Mb</p></td>
                        <td><p id="share22">Được chia sẻ bởi trangvang</p></td>
                        <td><a id="link22" href ="#"><span class="glyphicon glyphicon-remove"></span></a></td>
                      </tr>
                      <tr>
                        <td><form>
                      <label><a href="#"><p id="f33">LongMan Ielts</p></a>&nbsp;&nbsp; <a href ="#"><span class="glyphicon glyphicon-save"></span></a></label>
                    </div></form></td>
                        <td><p id="type33">PDF</p> </td>
                        <td><p id="size33">567Kb</p></td>
                        <td><p id="share33">Được chia sẻ bởi longmang123</p></td>
                        <td><a id="link33" href ="#"><span class="glyphicon glyphicon-remove"></span></a></td>
                      </tr>
                    </tbody>
                  </table>
                  <center>
                  <button class="btn btn-primary" onclick="laydanhsachFile2(1)">1</button>
                      <button class="btn btn-primary" onclick="laydanhsachFile2(2)">2</button>
                      <button class="btn btn-primary">></button>
                      <script type="text/javascript">
                      function laydanhsachFile2(trang){
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
                                document.getElementById("f11").innerHTML = items[index].tenbai;
                                document.getElementById("share11").innerHTML = items[index].share;
                                document.getElementById("link11").href = items[index].linkbai;
                                document.getElementById("type11").innerHTML = items[index].type;
                                document.getElementById("size11").innerHTML = items[index].size;
                                
                                }
                                if(y==2){
                                   document.getElementById("f22").innerHTML = items[index].tenbai;
                                document.getElementById("share22").innerHTML = items[index].share;
                                document.getElementById("link22").href = items[index].linkbai;
                                document.getElementById("type22").innerHTML = items[index].type;
                                document.getElementById("size22").innerHTML = items[index].size;
                                }
                                if(y==3){
                                 document.getElementById("f33").innerHTML = items[index].tenbai;
                                document.getElementById("share33").innerHTML = items[index].share;
                                document.getElementById("link33").href = items[index].linkbai;
                                document.getElementById("type33").innerHTML = items[index].type;
                                document.getElementById("size33").innerHTML = items[index].size;
                                }
                               
                              }
                            }
                         
                          }
                        }
                        xhr.open("GET","userquanlyfile.json","true");
                        xhr.send();

                      }
                      </script>

                    </center>
                </div>
                <div id="menu2" class="tab-pane fade">
                    <form role="form">
                    <div class="form-group">
                        <br/>
                      <label for="nhaptuurl">Nhập từ URL</label>
                      <input type="url" class="form-control" id="nhaptuurl" placeholder="Enter url here">
                    </div>
                    
                    <div class="form-group">
                      <label for="upfile">Upload từ máy tính</label>
                      <input type="file" id="upfile">
                    </div>
                     <br/>
                  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#uploadfile">Upload</button>
                  <div class="modal fade" id="uploadfile" role="dialog">
                     <div class="modal-dialog modal-lg">
                <div class="modal-content">
                
                  <div class="modal-body">
                    <div class="alert alert-success">
                        <strong>Success!</strong> Upload file thành công.
                    </div>
                   
                  </div>
                  <div class="modal-footer">
                <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
              </div>
                </div>
              </div>
            </div>
                </div>

               
              </div>
            </div>
             </div>
          </div>   
        </div>
        </div>
        <div class="col-sm-4">
          

        </div>
  
<!---->
  <div class="modal fade" id="chonchiase" role="dialog">
      <div class="modal-dialog modal-lg">
          <div class="modal-content">
          <div class="modal-header">
          
          <h4 class="modal-title">Chia sẻ tài liệu</h4>
          <p>Nhập họ tên hoặc Email người nhận</p>
        </div>
             <div class="modal-body">
                    <div class="form-group">
                       <label for="inputHT">Họ Tên</label>
                      <input type="text" class="form-control" id="inputHT">
                     </div>
                    <div class="form-group">
                       <label for="inputMail">Email</label>
                       <input type="text" class="form-control" id="inputMail">
                 </div>
                   
                  </div>
                  <div class="modal-footer">
                  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#bamchiase">Chia sẻ</button>
                     <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
                  </div>

                    <div class="modal fade" id="bamchiase" role="dialog">
                     <div class="modal-dialog modal-lg">
                <div class="modal-content">
                  <div class="modal-body">
                    <div class="alert alert-success">
                        <strong>Success!</strong> Chia sẻ thành công !.
                    </div>
                   
                  </div>
                  <div class="modal-footer">
                <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
              </div>
                </div>
              </div>
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