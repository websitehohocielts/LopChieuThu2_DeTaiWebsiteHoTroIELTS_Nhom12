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
        <div class="col-sm-8">
            <div class="panel-group">
          <div class="panel panel-info">
          <div class="panel-heading"><strong><center><h4>Tin nhắn đến</h4></center></strong></div>
             <div class="panel-body">

               <div class="tab-content">
                <div id="home" class="tab-pane fade in active">
              <table class="table table-bordered">
                    <thead><br/>
                      <tr>
                        <th>Tiêu đề</th>
                        <th>Ngày gửi</th>
                        <th>Username gửi</th>
                        <th>Delete</th>
                        </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td><form>
                      <label><a id="tn1" href="#">Báo lỗi tại Test Reading</a></label>
                    </div></form></td>
                        <td><p id="ngay1">08/09/2016</p></td>
                        <td><p id="nguoi1">byaspo19</p></td>
                        <td><a id="linklisten1" href ="#"><span class="glyphicon glyphicon-remove"></span> </a></td>
                      </tr>
                      <tr>
                        <td><form>
                      <label><a id="tn2" href="#">Làm sao để học tốt anh văn a ?</a></label>
                    </div></form></td>
                        <td><p id="ngay2">15/01/2016 </p></td>
                        <td><p id="nguoi2">neymar192</p></td>
                        <td><a id="linklisten2" href ="#"><span class="glyphicon glyphicon-remove"></span> </a></td>
                      </tr>
                      <tr>
                        <td><form>
                      <label><a id="tn3" href="#">Admin giúp em với ạ ??</a></label>
                    </div></form></td>
                        <td><p id="ngay3">28/07/2016</p> </td>
                        <td><p id="nguoi3">messi1123</p></td>
                        <td><a id="linklisten3" href ="#"><span class="glyphicon glyphicon-remove"></span> </a></td>
                      </tr>
                    </tbody>
                  </table>
                   <center>
                   <button class="btn btn-primary" onclick="laydanhsachListen(1)">1</button>
                      <button class="btn btn-primary" onclick="laydanhsachListen(2)">2</button>
                      <button class="btn btn-primary">></button>
                      <script type="text/javascript">
                      function laydanhsachListen(trang){
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
                                document.getElementById("tn1").innerHTML = items[index].tenbai;
                                document.getElementById("ngay1").innerHTML = items[index].ngay;
                                document.getElementById("linklisten1").href = items[index].linkbai;
                                document.getElementById("nguoi1").innerHTML = items[index].nguoi;
                                
                                }
                                if(y==2){
                                   document.getElementById("tn2").innerHTML = items[index].tenbai;
                                document.getElementById("ngay2").innerHTML = items[index].ngay;
                                document.getElementById("linklisten2").href = items[index].linkbai;
                                document.getElementById("nguoi2").innerHTML = items[index].nguoi;
                                
                                }
                                if(y==3){
                                 document.getElementById("tn3").innerHTML = items[index].tenbai;
                                document.getElementById("ngay3").innerHTML = items[index].ngay;
                                document.getElementById("linklisten3").href = items[index].linkbai;
                                document.getElementById("nguoi3").innerHTML = items[index].nguoi;
                                
                                }
                               
                              }
                            }
                         
                          }
                        }
                        xhr.open("GET","adminxemtinnhanmoi .json","true");
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



       
					 
	          </div>
	        </div>
	        </div>
 	 </div>
        </div>
        

</body>
</html>