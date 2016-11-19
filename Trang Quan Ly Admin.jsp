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
  <link href="fonts/glyphicons-halflings-regular.woff" rel="fonts">
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
          <div class="panel-heading"><strong><center><h4>Quản Lý Bài Viết</h4></center></strong></div>
             <div class="panel-body">

              <div class="btn-group btn-group-justified" role="group" aria-label="...">
				  <div class="btn-group" role="group">
				    <a href="Trang Quan Ly Admin.jsp"><button type="button" class="btn btn-primary">All File</button></a>
				  </div>
				  <div class="btn-group" role="group">
				    <a href="Edit bai viet.jsp"><button type="button" class="btn btn-info">Edit</button></a>
				  </div>
				  <div class="btn-group" role="group">
				    <a href="Them Bai Viet Moi.jsp"><button type="button" class="btn btn-primary">Add New</button></a>
				  </div>
				</div>

				<table class="table table-bordered">
				    <thead><br/>
				      <tr>
				        <th>Title</th>
				        <th>Catelogy</th>
				        <th>Date Published</th>
				        <th>Delete</th>
				      </tr>
				    </thead>
				    <tbody>
				      <tr>
				        <td><form>
				    <div class="checkbox">
				      <label><input  type="checkbox" value=""><p id="ten1">Unit 55: Thành ngữ về thời gian</p></label>
				    </div></form></td>
				        <td><p id="c1">Reading 6.0</p></td>
				        <td><p id="ngay1">08/09/2016</p></td>
				        <td><a id="link1" href="#"><span class="glyphicon glyphicon-remove"></span></a></td>
				      </tr>
				      <tr>
				        <td><form>
				    <div class="checkbox">
				      <label><input  type="checkbox" value="">
								<p id="ten2">Unit 13: Chiến thuật nghe tranh có nhiều nhân vật - Picture</p></label>
				    </div></form></td>
				    <td><p id="c2">Speaking 6.0 - 8.0</p></td>
				        <td><p id="ngay2">15/01/2016</p></td>
				        <td><a id="link2" href="#"><span class="glyphicon glyphicon-remove"></span></a></td>
				      </tr>
				      <tr>
				        <td><form>
				    <div class="checkbox">
				      <label><input type="checkbox" value=""><p id="ten3" >Unit 10: Bài đối thoại liên quan đến du lịch, giải trí - Short Conversation </p></p></label>
				    </div></form></td>
				    <td><p id="c3">Speaking 6.0 - 8.0</p></td>
				    <td><p id="ngay3">28/07/2016</p></td>
				        <td><a id="link3" href="#"><span class="glyphicon glyphicon-remove"></span></a></td>
				      </tr>
				    </tbody>
				  </table>
				  <br/>
				  <center><button class="btn btn-primary" onclick="laydanhsachBaiViet(1)">1</button>
				  <button class="btn btn-primary" onclick="laydanhsachBaiViet(2)">2</button>
				  <button class="btn btn-primary">></button></center>
				  <script type="text/javascript">
                      function laydanhsachBaiViet(trang){
                        var xhr = new XMLHttpRequest();
                        xhr.onreadystatechange = function(){
                          if(xhr.readyState ===4 && xhr.status===200){
                            var items = JSON.parse(xhr.responseText);
                      
                            var trangkt = trang * 3 -1;
                            var trangbd = trangkt-2;
                             var y = 0;
                            for(var index=0;index<items.length;index++){
                               
                              if(index >= trangbd && index<= trangkt)
                              {
                                y= y+1;
                                if(y==1){
                                document.getElementById("ten1").innerHTML = items[index].tenbai;
                                document.getElementById("ngay1").innerHTML = items[index].ngay;
                                document.getElementById("link1").href = items[index].linkbai;
                                document.getElementById("c1").innerHTML = items[index].Catelogy;
                                
                                }
                                if(y==2){
                                   document.getElementById("ten2").innerHTML = items[index].tenbai;
                                document.getElementById("ngay2").innerHTML = items[index].ngay;
                                document.getElementById("link2").href = items[index].linkbai;
                                document.getElementById("c2").innerHTML = items[index].Catelogy;
                                }
                                if(y==3){
                                 document.getElementById("ten3").innerHTML = items[index].tenbai;
                                document.getElementById("ngay3").innerHTML = items[index].ngay;
                                document.getElementById("link3").href = items[index].linkbai;
                                document.getElementById("c3").innerHTML = items[index].Catelogy;
                                }
                               
                              }
                            }
                         
                          }
                        }
                        xhr.open("GET","adminquanlybaiviet.json","true");
                        xhr.send();

                      }
                      </script>
                  </center>


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