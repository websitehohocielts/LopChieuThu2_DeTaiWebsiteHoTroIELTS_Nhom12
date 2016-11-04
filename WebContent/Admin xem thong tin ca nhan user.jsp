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
  	
  	 var sss = $(location).attr('search').substring(3);
  	
	$.get('ThongTinUserServlet',{username:sss},function(responseJson){
		 if(responseJson!=null){
        	   $("#countrytable").find("tr:gt(0)").remove();
        	   var table1 = $("#countrytable");
               $.each(responseJson, function(key,value) { 
               		
            	   //responseJson.setCharacterEncoding("UTF-8"); 
                       document.getElementById("inputTDN").value = value['username'];
                       document.getElementById("inputHT").value = value['hoten'];
                       document.getElementById("inputEM").value = value['email'];
                       document.getElementById("inputsdt").value = value['sodienthoai'];
                       document.getElementById("headpn").innerHTML = "Thông tin cá nhân "+ value['hoten'];
                       document.getElementById("cnk").innerHTML = value['hoten'];
                      
                      
                       if(value['trangthai'] == true){
                    	   document.getElementById("tttk").innerHTML = "<label style ='color:green'><input type='checkbox' checked><strong>Active</strong></label>"
                      } 
                       if(value['trangthai'] == false){
                    	   document.getElementById("tttk").innerHTML = "<label style ='color:red'><input type='checkbox'><strong>Disabled</strong></label>"
                      } 
                       
               });
            }
	});
  </script>
</head>
<body>
    <div class="panel panel-info">
     <div class="panel-heading"><strong><center><h2>Dashboard</h2></center></strong></div>
      <div class="panel-body">
	<div class="row">
	
        <div class="col-sm-3" style="margin-left:20px">
        <%@ include file="menutraiAdmin.jsp" %>
       
        </div>
        
        <div class="col-sm-5">
            <div class="panel-group">
          <div class="panel panel-info">
          <div class="panel-heading"><strong><center><h4 id ="headpn">Thông Tin Cá Nhân</h4></center></strong></div>
             <div class="panel-body">

              <div class="form-group">
  						<label for="inputTDN">Username</label>
  						<input type="text" class="form-control" id="inputTDN" disabled="" value="">
  					</div>
  					<div class="form-group">
  						<label for="inputHT">Họ Tên</label>
  						<input type="text" class="form-control" id="inputHT" value="">
  					</div>
  					
  					<div class="form-group">
  						<label for="inputEM">Email</label>
  						<input type="text" class="form-control" id="inputEM" value="">
  					</div>
  					<div class="form-group">
  						<label for="inputsdt">Số Điện Thoại</label>
  						<input type="text" class="form-control" id="inputsdt" value="">
  					</div>
  					<center><button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">Save</button></center>
          			  <div class="modal fade" id="myModal" role="dialog">
           				   <div class="modal-dialog modal-lg">
                <div class="modal-content">
                  <div class="modal-body">
                    <div class="alert alert-success">
                        <strong>Success!</strong> Thay đổi thông tin thành công.
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



        <div class="col-sm-3">
	          <div class="panel-group">
	          <div class="panel panel-info">
	          <div class="panel-heading"><strong><center><h4>Chức Năng Khác</h4></center></strong>
	          </div>
	          <div class="panel-body">
	          		<img src="av.jpg" class="img-circle" align="left" width="100" height="100" /><strong id ="cnk"></strong><br>
	          		<table class="table table-hover">
					    <tbody>
					      <tr>
					        <td>Trạng thái tài khỏan:<!-- <input type="checkbox" value="" checked id="activee"> <label id = "lblactive"> <span style="color: green;"> Active</span></label> -->
					        
					        	<div class="checkbox" id ="tttk">
							      
							    </div>		
					        </td>
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
</html>
