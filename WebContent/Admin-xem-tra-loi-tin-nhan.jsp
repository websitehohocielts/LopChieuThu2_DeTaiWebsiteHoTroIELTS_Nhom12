<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Trang Quản Lý Admin</title>
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link href="css/menu.css" rel="stylesheet">
  <link href="css/bootstrap.css" rel="stylesheet">
  <script src="js/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <link href="fonts/glyphicons-halflings-regular.woff" rel="fonts">
  <script type="text/javascript" src="editor/ckeditor.js"></script>
  
  
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
<body>
<div class="panel-group">
    <div class="panel panel-info">
     <div class="panel-heading"><strong><center><h2>Dashboard</h2></center></strong></div>
      <div class="panel-body">
	<div class="row">

        <div class="col-sm-3" style="margin-left:20px">
        
        <div class="panel-group">
    <div class="panel panel-info">
     
      <div class="panel-body">
     
          <img src="admin.png" class="img-circle" align="left" width="100" height="100" /><strong>Xin chào Admin</strong><br>
        <br />
          <a href="LogoutServlet"><u><strong>Đăng xuất</strong></u></a>
    <table class="table table-hover">
    <tbody>
     
      <tr>
        <td><a href="Trang Quan Ly Admin.jsp">Quản Lý Bài Viết</a></td>
      </tr>
      <tr>
        <td><a href="Quan Ly File Admin.jsp">Quản lý File</a></td>
      </tr>
      <tr>
        <td><a href="Quan Ly User Admin.jsp">Quản lý user</a></td>
      </tr>
      <tr>
        <td><a href="Admin xem tin nhan toi.jsp">Tin Nhắn</a></td>
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
          <div class="panel-heading"><strong><center><h4>Danh sách tin nhắn</h4></center></strong></div>
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
          </div>   
        </div>
 
	          </div>
	        </div>
	        </div>
 	 </div>
        </div>

</body>
</html>