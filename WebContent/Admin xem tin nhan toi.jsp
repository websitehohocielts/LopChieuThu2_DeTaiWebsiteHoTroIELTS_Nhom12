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
   
   $(document).ready(function(){
		  
		  document.getElementById("page").value = 1;
		   var page = $('#page').val();
			$.get('LichSuTinNhanServlet',{page:page},function(responseJson){
				 if(responseJson!=null){
	           	   $("#dsTinNhan").find("tr:gt(0)").remove();
	           	   var table1 = $("#dsTinNhan");
		               $.each(responseJson, function(key,value) { 
		               		   var rowNew = $("<tr><td></td><td></td><td></td></tr>");
		               			rowNew.children().eq(0).html('<a href ="Admin-xem-tra-loi-tin-nhan.jsp?'+value['id']+'" >'+value['tieude']+' </a>');
		                       rowNew.children().eq(1).text(value['usernhan']); 
		                       rowNew.children().eq(2).html('<span class="glyphicon glyphicon-remove" id ='+value['id']+'></span>'); 
		                       rowNew.appendTo(table1);
		               });
	               }
			});
		   
	   })
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

               <div class="tab-content">
                <div id="home" class="tab-pane fade in active">
               <table class="table table-bordered" id ="dsTinNhan">
                      <tr>
                        <th width="50%">Tiêu đề</th>
                     	 <th>Người gửi</th>
                        <th>Xóa</th>
                      </tr>
                  </table>
                  
                  <center>
                 <span> Chuyển tới trang :  <input type ="number" name="page" id ="page" style ="width:50px">
                  <button type="button" class="btn btn-primary btn-sm" name ="gopage" id ="gopage" onclick = "chuyentrang()">Đến</button> </span> 
   				
                  </center>
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
        

</body>
</html>