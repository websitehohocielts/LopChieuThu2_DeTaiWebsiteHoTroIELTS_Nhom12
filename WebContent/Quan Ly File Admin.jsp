<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
      						 	function upfile(){
      						 		var tieude = $('#tieude').val();
      						 		if(tieude == ""){
      						 			alert("Nhập tiêu đề ");
      						 			return;
      						 		}
      						 		var lk = $('#nhaptuurl').val();
      						 		if(lk == ""){
      						 			alert("Nhập vào URL !");
      						 			return;
      						 		}
      						 		var mota = $('#mota').val();
      						 	   $.get('UpTaiLieu',{tieude:tieude,link:lk,mota:mota},function(responseText){
      					        	  $('#'+responseText+'').modal('show');
      					        	  if(responseText == "uploadfile"){
      					        		document.getElementById("tieude").value = "";
      					        		document.getElementById("nhaptuurl").value = "";
      					        	  }
      					         	 return;
      					         }); 
      						 		
      						 	};
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
          <div class="panel-heading"><strong><center><h4>Quản Lý File</h4></center></strong></div>
             <div class="panel-body">

              <ul class="nav nav-tabs">
                <li class="active"><a data-toggle="tab" href="#home"><strong>All File</strong></a></li>
               
                <li><a data-toggle="tab" href="#menu2"><strong>Upload File</strong></a></li>
              </ul>

              <div class="tab-content">
                <div id="home" class="tab-pane fade in active">
        
                </div>
                
                <div id="menu2" class="tab-pane fade">
                    <form role="form">
                      <div class="form-group">
                        <br/>
                      <label for="nhaptuurl">Tiêu đề</label>
                      <input type="url" class="form-control" id="tieude" name ="tieude" placeholder="Nhập tiêu đề mô tả">
                    </div>
                    
                     <div class="form-group">
                        <br/>
                      <label for="nhaptuurl">Mô tả</label>
                      <textarea type="url" class="form-control" id="mota" name ="mota" row = "8"></textarea>
                    </div>
                    
                    
                    <div class="form-group">
                        <br/>
                      <label for="nhaptuurl">Nhập từ URL</label>
                      <input type="url" class="form-control" id="nhaptuurl" name = "nhaptuurl" placeholder="Enter url here">
                    </div>
                    
                   <label class="radio-inline">
				  <input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1"> Tài liệu video
				</label>
				<label class="radio-inline">
				  <input type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2"> Tài liệu văn bản - hình ảnh
				</label>
                     <br/>
                     <br />
                  <button type="button" class="btn btn-primary" onclick="upfile()">Upload</button>
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
  <div class="modal fade" id="thatbai" role="dialog">
                     <div class="modal-dialog modal-lg">
                <div class="modal-content">
                
                  <div class="modal-body">
                   
                        <strong>Thất bại </strong>
                   
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
        <div class="col-sm-4">
          

        </div>
  </div>
  </div>
 </div>
 </div>
</body>
</html>