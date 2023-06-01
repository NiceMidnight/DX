<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="itheima" uri="http://itheima.com/common/"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() 
	                   + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>广州航海学院校园宽带客户管理系统</title>
	<!-- 引入css样式文件 -->
	<!-- Bootstrap Core CSS -->
	<link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet" />
	<!-- MetisMenu CSS -->
	<link href="<%=basePath%>css/metisMenu.min.css" rel="stylesheet" />
	<!-- DataTables CSS -->
	<link href="<%=basePath%>css/dataTables.bootstrap.css" rel="stylesheet" />
	<!-- Custom CSS -->
	<link href="<%=basePath%>css/sb-admin-2.css" rel="stylesheet" />
	<!-- Custom Fonts -->
	<link href="<%=basePath%>css/font-awesome.min.css" rel="stylesheet" type="text/css" />
	<link href="<%=basePath%>css/boot-crm.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="wrapper">
  <!-- 导航栏部分 -->
  <nav class="navbar navbar-default navbar-static-top" role="navigation"
		 style="margin-bottom: 0">
	<div class="navbar-header">
		<a class="navbar-brand" href="<%=basePath%>manage/list.action">广州航海学院校园宽带客户管理系统</a>
	</div>
	<!-- 导航栏右侧图标部分 -->
	<ul class="nav navbar-top-links navbar-right">
		<!-- 用户信息和系统设置 start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
				<i class="fa fa-user fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-user">
				<li><a href="#"><i class="fa fa-user fa-fw"></i>
				               超级管理员：${ADMIN}
				    </a>
				</li>
				<li><a href="#"><i class="fa fa-gear fa-fw"></i> 系统设置</a></li>
				<li class="divider"></li>
				<li>
					<a href="${pageContext.request.contextPath }/logout.action">
					<i class="fa fa-sign-out fa-fw"></i>退出登录
					</a>
				</li>
			</ul> 
		</li>
		<!-- 用户信息和系统设置结束 -->
	</ul>
	<div class="navbar-default sidebar" role="navigation">
		<div class="sidebar-nav navbar-collapse">
			<ul class="nav" id="side-menu">
				<li class="sidebar-search">
					<div class="input-group custom-search-form">
						<input type="text" class="form-control" placeholder="查询内容...">
						<span class="input-group-btn">
							<button class="btn btn-default" type="button">
								<i class="fa fa-search" style="padding: 3px 0 3px 0;"></i>
							</button>
						</span>
					</div> 
				</li>
				<li>
				    <a href="${pageContext.request.contextPath }/manage/list.action" class="active">
				      <i class="fa fa-edit fa-fw"></i> 平台管理员管理
				    </a>
				</li>
			</ul>
		</div>
	</div>
</nav>
	<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">管理员管理</h1>
				</div>
			</div>
			<a href="#" class="btn btn-primary" data-toggle="modal" 
		           data-target="#newCustomerDialog" onclick="clearManage()">添加管理员</a>
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">管理员列表</div>
					<!-- /.panel-heading -->
					<table class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>管理员编号</th>
								<th>管理员姓名</th>
								<th>管理员账号</th>
								<th>管理员密码</th>
								<th>管理员状态</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${page3.rows}" var="row">
								<tr>
									<td>${row.user_id}</td>
									<td>${row.user_name}</td>
									<td>${row.user_code}</td>
									<td>${row.user_password}</td>
								    <td>${row.user_state}</td>
									<td>
										<a href="#" class="btn btn-danger btn-xs" onclick="deleteManage(${row.user_id})">删除</a>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<div class="col-md-12 text-right">
						<itheima:page url="${pageContext.request.contextPath }/manage/list.action" />
					</div>
					<!-- /.panel-body -->
				</div>
				<!-- /.panel -->
			</div>
			<!-- /.col-lg-12 -->
		</div>
	</div>
	<!-- 客户列表查询部分  end-->
</div>

<!-- 创建管理员模态框 -->
<div class="modal fade" id="newCustomerDialog" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel1">添加管理员</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" id="new_manage_form">
					<div class="form-group">
						<label for="new_manageName" class="col-sm-2 control-label">
							名称
						</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_manageName" placeholder="管理员名称" name="manage_name"/>
						</div>
					</div>
					<div class="form-group">
						<label for="new_manageCode" class="col-sm-2 control-label">
							账号
						</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_manageCode" placeholder="admin加数字（id）" name="manage_code" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_managePassword" class="col-sm-2 control-label">
							密码
						</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_managePassword" placeholder="可同一123" name="manage_password" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_manageState" class="col-sm-2 control-label">
							状态
						</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_manageState" placeholder="允许登录默认1" name="manage_state" readonly unselectable="on" value="1"/>
						</div>
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-primary" onclick="createManage()">生成管理员</button>
			</div>
		</div>
	</div>
</div>
<!-- 引入js文件 -->
<!-- jQuery -->
<script src="<%=basePath%>js/jquery-1.11.3.min.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="<%=basePath%>js/bootstrap.min.js"></script>
<!-- Metis Menu Plugin JavaScript -->
<script src="<%=basePath%>js/metisMenu.min.js"></script>
<!-- DataTables JavaScript -->
<script src="<%=basePath%>js/jquery.dataTables.min.js"></script>
<script src="<%=basePath%>js/dataTables.bootstrap.min.js"></script>
<!-- Custom Theme JavaScript -->
<script src="<%=basePath%>js/sb-admin-2.js"></script>
<!-- 编写js代码 -->
<script type="text/javascript">

//清空新建客户窗口中的数据
	function clearManage() {
	    $("#new_manageName").val("");
	    $("#new_manageCode").val("")
	    $("#new_managePassword").val("")
	    $("#new_manageState").val("")
	}

	//创建管理员
	function createManage() {
	$.post("<%=basePath%>manage/creation.action",
	$("#new_manage_form").serialize(),function(data){
	        if(data =="OK"){
	            alert("管理员创建成功！");
	            window.location.reload();
	        }else{
	            alert("管理员创建失败！");
	            window.location.reload();
	        }
	    });
	}

	// 删除客户order/delete.action
	function deleteManage(id) {
		if(confirm('确实要删除该客户吗?')) {
	$.post("<%=basePath%>manage/delete.action",{"id":id},
	function(data){
	            if(data =="OK"){
	                alert("客户删除成功！");
	                window.location.reload();
	            }else{
	                alert("删除客户失败！");
	                window.location.reload();
	            }
	        });
	    }
	}
</script>
</body>
</html>