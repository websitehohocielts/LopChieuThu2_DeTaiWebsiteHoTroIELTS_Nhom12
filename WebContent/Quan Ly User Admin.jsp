<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
    <sql:setDataSource
driver="com.mysql.jdbc.Driver"
url="jdbc:mysql://localhost/ieltsonline"
user="root"
password="cong12"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Trang Quản Lý Admin</title>
	<meta charset="utf-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link href="css/menu.css" rel="stylesheet">
  <link href="css/bootstrap.css" rel="stylesheet">
  <script src="js/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <link href="fonts/glyphicons-halflings-regular.woff" rel="fonts">
  <script type="text/javascript">
   $(document).ready(function(){
	  
	  document.getElementById("page").value = 1;
	   var page = $('#page').val();
		$.get('DanhSachUerServlet',{page:page},function(responseJson){
			 if(responseJson!=null){
           	   $("#tblDanhSach").find("tr:gt(0)").remove();
           	   var table1 = $("#tblDanhSach");
	               $.each(responseJson, function(key,value) { 
	               		   var rowNew = $("<tr><td></td><td></td><td></td><td></td><td></td><td></td></tr>");
	               		rowNew.children().eq(0).html('<a href ="Admin xem thong tin ca nhan user.jsp?q='+value['username']+'" >'+value['username']+' </a>');
	                       rowNew.children().eq(1).text(value['hoten']); 
	                       rowNew.children().eq(2).text(value['email']); 
	                       rowNew.children().eq(3).text(value['sodienthoai']); 
	                       rowNew.children().eq(4).text(value['thoigianhdcuoi']); 
	                       //rowNew.children().eq(5).text(value['trangthai']); 
	                       
	                       if(value['trangthai'] == true){
	                    	   rowNew.children().eq(5).html('<label style="color:green"><input type="checkbox" checked> Actived</label>');
	                       }
	                       else{
	                    	   rowNew.children().eq(5).html('<label style="color:red"><input type="checkbox"> Disabled</label>');
	                       }
	                       rowNew.appendTo(table1);
	               });
               }
		});
	   
   })
   
   function chuyentrang(){
	   var trang = document.getElementById("page").value;
	  
	   if(trang <= 0){
		   alert("Nhập lại trang !");
		   return;
	   }
	   else{
		   if(document.getElementById("tkusername").value == "" && document.getElementById("tkemail").value == "")
			{
		   var page = $('#page').val();
			$.get('DanhSachUerServlet',{page:page},function(responseJson){
				 if(responseJson!=null){
	           	   $("#tblDanhSach").find("tr:gt(0)").remove();
	           	   var table1 = $("#tblDanhSach");
		               $.each(responseJson, function(key,value) { 
		               		   var rowNew = $("<tr><td></td><td></td><td></td><td></td><td></td><td></td></tr>");
		                       rowNew.children().eq(0).html('<a href ="Admin xem thong tin ca nhan user.jsp?q='+value['username']+'" >'+value['username']+' </a>'); 
		                       rowNew.children().eq(1).text(value['hoten']); 
		                       rowNew.children().eq(2).text(value['email']); 
		                       rowNew.children().eq(3).text(value['sodienthoai']); 
		                       rowNew.children().eq(4).text(value['thoigianhdcuoi']); 
		                       //rowNew.children().eq(5).text(value['trangthai']); 
		                       if(value['trangthai'] == true){
		                    	   rowNew.children().eq(5).html('<label style="color:green"><input type="checkbox" checked> Actived</label>');
		                       }
		                       else{
		                    	   rowNew.children().eq(5).html('<label style="color:red"><input type="checkbox"> Disabled</label>');
		                       }
		                       
		                       rowNew.appendTo(table1);
		                       
		                       
		               });
	               }
			});
	   }
		   else{
			   tim();
		   }
   }
   }
   
	function tim() {

				if (document.getElementById("timtheouser").checked == true) {
					if(document.getElementById("tkusername").value ==""){
						return;
					}
					else{
						
						var page = $('#page').val();
						var usr = $('#tkusername').val();
						$.get('TimKiemUserTheoUserNameServlet',{page:page,us:usr},function(responseJson){
							 if(responseJson!=null){
				           	   $("#tblDanhSach").find("tr:gt(0)").remove();
				           	   var table1 = $("#tblDanhSach");
					               $.each(responseJson, function(key,value) { 
					               		   var rowNew = $("<tr><td></td><td></td><td></td><td></td><td></td><td></td></tr>");
					                       rowNew.children().eq(0).html('<a href ="Admin xem thong tin ca nhan user.jsp?q='+value['username']+'" >'+value['username']+' </a>'); 
					                       rowNew.children().eq(1).text(value['hoten']); 
					                       rowNew.children().eq(2).text(value['email']); 
					                       rowNew.children().eq(3).text(value['sodienthoai']); 
					                       rowNew.children().eq(4).text(value['thoigianhdcuoi']); 
					                       //rowNew.children().eq(5).text(value['trangthai']); 
					                       if(value['trangthai'] == true){
					                    	   rowNew.children().eq(5).html('<label style="color:green"><input type="checkbox" checked> Actived</label>');
					                       }
					                       else{
					                    	   rowNew.children().eq(5).html('<label style="color:red"><input type="checkbox"> Disabled</label>');
					                       }
					                       
					                       rowNew.appendTo(table1);
					                       
					                       
					               });
				               }
						});
					}
				}

				if(document.getElementById("timtheoemail").checked == true){
					if(document.getElementById("tkemail").value ==""){
						return;
					}
					else{
						
						var page = $('#page').val();
						var em = $('#tkemail').val();
						$.get('TimKiemUserTheoEmailServlet',{page:page,em:em},function(responseJson){
							 if(responseJson!=null){
				           	   $("#tblDanhSach").find("tr:gt(0)").remove();
				           	   var table1 = $("#tblDanhSach");
					               $.each(responseJson, function(key,value) { 
					               		   var rowNew = $("<tr><td></td><td></td><td></td><td></td><td></td><td></td></tr>");
					                       rowNew.children().eq(0).html('<a href ="Admin xem thong tin ca nhan user.jsp?q='+value['username']+'" >'+value['username']+' </a>'); 
					                       rowNew.children().eq(1).text(value['hoten']); 
					                       rowNew.children().eq(2).text(value['email']); 
					                       rowNew.children().eq(3).text(value['sodienthoai']); 
					                       rowNew.children().eq(4).text(value['thoigianhdcuoi']); 
					                       //rowNew.children().eq(5).text(value['trangthai']); 
					                       if(value['trangthai'] == true){
					                    	   rowNew.children().eq(5).html('<label style="color:green"><input type="checkbox" checked> Actived</label>');
					                       }
					                       else{
					                    	   rowNew.children().eq(5).html('<label style="color:red"><input type="checkbox"> Disabled</label>');
					                       }
					                       
					                       rowNew.appendTo(table1);
					                       
					                       
					               });
				               }
						});
					}
				}
			}
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
          <a href="111.jsp"><u><strong>Đăng xuất</strong></u></a>
        
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
          <div class="panel-heading"><strong><center><h4>Quản Lý User</h4></center></strong></div>
             <div class="panel-body">
             
            <div class="row">
  				<div class="col-md-6 col-md-offset-3">
             <center><strong> Tìm kiếm User</strong></center>
             <form role="form">
			  <div class="form-group">
			    <label for="tkusername">Username</label>
			    <input type="email" class="form-control" id="tkusername" placeholder="Enter Username">
			     
			   <div class="radio">
				  <label>
				    <input type="radio" name="optionsRadios" id="timtheouser" value="option1">
				    Tìm theo username
				  </label>
				</div>
			 
			    <label for="tkemail">Email</label>
			    <input type="text" class="form-control" id="tkemail" placeholder="Enter Email">
			     <div class="radio">
				  <label>
				    <input type="radio" name="optionsRadios" id="timtheoemail" value="option2">
				    Tìm theo Email
				  </label>
				</div>
			  </div>
			 
			  <center><input type="button" class="btn btn-default" value="Tìm kiếm" id ="timkiem" name ="timkiem" onclick="tim()"></center>
			</form>
			</div>
			</div>
			  <br /> 
			 
<%-- 	<sql:query var="items" sql="SELECT username,hoten,email,sodienthoai,thoigianhoatdonglancuoi,trangthai FROM user where roleID = '2' limit 10"/>
 --%>	
	<div id ="bangdanhsach">
                  <table cellspacing="0" id="tblDanhSach" class="table table-bordered">
						<tr>
							<th scope="col">Username</th>
							<th scope="col">Họ tên</th>
							<th scope="col">Email</th>
							<th scope="col">Số điện thoại</th>
							<th scope="col">Thời gian hoạt động lần cuối</th>
							<th scope="col">Active</th>
						</tr>
					</table>
                  </div>
               
                  <br/>
                  <center>
                 
                 <span> Chuyển tới trang :  <input type ="number" name="page" id ="page" style ="width:50px">
                  <button type="button" class="btn btn-primary btn-sm" name ="gopage" id ="gopage" onclick = "chuyentrang()">Đến</button> </span> 
   				
                  </center>
          </div>   
        </div>
        </div>
        <div class="col-sm-4">
          

        </div>
  </div>
  </div>
  </div>
  </div>
  </div>

</body>
</html>