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
		<a class="navbar-brand" href="<%=basePath%>customer/list.action">广州航海学院校园宽带客户管理系统</a>
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
				               客户：${CUSTOMER_SESSION.cust_name}
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
				    <a href="${pageContext.request.contextPath }/order/list.action" class="active">
				      <i class="fa fa-edit fa-fw"></i> 订单管理
				    </a>
				</li>
			</ul>
		</div>
	</div>
</nav>
	<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">订单管理</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			
			距离到期还有${day }天
		<c:if test="${not empty page1.rows}">
			<a href="#" class="btn btn-primary" data-toggle="modal" 
		           data-target="#newCustomerDialog" onclick="clearCustomer()">续费</a>
		    
		 </c:if> 
		    <c:if test="${empty page1.rows}">
			<a href="#" class="btn btn-primary" data-toggle="modal" 
		           data-target="#newCustomerDialog" onclick="clearCustomer()">新建订单</a>
		    </c:if>
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">订单列表</div>
					<!-- /.panel-heading -->
					<table class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>订单编号</th>
								<th>客户名称</th>
								<th>缴费日期</th>
								<th>到期日期</th>
								<th>订单费用</th>
								<th>订单类型</th>
								<th>经办人</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${page1.rows}" var="row">
								<tr>
									<td>${row.order_id}</td>
									<td>${row.cust_name}</td>
									<td><fmt:formatDate value='${row.pay_date}' pattern='yyyy-MM-dd'/></td>
									<td><fmt:formatDate value='${row.due_date}' pattern='yyyy-MM-dd'/></td>
									<td>${row.order_cost}</td>
									<td>${row.pay_type}</td>
								    <td>${row.order_operator}</td>
									<td>
										<a href="#" class="btn btn-danger btn-xs" onclick="deleteOrder(${row.order_id})">取消订单</a>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<div class="col-md-12 text-right">
						<itheima:page url="${pageContext.request.contextPath }/order/list.action" />
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


<!-- 创建订单模态框 -->
<div class="modal fade" id="newCustomerDialog" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">新建订单</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" id="new_order_form">
					<div class="form-group">
						<label for="customerName" class="col-sm-2 control-label">
						    客户名称
						</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="customerName" placeholder="客户名称" name="cust_name" readonly unselectable="on" value="${CUSTOMER_SESSION.cust_name} "/>
						</div>
					</div>
					<div class="form-group">
						<label for="new_customerFrom" style="float:left;padding:7px 15px 0 27px;">缴费类型</label> 
						<div class="col-sm-10">
							<select	class="form-control" id="new_customerFrom" name="pay_type" onchange="change(value)">
								<option value="">--请选择--</option>
									<option value="包月">包月</option>
									<option value="包年">包年</option>

							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="pay" class="col-sm-2 control-label">费用</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="pay" placeholder="" name="order_cost" readonly unselectable="on"/>
						</div>
					</div>
					
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-primary" onclick="createOrder()">生成订单</button>
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
	function clearCustomer() {
	    $("#new_customerName").val("");
	    $("#new_customerFrom").val("")
	    $("#new_custIndustry").val("")
	    $("#new_custLevel").val("")
	    $("#new_linkMan").val("");
	    $("#new_phone").val("");
	    $("#new_mobile").val("");
	    $("#new_zipcode").val("");
	    $("#new_address").val("");
	}
	//创建订单
	function createOrder() {
	$.post("<%=basePath%>order/create.action",
	$("#new_order_form").serialize(),function(data){
	        if(data =="OK"){
	            alert("订单创建成功！");
	            window.location.reload();
	        }else{
	            alert("订单创建失败！");
	            window.location.reload();
	        }
	    });
	}

	// 删除订单order/delete.action
	function deleteOrder(order_id) {
	    if(confirm('确实要取消订单吗?')) {
	$.post("<%=basePath%>order/delete.action",{"order_id":order_id},
	function(data){
	            if(data =="OK"){
	                alert("取消成功！");
	                window.location.reload();
	            }else{
	                alert("失败！");
	                window.location.reload();
	            }
	        });
	    }
	}


	function change(value){
		if(value=="包月"){
			document.getElementById("pay").value="500";
		}
		if(value=="包年"){
			document.getElementById("pay").value="1000";
		}
	}
</script>
</body>
</html>