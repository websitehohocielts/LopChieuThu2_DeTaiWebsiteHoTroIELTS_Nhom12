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
        <div class="col-sm-5">
            <div class="panel-group">
          <div class="panel panel-info">
          <div class="panel-heading"><strong><center><h4>Lịch sử tin nhắn với Nguyễn Văn A</h4></center></strong></div>
             <div class="panel-body">

               <div class="tab-content">
                <div id="home" class="tab-pane fade in active">
              <table class="table table-bordered">
                    <thead><br/>
                      <tr>
                        <th>Title</th>
                        <th>Date</th>
                        <th>Delete</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td><form>
                   
                      <label><a href="#">Báo lỗi tại Test Reading</a></label>
                    </form></td>
                        
                        <td>08/09/2016</td>
                        <td><a href ="#"><span class="glyphicon glyphicon-remove" style="color: red"></span></a></td>
                      </tr>
                      <tr>
                        <td><form>
                    
                      <label><a href="#">Làm sao để học tốt anh văn a ?</a></label>
                    </form></td>
                       
                        <td>15/01/2016</td>
                         <td><a href ="#"><span class="glyphicon glyphicon-remove" style="color: red"></span></a></td>
                      </tr>
                      <tr>
                        <td><form>
                    
                      <label><a href="#">Admin giúp em với ạ ??</a></label>
                    </form></td>
                        
                        <td>28/07/2016</td>
                         <td><a href ="#"><span class="glyphicon glyphicon-remove" style="color: red"></span></a></td>
                      </tr>
                    </tbody>
                  </table>
                   <center>
                   		<button class="btn btn-primary">1</button>
                      <button class="btn btn-primary">2</button>
                      <button class="btn btn-primary">></button>
                    </center>
                </div>


      </div>
  			</div>


              
             </div>
          </div>   
        </div>



        <div class="col-sm-3">
	          <div class="panel-group">
	          <div class="panel panel-info">
	          <div class="panel-heading"><strong><center><h4>Chức Năng Khác</h4></center></strong>
	          </div>
	          <div class="panel-body">
	          		<img src="av.jpg" class="img-circle" align="left" width="100" height="100" /><strong>Nguyễn Văn A</strong><br>
	          		<table class="table table-hover">
					    <tbody>
					      <tr>
					        <td>Trạng thái tài khỏan:<input type="checkbox" value="" checked id="activee" data-toggle="modal" data-target="#chontrangthai"> <label id = "lblactive"> <span style="color: green;"> Active</span></label></td>
					      </tr>
					      <tr>
					        <td data-toggle="modal" data-target="#adminguitn"><a href="#">Gửi tin nhắn  <span class="glyphicon glyphicon-envelope" ></span></td></a>
					      </tr>
					      <tr>
					        <td><a href="Admin xem lich su tro truyen.jsp">Lịch sử trò chuyện</a></td>
					      </tr>
					      
					    </tbody>
					 </table>


				<div class="modal fade" id="adminguitn" role="dialog">
			      <div class="modal-dialog modal-lg">
			          <div class="modal-content">
			          <div class="modal-header">
			          
			          <h4 class="modal-title">Gửi tin nhắn cho Nguyễn Văn A</h4>
			        
			        </div>
			             <div class="modal-body">
			                    <div class="form-group">
			                       <label for="inputHT">Nội dung</label>
			                     <textarea class="form-control" rows="5" id="editor1"></textarea>
						            </div>
								    <script type="text/javascript">
								    	CKEDITOR.replace( 'editor1' );
								    </script>
			                     </div>
			                    
			                 
			                  <div class="modal-footer">
			                  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#bamgui">Gửi</button>
			                     <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
			                  </div>

			                    <div class="modal fade" id="bamgui" role="dialog">
			                     <div class="modal-dialog modal-lg">
			                <div class="modal-content">
			                  <div class="modal-body">
			                    <div class="alert alert-success">
			                        <strong>Success!</strong> Gửi tin thành công !.
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

					<!-- <div class="modal fade" id="chontrangthai" role="dialog">
      				<div class="modal-dialog modal-sm">
      					<div class="modal-content">
      						<div class="modal-body">
      							<div class="alert alert-success">
      								<strong>Bạn có chắc muốn Disable tài khoản này không ? </strong>
      							</div>
      						</div>
      						<div class="modal-footer">
      							<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      						</div>

      					</div>
      				</div>-->
      				
        	</div> 
					 <script type="text/javascript">
			        var btn = document.getElementById("activee");
			        btn.onclick=function(){
			        	if(document.getElementById("activee").checked==false){
			        		document.getElementById("lblactive").style.color="red";
			        		document.getElementById("lblactive").innerHTML ="Disabled";

			        	}
			        	else{
			        		document.getElementById("lblactive").style.color="green";
			        		document.getElementById("lblactive").innerHTML ="Active";

			        	}


			        };
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
</html>>