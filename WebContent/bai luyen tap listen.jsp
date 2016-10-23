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
                                        <li><a href="click%20listenning.jspl">IELTS 6.0 - 8.0</a></li>
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
 <ol class="breadcrumb">
    <li><a href="#">Home</a></li>
    <li><a href="#">Free Test</a></li>
    <li><a href="#">READING</a></li>
  
  </ol>
<div class="panel-group" style="margin-left:10px; margin-right:10px">
    <div class="panel panel-info">
     <div class="panel-heading"><strong><center><h2>Luyện nghe IELTS</h2></center></strong></div>
      <div class="panel-body">
        
        <br />
        <div data-spy="scroll" data-target=".navbar" data-offset="50">

      
        <div class="container-fluid">
          <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
           
          </div>
          <div>
          
            <div class="collapse navbar-collapse" id="myNavbar">
              <ul class="nav navbar-nav">
                <li><a href="#section1">Passage 1</a></li>
                <li><a href="#section2">Passage 2</a></li>
                <li><a href="#section3">Passage 3</a></li>
               
              </ul>
            </div>
          </div>

        </div>
      <div id="section1" class="container-fluid">
  <h1>Passage 1</h1>
  <center>
        <audio controls>
        <source src="http://www.w3schools.com/tags/horse.mp3" type="audio/mp3">
       
      </audio>
  </center>
  <br />
  <div class="row">
            <div class="col-md-6">
            
                <form>
        <b>1.why does the writer include information about the Cherokee language?</b>
          <div class="radio">
            <label  id="11"><input type="radio" name="optradio">A To show how simple, traditional cultures can have complicated grammar structures </label>
          </div>
          <div class="radio">
            <label><input type="radio" name="optradio">B To show how English grammar differs from Cherokee grammar </label>
          </div>
          <div class="radio">
            <label><input type="radio" name="optradio">C To prove that complex grammar structures were invented by the Cherokees. </label>
        </div>
        <div class="radio">
            <label><input type="radio" name="optradio">D To demonstrate how difficult it is to learn the Cherokee language  </label>
        </div>
        </form>
             <form>
      <b>3  What can be inferred about the slaves' pidgin language?</b>
        <div class="radio">
          <label><input type="radio" name="optradio" >A It contained complex grammar.  </label>
        </div>
        <div class="radio">
          <label><input type="radio" name="optradio">B It was based on many different languages.  </label>
        </div>
        <div class="radio">
          <label  id="13"><input type="radio" name="optradio">C It was difficult to understand, even among slaves. </label>
      </div>
      <div class="radio">
          <label><input type="radio" name="optradio">D It was created by the land-owners.   </label>
      </div>
      </form>
            </div>
            <div class="col-md-6">
                
                <form>
        <b>2.All the following sentences about Nicaraguan sign language are true EXCEPT</b>
          <div class="radio">
            <label><input type="radio" name="optradio">A The language has been created since 1979.  </label>
          </div>
          <div class="radio">
            <label id="12"><input type="radio" name="optradio">B The language is based on speech and lip reading.  </label>
          </div>
          <div class="radio">
            <label><input type="radio" name="optradio">C The language incorporates signs which children used at home.  </label>
        </div>
        <div class="radio">
            <label><input type="radio" name="optradio">D The language was perfected by younger children. </label>
        </div>
        </form>
             <form>
      <b>4  What can be inferred about the slaves' pidgin language?</b>
        <div class="radio">
          <label><input type="radio" name="optradio">A It contained complex grammar.  </label>
        </div>
        <div class="radio">
          <label  id="14"><input type="radio" name="optradio">B It was based on many different languages.  </label>
        </div>
        <div class="radio ">
          <label><input type="radio" name="optradio">C It was difficult to understand, even among slaves. </label>
      </div>
      <div class="radio">
          <label><input type="radio" name="optradio">D It was created by the land-owners.   </label>
      </div>
      </form>
             
            </div>
        </div>
  </div>
