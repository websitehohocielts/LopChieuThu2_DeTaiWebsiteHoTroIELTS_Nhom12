<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="modal fade" id="tbdn1" role="dialog">
                          <div class="modal-dialog modal-sm">
                            <div class="modal-content">
                            <div class="modal-header">
				       				<button type="button" class="close" data-dismiss="modal">&times;</button>
				   			   </div>
                              <div class="modal-body">
                                <div class="alert alert-success">
                                    <strong>Mời bạn đăng nhập để thực hiện chức năng này ! </strong>
                                </div>
                               
                              </div>
                              <div class="modal-footer">
                            <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
                          </div>
                            </div>
                          </div>
                        </div>
                  
  
              
 
      <div class="modal fade" id="fdangnhap" role="dialog" ng-app="dangnhap1">
 					<div ng-controlle="demo1">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-12">
                                    <form name=dangn1 action = "loginbean.jsp" method = "POST">

                                      <div class="modal-dialog modal-sm">
                                        <div class="modal-content">
                                          <div class="modal-body">
                                

                                        <div class="form-group">
                                        <label for="user">Username:</label>
                                        <input class="form-control" type="text" id ="us" name="user" ng-minlength="4" ng-maxlength="15" ng-model="user" required/>
                                        <span class="text-danger" ng-show="dangn1.user.$error.required">User không được để trống</span>
                                        <span class="text-danger" ng-show="dangn1.user.$error.minlength">Độ dài tối thiểu là 4</span>
                                        <span class="text-danger" ng-show="dangn1.user.$error.maxlength">Độ dài tối đa là 15</span>
                                        </div>

                                        <div class="form-group">
                                        <label for="pass">Mật khẩu:</label>
                                        <input id ="ps" class="form-control" type="password" name="pass" ng-minlength="4" ng-maxlength="15" ng-model="pass" required/>
                                        <span class="text-danger" ng-show="dangn1.pass.$error.required">Password không được để trống</span>
                                        <span class="text-danger" ng-show="dangn1.pass.$error.minlength">Độ dài password tối thiểu là 4</span>
                                        <span class="text-danger" ng-show="dangn1.pass.$error.maxlength">Độ dài password tối đa là 15</span>
                                        </div>

                                        <br />
                                        <center><button type="submit" class="btn btn-info" ng-disabled ="!dangn1.$valid">Đăng Nhập</button>
                                            <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button></center>
                                       </div>
                                       </div>
                                       </div>
                                    </form>
                                </div>
                            </div>

                        </div>
                    </div> 
                    </div>
                    
                    <script type="text/javascript" src="js/angular.min.js"></script>
  <script type="text/javascript">
    var app = angular.module('dangnhap1',[]);
        app.controller('demo1',function($scope){

        });
  </script>
</body>
</html>