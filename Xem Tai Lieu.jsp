<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
        <br />
        <ol class="breadcrumb">
    <li><a href="#">Home</a></li>
    <li><a href="#">Tài Liệu </a></li>
    <li><a href="#">52 Cấu Trúc Tiếng Anh Thông Dụng</a></li>
  </ol>
<div class="panel-group" style="margin-left:10px; margin-right:10px">
    <div class="panel panel-info">
     <div class="panel-heading"><strong><center><h2>52 Cấu Trúc Tiếng Anh Thông Dụng</h2></center></strong></div>
      <div class="panel-body">
  
  <br />
  <p>
        Đây là bài học rất hay, mem SHARE về WALL để khi nào cần thì học nhé <br/><br/>
      .
      • S + V+ too + adj/adv + (for someone) + to do something(quá....để cho ai làm gì...)<br/><br/>

      • S + V + so + adj/ adv + that +S + V (quá... đến nỗi mà...)<br/><br/>

      • It + V + such + (a/an) + N(s) + that + S +V(quá... đến nỗi mà...)<br/><br/>

      • S + V + adj/ adv + enough + (for someone) + to do something. (Đủ... cho ai đó làm gì...)<br/><br/>

      • Have/ get + something + done (VpII)(nhờ ai hoặc thuê ai làm gì...)<br/><br/>

      • It + be + time + S + V (-ed, cột 2) / It’s +time +for someone +to do something(đã đến lúc ai đóphải làm <br/><br/>gì...)

      • It + takes/took+ someone + amount of time + to do something(làm gì... mất bao nhiêu thờigian...)<br/><br/>

      • To prevent/stop + someone/something + From + V-ing(ngăn cản ai/cái gì... không làm gì..)<br/><br/>

      • S + find+ it+ adj to do something(thấy ... để làm gì...)<br/><br/>

      • To prefer + Noun/ V-ing + to + N/ V-ing.(Thích cái gì/làm gì hơn cái gì/ làm gì)<br/><br/>

      • Would rather + V¬ (infinitive) + than + V (infinitive)(thích làm gì hơn làm gì)<br/><br/>

      • To be/get Used to + V-ing(quen làm gì)<br/><br/>

      • Used to + V (infinitive)(Thường làm gì trong qk và bây giờ không làm nữa)<br/><br/>

      • to be amazed at = to be surprised at + N/V-ing( ngạc nhiên về....)<br/><br/>
      • to be angry at + N/V-ing(tức giận về)<br/><br/>
      • to be good at/ bad at + N/ V-ing(giỏi về.../ kém về...)<br/><br/>
      • to be/get tired of + N/V-ing(mệt mỏi về...)<br/><br/>
      • can’t stand/ help/ bear/ resist + V-ing(không nhịn được làm gì...)<br/><br/>
      • to be keen on/ to be fond of + N/V-ing(thích làm gì đó...)<br/><br/>
      • to be interested in + N/V-ing(quan tâm đến...)<br/><br/>
      • to waste + time/ money + V-ing(tốn tiền hoặc tg làm gì)<br/><br/>
      • To spend + amount of time/ money + V-ing(dành bao nhiêu thời gian làm gì…)<br/><br/>
      • To spend + amount of time/ money + on + something(dành thời gian vào việc gì...)<br/><br/>
      • to give up + V-ing/ N(từ bỏ làm gì/ cái gì...)<br/><br/>
      • would like/ want/wish + to do something(thích làm gì...)<br/><br/>
      • have + (something) to + Verb(có cái gì đó để làm)<br/><br/>
      • It + be + something/ someone + that/ who(chính...mà...)<br/><br/>
      • Had better + V(infinitive)(nên làm gì....)<br/><br/>
    </p>
    <br />
    <br />
    <center><button class="btn btn-info btn-lg"><span class="glyphicon glyphicon-save"> Download</span></button></center>
    </div>
      </div>
      </div>
      <p><Strong>Các bài học liên quan</Strong></p>
      <hr>
      <div class="row">
        <div class="col-sm-3">
          <img src="images\Desert.jpg" class="img-circle" align="left" width="50" height="50"/>
          Test chu testttt<br>
        </div>
        <div class="col-sm-3">
          <img src="images\Desert.jpg" class="img-circle" align="left" width="50" height="50"/>
          Test chu testttt<br>
        </div>
        <div class="col-sm-3">
          <img src="images\Desert.jpg" class="img-circle" align="left" width="50" height="50"/>
          Test chu testttt<br>
        </div>
        <div class="col-sm-3">
          <img src="images\Desert.jpg" class="img-circle" align="left" width="50" height="50"/>
          Test chu testttt<br>
        </div>
      </div>
<!--sdfsdfsdf-->   
       <br />
           
<hr>
<%@ include file="footer.jsp" %>
</div>
</body>
</html>