<div id="section2" class="container-fluid">
  <h1>Passage 2 - </h1>
  <center>
        <audio controls>
        <source src="http://www.w3schools.com/tags/horse.mp3" type="audio/mp3">
       
      </audio>
  </center>
  <br/>
  <div class="row">
            <div class="col-md-6">
            
                <form>
        <b>1.why does the writer include information about the Cherokee language?</b>
          <div class="radio">
            <label><input type="radio" name="optradio">A To show how simple, traditional cultures can have complicated grammar structures </label>
          </div>
          <div class="radio">
            <label><input type="radio" name="optradio">B To show how English grammar differs from Cherokee grammar </label>
          </div>
          <div class="radio">
            <label id="21"><input type="radio" name="optradio">C To prove that complex grammar structures were invented by the Cherokees. </label>
        </div>
        <div class="radio">
            <label><input type="radio" name="optradio">D To demonstrate how difficult it is to learn the Cherokee language  </label>
        </div>
        </form>
             <form>
      <b>3  What can be inferred about the slaves' pidgin language?</b>
        <div class="radio">
          <label><input type="radio" name="optradio">A It contained complex grammar.  </label>
        </div>
        <div class="radio">
          <label id="23"><input type="radio" name="optradio">B It was based on many different languages.  </label>
        </div>
        <div class="radio">
          <label><input type="radio" name="optradio">C It was difficult to understand, even among slaves. </label>
      </div>
      <div class="radio">
          <label><input type="radio" name="optradio">D It was created by the land-owners.   </label>
      </div>
      </form>
            </div>
            <div class="col-md-6">
                
                <form>
        <b>2.All the following sentences about Nicaraguan sign language are true EXCEPT</b>
          <div class="radio">
            <label id="22"><input type="radio" name="optradio">A The language has been created since 1979.  </label>
          </div>
          <div class="radio">
            <label><input type="radio" name="optradio">B The language is based on speech and lip reading.  </label>
          </div>
          <div class="radio">
            <label><input type="radio" name="optradio">C The language incorporates signs which children used at home.  </label>
        </div>
        <div class="radio">
            <label><input type="radio" name="optradio">D The language was perfected by younger children. </label>
        </div>
        </form>
             <form>
      <b>4  What can be inferred about the slaves' pidgin language?</b>
        <div class="radio">
          <label id="24"><input type="radio" name="optradio">A It contained complex grammar.  </label>
        </div>
        <div class="radio">
          <label><input type="radio" name="optradio">B It was based on many different languages.  </label>
        </div>
        <div class="radio ">
          <label><input type="radio" name="optradio">C It was difficult to understand, even among slaves. </label>
      </div>
      <div class="radio">
          <label><input type="radio" name="optradio">D It was created by the land-owners.   </label>
      </div>
      </form>
             
            </div>
        </div>
  
