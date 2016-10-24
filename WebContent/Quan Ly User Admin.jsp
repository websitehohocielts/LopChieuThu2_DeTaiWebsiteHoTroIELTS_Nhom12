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
          <div class="panel-heading"><strong><center><h4>Quản Lý User</h4></center></strong></div>
             <div class="panel-body">

              <table class="table table-bordered">
                    <thead><br/>
                      <tr>
                        <th>Họ Tên</th>
                        
                        <th>Tuổi</th>
                        <th>Username</th>
                       <th>Mail</th>
                       <th>Active</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>
                      <label><a id="ten1" href="Admin xem thong tin ca nhan user.jsp">Trần Văn A</a></label>
                  		</td>	
                        <td><p id="tuoi1">19</p> </td>
                        <td><p id="username1">tranvana196</p></td>
                      	<td><p id="mail1">tranvana@gmail.com</p></td>
                      	<td><label><input id="link1" type="checkbox" value="" disabled checked=""><span style="color: green;"> Active</span></label></td>
                      </tr>
                        <tr>
                        <td>
                    	  <label><a id="ten2" href="#">Nguyễn Văn Cya</a></label>
                  		</td>	
                        <td><p id="tuoi2">21</p> </td>
                        <td><p id="username2">Cya78</p></td>
                        <td><p id="mail2">Cya145@gmail.com</p></td>
                      	<td><label><input id="link2" type="checkbox" value="" disabled checked=""><span style="color: green;"> Active</span></label></td>
                      </tr>
                      <tr>
                        <td>
                      <label><a id="ten3" href="#">Nguyễn Văn Tý</a></label>
                  		</td>	
                        <td><p id="tuoi3">30</p> </td>
                        <td><p id="username3">TyNguyenAv123</p></td>
                        <td><p id="mail3">nvty123@gmail.com</p></td>
                      	<td><label><input id="link3" type="checkbox" value="" disabled unchecked=""><span style="color: red;"> Disable</span></label></td>
                      </tr>
                    </tbody>
                  </table>
                  <br/>
                  <center>
                  	<button class="btn btn-primary" onclick="laydanhsachUser(1)">1</button>
                  	<button class="btn btn-primary" onclick="laydanhsachUser(2)">2</button>
                  	<button class="btn btn-primary">></button>
                    <script type="text/javascript">
                      function laydanhsachUser(trang){
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
                                document.getElementById("ten1").innerHTML = items[index].ten;
                                document.getElementById("tuoi1").innerHTML = items[index].tuoi;
                                document.getElementById("link1").href = items[index].linkbai;
                                document.getElementById("username1").innerHTML = items[index].username;
                                document.getElementById("mail1").innerHTML = items[index].mail;
                                
                                }
                                if(y==2){
                                   document.getElementById("ten2").innerHTML = items[index].ten;
                                document.getElementById("tuoi2").innerHTML = items[index].tuoi;
                                document.getElementById("link2").href = items[index].linkbai;
                                document.getElementById("username2").innerHTML = items[index].username;
                                document.getElementById("mail2").innerHTML = items[index].mail;
                                }
                                if(y==3){
                                 document.getElementById("ten3").innerHTML = items[index].ten;
                                document.getElementById("tuoi3").innerHTML = items[index].tuoi;
                                document.getElementById("link3").href = items[index].linkbai;
                                document.getElementById("username3").innerHTML = items[index].username;
                                document.getElementById("mail3").innerHTML = items[index].mail;
                                }
                               
                              }
                            }
                         
                          }
                        }
                        xhr.open("GET","quanlyuser.json","true");
                        xhr.send();

                      }
                      </script>
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