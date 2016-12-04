<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>Nội dung cuộc trò truyện !</title>
    <link rel="stylesheet" type="text/css" href="css/menu2.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="css/bootstrap.css" rel="stylesheet">
    <script src="js/jquery.min.js"></script>
    <link href="fonts/glyphicons-halflings-regular.woff" rel="fonts">
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
    
  <script type="text/javascript">
		var id = $(location).attr('search').substring(1);
  		
 	$.get('ChiTietTinNhan',{id:id},function(responseJson){
		 if(responseJson!=null){
               $.each(responseJson, function(key,value) { 
            	  
                      document.getElementById("tieude").innerHTML = value['tieude'];
                   
                      document.getElementById("noidung").innerHTML = value['noidung'];
                      
						
               });
            } 
	}); 
	
	   
  	$.get('NoiDungCuocTroTruyen',{idtn:id},function(responseJson){
		 if(responseJson!=null){
              $.each(responseJson, function(key,value) { 
            	  var name = '<%= session.getAttribute("username1") %>';
            	
            	  if(name != value['usergui']){
            		  
		            	  var div = document.createElement('div');
		            	    div.className = 'row';
		            	    div.innerHTML = ' <br /><div class="col-md-6" style="text-align: left;border-radius: 8px;border-style:solid;background-color: whitesmoke;">'+value['noidungtl']+'</div>';
		            	    document.getElementById('ndd').appendChild(div);
            	  }
            	  else{
            		  var div = document.createElement('div');
	            	    div.className = 'row';
	            	    div.innerHTML = ' <br /><div class="col-md-6 col-md-offset-6" style="text-align: left;border-radius: 8px;border-style:solid;background-color: azure; ">'+value['noidungtl']+'</div>';
	            	    document.getElementById('ndd').appendChild(div);
            	  }
            	  
            	   
              });
           } 
	});  
	

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
    <li><a href="#">Nội dung hỗ trợ </a></li>
   </ol>
   <div class="panel-group" style="margin-left:10px; margin-right:10px">
    <div class="panel panel-info">
     <div class="panel-heading"><strong><center><h2 id ="tieude">Nội dung cuộc trò truyện</h2></center></strong></div>
      <div class="panel-body">
		<center>
		<p>Nội dung câu hỏi !</p>
			<p class="bg-info" id = "noidung" style="margin: 0 0 10px;"></p>
		</center>
		<hr>
		<div id ="ndd">
			
               
           </div>
		<hr>
		<strong>Viết trả lời </strong>
		<textarea class="form-control" rows="3" id ="nnd"></textarea>
		
		<br />
		<center>
		<button class="btn btn-primary" id="guitl" onclick="guitinhantl()">Gửi</button>
		</center>
		
		<script type="text/javascript">
		function guitinhantl(){
				var id = $(location).attr('search').substring(1);
				var noidung = $('#nnd').val();
				if(noidung == ""){
					alert("Nhập nội dung ");
					return;
				}
				 $.get('UserTraLoiTinNhanServlet',{noidungtl:noidung,idtn:id},function(responseText){
	    				if(responseText == "loi")
    						 $('#loi').modal('show');
	    				else{
	    					location.reload();
	    				}
    			});  
		}
		</script>
      </div>
      </div>
      
      
         <div class="modal fade" id="loi" role="dialog">
                     <div class="modal-dialog modal-sm">
                <div class="modal-content">
                  <div class="modal-body">
                    <div class="alert alert-danger">
                        <strong>Có lỗi xảy ra khi gửi tin nhắn !</strong> 
                    </div>
                   
                  </div>
                  <div class="modal-footer">
                <button type="button" class="btn btn-primary" data-dismiss="modal" id="closeee">Close</button>
              </div>
                </div>
              </div>
            </div>
            
            
<!--sdfsdfsdf-->   
<br/>
<hr>
<%@ include file="footer.jsp" %>
</div>
</body>
</html>
