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
  <script type="text/javascript" src="editor/ckeditor.js"></script>
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
 <ol class="breadcrumb">
    <li><a href="#">Home</a></li>
    <li><a href="#">Tin nhắn hỗ trợ</a></li>
  </ol>

    <div class="panel-group" style="margin-left:10px; margin-right:10px">
    <div class="panel panel-info">
     <div class="panel-heading"><strong><center><h2>Gửi Tin Nhắn Hỗ Trợ</h2></center></strong></div>
      <div class="panel-body">
            <form>
            <div class="form-group">
              <label for="tieudeu">Tiêu đề</label>
              <input type="text" class="form-control" id="tieude" placeholder="Nhập tiêu đề ở đây">
            </div>
             <div class="form-group">
              <label for="tieudeu">Username người nhận </label>
              <input type="text" class="form-control" id="usnhan" placeholder="Nhập tiêu đề ở đây">
              <span class="help-block">Nếu muốn gửi cho người nào đó thì nhập username.Nếu để trống sẽ mặc định gửi cho Admin</span>
            </div>
            
            <div class="form-group">
              <label for="editor1">Nội dung</label>
              <textarea class="form-control" rows="5" id="noidung"></textarea>
            </div>
            <script type="text/javascript">
                CKEDITOR.replace( 'noidung' );
            </script>
          </form>

    
      </div>
      </div>
      </div>
        <center><button class="btn btn-primary btn-lg" id="btnsend1""><span class="glyphicon glyphicon-open"> Send</span></button></center>
          
          <div class="modal fade" id="guitinthanhcong" role="dialog">
                     <div class="modal-dialog modal-sm">
                <div class="modal-content">
                  <div class="modal-body">
                    <div class="alert alert-success">
                        <strong>Success ! Gửi tin nhắn hỗ trợ thành công</strong> 
                    </div>
                   
                  </div>
                  <div class="modal-footer">
                <button type="button" class="btn btn-primary" data-dismiss="modal" id="closeee">Close</button>
              </div>
                </div>
              </div>
            </div>
            
             <div class="modal fade" id="guitinthatbai" role="dialog">
                     <div class="modal-dialog modal-sm">
                <div class="modal-content">
                  <div class="modal-body">
                    <div class="alert alert-danger">
                        <strong>Gửi tin nhắn thất bại !</strong> 
                    </div>
                   
                  </div>
                  <div class="modal-footer">
                <button type="button" class="btn btn-primary" data-dismiss="modal" id="closeee">Close</button>
              </div>
                </div>
              </div>
            </div>
            
            <center><a href="user xem lich su ho tro.jsp"><h3><span style="color: blue;">Xem lịch sử hỗ trợ</h3></span></a></center>
            <br/>
            <br />
 
<script type="text/javascript">
            $('#btnsend1').click(function(event){
    			var td = $('#tieude').val();
    			var hoten = $('#usnhan').val();
    			var noidung = CKEDITOR.instances.noidung.getData();
    	if(td == ""){
    		alert("Nhập tiêu đề !");
    		return;
    	}
    	if(noidung == ""){
    		alert("Nhập nội dung !");
    		return;
    	}
    			 $.get('GuiTinNhanServlet',{tieude:td,noidung:noidung,usernhan:hoten},function(responseText){
    				
    				 $('#'+responseText+'').modal('show');
    			});  
    			
    			
    		});
            </script>
<!--sdfsdfsdf-->   

     <br />
           
<hr>
<%@ include file="footer.jsp" %>
</div>
</body>
</html>