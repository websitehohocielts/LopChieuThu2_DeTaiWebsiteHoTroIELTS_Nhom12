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
          <div class="panel-heading"><strong><center><h4>Quản Lý File</h4></center></strong></div>
             <div class="panel-body">

              <ul class="nav nav-tabs">
                <li class="active"><a data-toggle="tab" href="#home"><strong>All File</strong></a></li>
               
                <li><a data-toggle="tab" href="#menu2"><strong>Upload File</strong></a></li>
              </ul>

              <div class="tab-content">
                <div id="home" class="tab-pane fade in active">
              <table class="table table-bordered">
                    <thead><br/>
                      <tr>
                        <th>Title</th>
                        
                        <th>Type</th>
                        <th>Size</th>
                        <th>Date Published</th>
                        <th>Delete</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td><form>
                    
                      <label><a id="f1" href="#">EBook</a></label>
                    </div></form></td>
                        <td><p id="type1">PDF</p> </td>
                        <td><p id="size1">3.5 Mb</p></td>
                        <td><p id="ngay1">08/09/2016</p></td>
                        <td><a id="link1" href ="#"><span class="glyphicon glyphicon-remove"></span></a></td>
                      </tr>
                      <tr>
                        <td><form>
                    
                      <label><a id="f2"href="#">Started Ielts</a></label>
                    </div></form></td>
                        <td><p id="type2">PDF</p> </td>
                        <td><p id="size2">8.5 Mb</p></td>
                        <td><p id="ngay2">15/01/2016</p></td>
                         <td><a id="link2" href ="#"><span class="glyphicon glyphicon-remove"></span></a></td>
                      </tr>
                      <tr>
                        <td><form>
                    
                      <label><a id="f3" href="#">LongMan Ielts </a></label>
                    </div></form></td>
                        <td><p id="type3">PDF</p> </td>
                        <td><p id="size3">567Kb</p></td>
                        <td><p id="ngay3">28/07/2016</p></td>
                         <td><a id="link3" href ="#"><span class="glyphicon glyphicon-remove"></span></a></td>
                      </tr>
                    </tbody>
                  </table>
                   <center><button class="btn btn-primary" onclick="laydanhsachFile(1)">1</button>
                      <button class="btn btn-primary" onclick="laydanhsachFile(2)">2</button>
                      <button class="btn btn-primary">></button>

                      <script type="text/javascript">
                      function laydanhsachFile(trang){
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
                                document.getElementById("f1").innerHTML = items[index].tenbai;
                                document.getElementById("ngay1").innerHTML = items[index].ngay;
                                document.getElementById("link1").href = items[index].linkbai;
                                document.getElementById("type1").innerHTML = items[index].type;
                                document.getElementById("size1").innerHTML = items[index].size;
                                
                                }
                                if(y==2){
                                   document.getElementById("f2").innerHTML = items[index].tenbai;
                                document.getElementById("ngay2").innerHTML = items[index].ngay;
                                document.getElementById("link2").href = items[index].linkbai;
                                document.getElementById("type2").innerHTML = items[index].type;
                                document.getElementById("size2").innerHTML = items[index].size;
                                }
                                if(y==3){
                                 document.getElementById("f3").innerHTML = items[index].tenbai;
                                document.getElementById("ngay3").innerHTML = items[index].ngay;
                                document.getElementById("link3").href = items[index].linkbai;
                                document.getElementById("type3").innerHTML = items[index].type;
                                document.getElementById("size3").innerHTML = items[index].size;
                                }
                               
                              }
                            }
                         
                          }
                        }
                        xhr.open("GET","adminquanlyfile.json","true");
                        xhr.send();

                      }
                      </script>
                    </center>
                </div>
                
                <div id="menu2" class="tab-pane fade">
                    <form role="form">
                    <div class="form-group">
                        <br/>
                      <label for="nhaptuurl">Nhập từ URL</label>
                      <input type="url" class="form-control" id="nhaptuurl" placeholder="Enter url here">
                    </div>
                    
                    <div class="form-group">
                      <label for="upfile">Upload từ máy tính</label>
                      <input type="file" id="upfile">
                    </div>
                     <br/>
                  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#uploadfile">Upload</button>
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