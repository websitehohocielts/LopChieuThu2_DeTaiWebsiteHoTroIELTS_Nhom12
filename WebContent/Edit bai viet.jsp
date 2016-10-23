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
        <div class="col-sm-6">
            <div class="panel-group">
          <div class="panel panel-info">
          <div class="panel-heading"><strong><center><h4>Quản Lý Bài Viết</h4></center></strong></div>
             <div class="panel-body">

              <div class="btn-group btn-group-justified" role="group" aria-label="...">
				  <div class="btn-group" role="group">
				    <a href="Trang Quan Ly Admin.jsp"><button type="button" class="btn btn-primary">All File</button></a>
				  </div>
				  <div class="btn-group" role="group">
				    <button type="button" class="btn btn-info">Edit</button>
				  </div>
				  <div class="btn-group" role="group">
				    <a href="Them Bai Viet Moi.jsp" ><button type="button" class="btn btn-primary">Add New</button></a>
				  </div>
				</div>
					<br/>
					<form>
				    <div class="form-group">
				      <label for="tieudeu">Tiêu đề</label>
				      <input type="text" class="form-control" id="tieude" value="Unit 55: Thành ngữ về thời gian ">
				    </div>
				    <div class="form-group">
		              <label for="editor1">Nội dung</label>
		              <textarea class="form-control" rows="5" id="editor1">
                  <p>
                    1. Time is money, so no one can put back the clock: Thời gian là vàng nên không thể xoay ngược kim của nó <br/>

                    2. Time flies like an arrow: Thời gian thoát thoát thoi đưa <br/>

                    3. Time and tide waits for no man: Thời gian có chờ đợi ai<br/>

                    4. Time is the great healer: Thời gian chữa lành mọi vết thương <br/>
                  </p>  
                  </textarea>
		            </div>
				    <script type="text/javascript">
				    	CKEDITOR.replace( 'editor1' );
				    </script>
				  </form>

              </div>
            </div>
             </div>
          </div>  


          <div class="col-sm-2" style="margin-right: :10px">
       	 <div class="panel-group">
    		<div class="panel panel-info">
    			 <div class="panel-heading"><strong><center><h4>Chọn Danh Mục</h4></center></strong></div>
      			<div class="panel-body">
      		
      			<a href="">Tạo mới danh mục</a>
      				<form>
					    <div class="checkbox">
					      <label><input type="checkbox" checked>Reading 6.0</label>
					    </div>
					    <div class="checkbox">
					      <label><input type="checkbox" value="">Speaking 6.0 - 8.0</label>
					    </div>
					    <div class="checkbox">
					      <label><input type="checkbox" value="">Writing 8.0</label>
					    </div>
				  </form>

      			</div>
      			</div>
      			</div>
      			<center><button class="btn btn-primary" id="btnThemBaiVietMoi" data-toggle="modal" data-target="#thembaiviet">Cập nhật</button> <button class="btn btn-primary" id="btnNhap1">Lưu nháp</button></center>

			      </script>
      			<div class="modal fade" id="thembaiviet" role="dialog">
      				<div class="modal-dialog modal-sm">
      					<div class="modal-content">
      						<div class="modal-body">
      							<div class="alert alert-success">
      								<strong>Sửa bài viết thành công </strong>
      							</div>
      						</div>
      						<div class="modal-footer">
      							<a href="Trang Quan Ly Admin.jsp"><button type="button" class="btn btn-primary" id="OK2">OK</button></a>
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