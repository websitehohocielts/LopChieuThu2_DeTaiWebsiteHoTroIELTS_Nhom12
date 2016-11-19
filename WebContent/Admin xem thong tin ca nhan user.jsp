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
   <script src="js/angular.min.js"></script>
   <script type="text/javascript" src ="js/jquery.validate.js">
  <link href="fonts/glyphicons-halflings-regular.woff" rel="fonts">
  
  <script type="text/javascript" src="editor/ckeditor.js"></script>
  <script type="text/javascript">
  	
  	 var sss = $(location).attr('search').substring(3);
  	
	$.get('ThongTinUserServlet',{username:sss},function(responseJson){
		 if(responseJson!=null){
        	  
               $.each(responseJson, function(key,value) { 
            	  
            	   //responseJson.setCharacterEncoding("UTF-8"); 
            	   
                       document.getElementById("inputTDN").value = value['username'];
                       document.getElementById("inputHT").value = value['hoten'];
                       document.getElementById("inputEM").value = value['email'];
                       document.getElementById("inputsdt").value = value['sodienthoai'];
                       document.getElementById("headpn").innerHTML = "Thông tin cá nhân "+ value['hoten'];
                       document.getElementById("cnk").innerHTML = value['hoten'];
                       document.getElementById("tsss").innerHTML = value['hoten'];
                       var hotenz = value['hoten'];
                   
                       if(value['trangthai'] == true){
                    	   document.getElementById("tttk").innerHTML = "<label style ='color:green'><input type='checkbox' checked><strong>Active</strong></label>"
                      } 
                       if(value['trangthai'] == false){
                    	   document.getElementById("tttk").innerHTML = "<label style ='color:red'><input type='checkbox'><strong>Disabled</strong></label>"
                      } 
                       
               });
            }
	});
	
	function capnhatthongtin(event){
		 var usn1 = $('#inputTDN').val();
         var ht = $('#inputHT').val();
         if(ht == ""){
        	 $('#thongbaoloiHoTen').modal('show');
        	 return;
         }
         if(ht.length < 4 || ht.length > 60){
        	 $('#thongbaoloiHoTen2').modal('show');
        	 return;
         }
         var em = $('#inputEM').val();
         
         if(em == "" ){
        	 $('#thongbaoEmailTrong').modal('show');
        	 return;
         }
         var ss = em.slice(em.length - 10);
         if(ss !="@gmail.com"){
        	$('#thongbaoEmailTrong').modal('show');
        	 return;
         }
         var sdt = $('#inputsdt').val();
         if(sdt == "" || sdt.length < 9 || sdt.length > 11){
        	 $('#thongbaoSDT').modal('show');
        	 return;
         }
     
          $.get('CapNhatThongTin',{user:usn1,em:em,sdt:sdt,ht:ht},function(responseText){
        	  $('#'+responseText+'').modal('show');
         	 return;
         }); 
		};
	

		
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
				<form name="formTT">
              <div class="form-group">
  						<label for="inputTDN">Username</label>
  						<input type="text" class="form-control" id="inputTDN" disabled value="">
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
  						<input type="number" class="form-control" id="inputsdt" value="">
  					</div>
  					<center><button type="button" class="btn btn-primary" id ="cntt" data-toggle ="modal" data-target ="#xacnhanCapNhat">Cập nhật thông tin</button></center>
  					
          			</form>
          		
          			
  			</div>


              
             </div>
          </div>  
          
           
        </div>
         <div class="modal fade" id="xacnhanCapNhat" role="dialog">
			    <div class="modal-dialog">
			    
			      <!-- Modal content-->
			      <div class="modal-content">
			        <div class="modal-header">
			          <button type="button" class="close" data-dismiss="modal">&times;</button>
			          <h4 class="modal-title">Xác nhận cập nhật</h4>
			        </div>
			        <div class="modal-body">
			          <p>Bạn có chắc chắn cập nhật thông tin cho User này !.</p>
			        </div>
			        <div class="modal-footer">
			        <button type="button" class="btn btn-default" data-dismiss="modal" onclick ="capnhatthongtin()">Đồng ý</button>
			          <button type="button" class="btn btn-default" data-dismiss="modal">Hủy</button>
			        </div>
			      </div>
			      
			    </div>
			  </div>
			  
			   <div class="modal fade" id="thongbaoEmailTrong" role="dialog">
			    <div class="modal-dialog">
			     
			      <div class="modal-content">
			       <div class="modal-header">
				       <button type="button" class="close" data-dismiss="modal">&times;</button>
				      </div>
			        <div class="modal-body">
			          <p>Lỗi ! Email không hợp lệ.</p>
			        </div>
			        <div class="modal-footer">
			          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			        </div>
			      </div>
			      
			    </div>
			  </div>
			<div class="modal fade" id="capnhatttthanhcong" role="dialog">
			    <div class="modal-dialog">
			     
			      <div class="modal-content">
			       <div class="modal-header">
				       <button type="button" class="close" data-dismiss="modal">&times;</button>
				      </div>
			        <div class="modal-body">
			          <p>Cập nhật thông tin thành công !.</p>
			        </div>
			        <div class="modal-footer">
			          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			        </div>
			      </div>
			      
			    </div>
			  </div>
			  <div class="modal fade" id="thongbaoSDT" role="dialog">
			    <div class="modal-dialog">
			     
			      <div class="modal-content">
			       <div class="modal-header">
				       <button type="button" class="close" data-dismiss="modal">&times;</button>
				      </div>
			        <div class="modal-body">
			          <p>Lỗi ! Số điện thoại không hợp lệ.</p>
			        </div>
			        <div class="modal-footer">
			          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			        </div>
			      </div>
			      
			    </div>
			  </div>
			    <div class="modal fade" id="thongbaoloiHoTen" role="dialog">
			    <div class="modal-dialog">
			     
			      <div class="modal-content">
			       <div class="modal-header">
				       <button type="button" class="close" data-dismiss="modal">&times;</button>
				      </div>
			        <div class="modal-body">
			          <p>Lỗi ! Họ tên không được bỏ trống.</p>
			        </div>
			        <div class="modal-footer">
			          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			        </div>
			      </div>
			      
			    </div>
			  </div>
			  <div class="modal fade" id="thongbaoloiHoTen2" role="dialog">
			    <div class="modal-dialog">
			     
			      <div class="modal-content">
			       <div class="modal-header">
				       <button type="button" class="close" data-dismiss="modal">&times;</button>
				      </div>
			        <div class="modal-body">
			          <p>Lỗi ! Họ tên không được dưới 4 ký tự và không được quá 60 ký tự.</p>
			        </div>
			        <div class="modal-footer">
			          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
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
			          
			          <h4 class="modal-title">Gửi tin nhắn cho <p id = "tsss"></p></h4>
			        
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
