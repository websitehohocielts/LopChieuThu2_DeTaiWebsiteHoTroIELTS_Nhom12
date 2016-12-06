<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <script type="text/javascript">
   $(document).ready(function(){
	  document.getElementById("page").value = 1;
	   var page = $('#page').val();
	
	   ds(page);
		
   })
  function ds(page1){
	  
		  $.get('DanhSachTaiLieuServlet',{page:page1},function(responseJson){
			 
			 if(responseJson!=null){
				
	               $.each(responseJson, function(key,value) { 
	            	   
	            	  /*  var div = document.createElement('div');
	            	    div.className = 'row';
	            	 
	            	     div.innerHTML = '<div class="col-md-2">'+
	            	          '<a href="Xem Tai Lieu.jsp?'+value['id']+'"> <figure>'+
	            	          '<img src="images/sach3.jpg" class="img-rounded" align="bottom" width="100" height="100">'+
	            	          '<figcaption><h4><p id="ten1">'+value['tieude']+'</p><h4></figcaption>'+
	            	        '</figure></a>'+
	            	          '</div>'+
	            	          '<div class="col-md-8">'+
	            	            '<p id="mieuta1" class="text justify" style="font-size: 14px">'+value['mota']+'</p><br /><br />'+
	            	            '<span class="glyphicon glyphicon-save"></span></div>'

	            	     document.getElementById('ds').appendChild(div);
	            	     document.getElementById('ds').appendChild(document.createElement("hv"));   
	            	   
	            	     */
	            	   var div = document.createElement('div');

	            	    div.className = 'row';

	            	    div.innerHTML = '<img id ="anh2" src="images/unit22.jpg" class="img-circle" align="left" width="50" height="50" style ="margin-left: 10px"/>'+
	            	          '<a id ="link2" href="Xem Tai Lieu.jsp?'+value['id']+'"><p id="bai2">'+value['tieude']+'</p></a><br>'

	            	     document.getElementById('ds').appendChild(div);
	            	    div.innerHTML = div.innerHTML + '<hr>';
	               });
           }
		}); 
		  
		  
		  
		  
   }
   </script>
   
   <script type="text/javascript">
   function chuyentran(){
	   var page1 = $('#page').val();
		  $.get('DanhSachTaiLieuServlet',{page:page1},function(responseJson){
			 
			 if(responseJson!=null){
				 document.getElementById('ds').innerHTML = "";
	               $.each(responseJson, function(key,value) { 
	            	   
	            	  /*  var div = document.createElement('div');
	            	    div.className = 'row';
	            	 
	            	     /* div.innerHTML = '<div class="col-md-2">'+
	            	          '<a href="Xem Tai Lieu.jsp?'+value['id']+'"> <figure>'+
	            	          '<img src="images/sach3.jpg" class="img-rounded" align="bottom" width="100" height="100">'+
	            	          '<figcaption><h4><p id="ten1">'+value['tieude']+'</p><h4></figcaption>'+
	            	        '</figure></a>'+
	            	          '</div>'+
	            	          '<div class="col-md-8">'+
	            	            '<p id="mieuta1" class="text justify" style="font-size: 14px">'+value['mota']+'</p><br /><br />'+
	            	            '<span class="glyphicon glyphicon-save"></span></div>' 
	            	            
	            	            
	            	            div.innerHTML = '<div class="col-md-2">'+
		            	          '<a href="Xem Tai Lieu.jsp?'+value['id']+'"> <figure>'+
		            	          '<img src="images/sach3.jpg" class="img-rounded" align="bottom" width="100" height="100">'+
		            	        '</figure></a>'+
		            	          '</div><br/><hr/>'+
		            	          '<div class="col-md-8">'+
		            	            '<p id="mieuta1" class="text justify" style="font-size: 14px">'+value['tieude']+'</p><br /><br />'+
		            	            '<span class="glyphicon glyphicon-save"></span></div><br/><hr/>'

	            	     document.getElementById('ds').appendChild(div);
	            	     
	            	     document.getElementById('ds').appendChild(document.createElement("hv"));   
	            	    */
	            	   var div = document.createElement('div');

	            	    div.className = 'row';

	            	    div.innerHTML = '<img id ="anh2" src="images/unit22.jpg" class="img-circle" align="left" width="50" height="50" style ="margin-left: 10px"/>'+
	            	          '<a id ="link2" href="Xem Tai Lieu.jsp?'+value['id']+'"><p id="bai2">'+value['tieude']+'</p></a><br>'

	            	     document.getElementById('ds').appendChild(div);
	            	    div.innerHTML = div.innerHTML + '<hr>';
	               });
        }
		}); 
		  
		  
		  
}
   </script>
</head>
<body style="background: url(images/background.jpg);">

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
    <li><a href="#">Tài Liệu</a></li>
  
  </ol>
<div class="panel-group" style="margin-left:10px; margin-right:10px">
    <div class="panel panel-info">
     <div class="panel-heading"><strong><center><h2>Tài Liệu</h2></center></strong></div>
      <div class="panel-body" id ="ds">

  
      </div>
      </div>
      </div>
     <center>
                 
                 <span> Chuyển tới trang :  <input type ="number" name="page" id ="page" style ="width:50px">
                  <button type="button" class="btn btn-primary btn-sm" name ="gopage" id ="gopage" onclick = "chuyentran()">Đến</button> </span> 
   				
                  </center>
      <br />
<!--sdfsdfsdf-->   

    <br />
           
<hr>
<%@ include file="footer.jsp" %>
</div>
</div>
</body>
</html>