</div>
<div id="section3" class="container-fluid">
  <h1>Passage 3 -</h1>
  <center>
        <audio controls>
        <source src="http://www.w3schools.com/tags/horse.mp3" type="audio/mp3">
       
      </audio>
  </center>
  <br/>
  <div class="row">
            <div class="col-md-6">
            
                <form>
        <b>1.why does the writer include information about the Cherokee language?</b>
          <div class="radio">
            <label><input type="radio" name="optradio">A To show how simple, traditional cultures can have complicated grammar structures </label>
          </div>
          <div class="radio">
            <label id="31"><input type="radio" name="optradio">B To show how English grammar differs from Cherokee grammar </label>
          </div>
          <div class="radio">
            <label><input type="radio" name="optradio">C To prove that complex grammar structures were invented by the Cherokees. </label>
        </div>
        <div class="radio">
            <label><input type="radio" name="optradio">D To demonstrate how difficult it is to learn the Cherokee language  </label>
        </div>
        </form>
             <form>
      <b>3  What can be inferred about the slaves' pidgin language?</b>
        <div class="radio">
          <label><input type="radio" name="optradio">A It contained complex grammar.  </label>
        </div>
        <div class="radio">
          <label id="33"><input type="radio" name="optradio">B It was based on many different languages.  </label>
        </div>
        <div class="radio">
          <label><input type="radio" name="optradio">C It was difficult to understand, even among slaves. </label>
      </div>
      <div class="radio">
          <label><input type="radio" name="optradio">D It was created by the land-owners.   </label>
      </div>
      </form>
            </div>
            <div class="col-md-6">
                
                <form>
        <b>2.All the following sentences about Nicaraguan sign language are true EXCEPT</b>
          <div class="radio">
            <label><input type="radio" name="optradio">A The language has been created since 1979.  </label>
          </div>
          <div class="radio">
            <label><input type="radio" name="optradio">B The language is based on speech and lip reading.  </label>
          </div>
          <div class="radio">
            <label><input type="radio" name="optradio">C The language incorporates signs which children used at home.  </label>
        </div>
        <div class="radio">
            <label id="32"><input type="radio" name="optradio">D The language was perfected by younger children. </label>
        </div>
        </form>
             <form>
      <b>4  What can be inferred about the slaves' pidgin language?</b>
        <div class="radio">
          <label><input type="radio" name="optradio">A It contained complex grammar.  </label>
        </div>
        <div class="radio">
          <label><input type="radio" name="optradio">B It was based on many different languages.  </label>
        </div>
        <div class="radio ">
          <label><input type="radio" name="optradio">C It was difficult to understand, even among slaves. </label>
      </div>
      <div class="radio">
          <label id="34"><input type="radio" name="optradio">D It was created by the land-owners. </label>
      </div>
      </form>
             
            </div>


        </div>
  
</div>

      </div>

      </div>
      </div>
      <br />
      <center><button type="button" class="btn btn-primary" id="btnBaiTapLisTenz">Hoàn Thành</button></center>
          <script type="text/javascript">
        var btn = document.getElementById("btnBaiTapLisTenz");
        btn.onclick=function(){
            
          // document.getElementById("btnBaiTapLisTenz").disabled = true;
             document.getElementById("34").style.color = "green";
             document.getElementById("34").style.fontWeight= "bold";
             document.getElementById("11").style.color = "green";
             document.getElementById("11").style.fontWeight= "bold";
             document.getElementById("12").style.color = "green";
             document.getElementById("12").style.fontWeight= "bold";
             document.getElementById("13").style.color = "green";
             document.getElementById("13").style.fontWeight= "bold";
             document.getElementById("14").style.color = "green";
             document.getElementById("14").style.fontWeight= "bold";
             document.getElementById("21").style.color = "green";
             document.getElementById("21").style.fontWeight= "bold";
             document.getElementById("22").style.color = "green";
             document.getElementById("22").style.fontWeight= "bold";
             document.getElementById("23").style.color = "green";
             document.getElementById("23").style.fontWeight= "bold";
             document.getElementById("24").style.color = "green";
             document.getElementById("24").style.fontWeight= "bold";
             document.getElementById("31").style.color = "green";
             document.getElementById("31").style.fontWeight= "bold";
             document.getElementById("32").style.color = "green";
             document.getElementById("32").style.fontWeight= "bold";
             document.getElementById("33").style.color = "green";
             document.getElementById("33").style.fontWeight= "bold";
        };
      </script>

      <br />
      <p><Strong>Các bài test liên quan</Strong></p>
      <hr>
      <div class="row">
        <div class="col-sm-3">
          <img src="images\Desert.jpg" class="img-circle" align="left" width="50" height="50"/>
          Full test IELTS 1<br>
        </div>
        <div class="col-sm-3">
          <img src="12.jpg" class="img-circle" align="left" width="50" height="50"/>
          Full test IELTS 2<br>
        </div>
        <div class="col-sm-3">
          <img src="images\Desert.jpg" class="img-circle" align="left" width="50" height="50"/>
          Full test IELTS 7<br>
        </div>
        <div class="col-sm-3">
          <img src="12.jpg" class="img-circle" align="left" width="50" height="50"/>
          Full test IELTS 10<br>
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