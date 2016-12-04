<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <script src="editor/ckeditor.js"></script>
  <link href="fonts/glyphicons-halflings-regular.woff" rel="fonts">
  
  <script type="text/javascript">
   
   $(document).ready(function(){
		  
		  document.getElementById("page").value = 1;
		   var page = $('#page').val();
			$.get('DanhSachBaiVietServlet',{page:page},function(responseJson){
				 if(responseJson!=null){
	           	   $("#tblDanhSach").find("tr:gt(0)").remove();
	           	   var table1 = $("#tblDanhSach");
		               $.each(responseJson, function(key,value) { 
		               		   var rowNew = $("<tr><td></td><td></td><td></td></tr>");
		               			rowNew.children().eq(0).html('<a href ="?'+value['id']+'" >'+value['tieude']+' </a>');
		                       rowNew.children().eq(1).text(value['ngaytao']); 
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
          <div class="panel-heading"><strong><center><h4>Quản Lý Bài Viết</h4></center></strong></div>
             <div class="panel-body">
   <ul class="nav nav-tabs">
                <li class="active"><a data-toggle="tab" href="#home"><strong>Tất cả bài vết</strong></a></li>
               
                <li><a data-toggle="tab" href="#menu2"><strong>Thêm bài viết mới</strong></a></li>
              </ul>

              <div class="tab-content">
                <div id="home" class="tab-pane fade in active">
          <div id ="bangdanhsach">
                  <table cellspacing="0" id="tblDanhSach" class="table table-bordered">
						<tr>
							<th scope="col">Tiêu đề</th>
							<th scope="col" width = "150">Ngày viết</th>
							<th scope="col" width = "100">Delete</th>
						</tr>
					</table>
                  </div>
                  <center>
                  <span> Chuyển tới trang :  <input type ="number" name="page" id ="page" style ="width:50px">
                  <button type="button" class="btn btn-primary btn-sm" name ="gopage" id ="gopage" onclick = "chuyentrang()">Đến</button> </span> 
   				
                  </center>
                  
                  
                </div>
                
                <div id="menu2" class="tab-pane fade">
                	<div class = "col col-sm-8">
                	<br />
                		<form role="form">
						  <div class="form-group">
						    <label for="tieude">Tiêu đề</label>
						    <input type="text" class="form-control" id="tieude" name = "tieude" placeholder="Nhập tiêu đề">
						  </div>
						  <div class="form-group">
						    <label for="noidung">Nội dung</label>
						    <textarea type="text" class="form-control" id="noidung" name="noidung" placeholder="Nội dung" rows="10"> </textarea>
						  </div>
						 
						  <button type="button" class="btn btn-default" onclick = "themBaiMoi()">Thêm bài viết mới</button>
						</form>
						<center>
                 
                 
						 <script>
           						CKEDITOR.replace( 'noidung' );
      						 </script>    
      						 <script type="text/javascript">
      						 	function themBaiMoi(){
      						 		var td = $('#tieude').val();
      						 		var nd = CKEDITOR.instances.noidung.getData();
      						 		if(td == ""){
      						 			alert("Tiêu đề không hợp lệ !");
      						 			return;
      						 		}
      						 		if(nd == ""){
      						 			alert("Nội dung không hợp lệ  !");
      						 			return;
      						 		}
      						 		var chuyenmuc = "";
      						 		if(document.getElementById("optionsRadios1").checked == true){
      						 			chuyenmuc = "Reading";
      						 		}
      						 		if(document.getElementById("optionsRadios2").checked == true){
      						 			chuyenmuc = "Listening";
      						 		}
      						 		if(document.getElementById("optionsRadios3").checked == true){
      						 			chuyenmuc = "Speaking";
      						 		}
      						 		if(document.getElementById("optionsRadios4").checked == true){
      						 			chuyenmuc = "Writing";
      						 		}
      						 		
      						 		var muc = "";
      						 		if(document.getElementById("optionsRadios11").checked == true){
      						 			muc = "1";
      						 		}
      						 		if(document.getElementById("optionsRadios22").checked == true){
      						 			muc = "2";
      						 		}
      						 		if(document.getElementById("optionsRadios33").checked == true){
      						 			muc = "3";
      						 			
      						 		}
      						 	   $.get('ThemBaiVietMoi',{tieude:td,noidung:nd,chuyenmuc:chuyenmuc,muc:muc},function(responseText){
      					        	  $('#'+responseText+'').modal('show');
      					        	  if(responseText == "themthanhcong"){
      					        		  document.getElementById("tieude").value = "";
      					        		CKEDITOR.instances['noidung'].setData("");
      					        	  }
      					         	 return;
      					         }); 
      						 		
      						 	};
      						 </script>
                	</div>
                	  <div class="modal fade" id="themthanhcong" role="dialog">
			    <div class="modal-dialog">
			     
			      <div class="modal-content">
			       <div class="modal-header">
				       <button type="button" class="close" data-dismiss="modal">&times;</button>
				      </div>
			        <div class="modal-body">
			          <p>Thêm bài viết thành công !.</p>
			        </div>
			        <div class="modal-footer">
			          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			        </div>
			      </div>
			      
			    </div>
			  </div>
			    <div class="modal fade" id="themthatbai" role="dialog">
			    <div class="modal-dialog">
			     
			      <div class="modal-content">
			       <div class="modal-header">
				       <button type="button" class="close" data-dismiss="modal">&times;</button>
				      </div>
			        <div class="modal-body">
			          <p>Thêm bài viết thất bại !.</p>
			        </div>
			        <div class="modal-footer">
			          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			        </div>
			      </div>
			      
			    </div>
			  </div>
                	<div class = "col col-sm-4">
                	<br /><br />
                	<div class="panel-group">
    		<div class="panel panel-info">
    			 <div class="panel-heading"><strong><center><h4>Chọn Danh Mục</h4></center></strong></div>
      			<div class="panel-body">
      			<p>Mục</p>
      				<form>
					    <div class="radio">
							  <label>
							    <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
							    Reading
							  </label>
							</div>
							<div class="radio">
							  <label>
							    <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
							    Listening
							  </label>
							</div>
							<div class="radio">
							  <label>
							    <input type="radio" name="optionsRadios" id="optionsRadios3" value="option1" checked>
							    Speaking
							  </label>
							</div>
							<div class="radio">
							  <label>
							    <input type="radio" name="optionsRadios" id="optionsRadios4" value="option2">
							    Writing
							  </label>
							</div>
				  </form>
				
				
				<p>Cấp độ</p>
      				<form>
					    <div class="radio">
							  <label>
							    <input type="radio" name="optionsRadios" id="optionsRadios11" value="option1" checked>
							    < 6.0
							  </label>
							</div>
							<div class="radio">
							  <label>
							    <input type="radio" name="optionsRadios" id="optionsRadios22" value="option2">
							    6.0 - 8.0
							  </label>
							</div>
							<div class="radio">
							  <label>
							    <input type="radio" name="optionsRadios" id="optionsRadios33" value="option1" checked>
							    > 8.0
							  </label>
							</div>
						
				  </form>
				  
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
        </div>
        <div class="col-sm-4">
          

        </div>
  </div>
  </div>
  
</body>
</html>