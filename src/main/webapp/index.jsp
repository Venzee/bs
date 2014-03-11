<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>首页</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<style type="text/css">
* {
	font: 12px/1 Tahoma, Helvetica, Arial, Microsoft Yahei, "\5b8b\4f53", sans-serif;
}
#head {
	background: #0c92d7;
}

#head a {
	font-size: 14px;
	color: #fff;
}

#head li.active a,#head li.open > a  {
	background: #0c81d7;
}
#head li.open .dropdown-menu a {
	color: #333;
}
#content {
	margin-top: 20px;
}
th, td {
	text-align: center;
	vertical-align: middle;
}
</style>
</head>

<body>
	<div class="navbar navbar-default navbar-fixed-top" id="head">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Beauty Salon</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li><a href="#">首页</a></li>
					<li class="active"><a href="#">会员管理</a></li>
				</ul>
				
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#">Link</a></li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">管理员[Venz] <b class="caret"></b></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="#">账号设置</a></li>
							<li><a href="#">系统设置</a></li>
							<li><a href="#">日志查看</a></li>
							<li class="divider"></li>
							<li><a href="#">退出系统</a></li>
						</ul></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
	</div>
	<div class="container" id="content">
		<form class="page-header form-inline" role="form">
			<div class="row">
				<div class="col-xs-2">
					<div class="input-group input-group-sm">
						<span class="input-group-addon">门店</span>
						<select class="form-control">
							<option>请选择</option>
							<option>布吉店</option>
							<option>坂田店</option>
							<option>罗湖店</option>
							<option>南山店</option>
						</select>
					</div>
				</div>
				<div class="col-xs-3">
					<div class="input-group input-group-sm">
						<span class="input-group-addon">关键字</span>
						<input type="search" class="form-control" id="keyword" placeholder="姓名/卡号/手机号">
					</div>
				</div>
				<button type="submit" class="btn btn-default btn-sm"><span class="glyphicon glyphicon-search"></span> 查询</button>
				<button type="button" class="btn btn-default btn-sm" data-toggle="modal" data-target="#searchModal"><span class="glyphicon glyphicon-filter"></span> 高级查询</button>
				<button type="button" class="btn btn-default btn-sm"><span class="glyphicon glyphicon-download-alt"></span> 导出</button>
				<button type="button" class="btn btn-default btn-sm" data-toggle="modal" data-target="#addModal"><span class="glyphicon glyphicon-plus"></span> 添加会员</button>
			</div>
		</form>
		<div class="panel panel-default">
			<div class="panel-heading">
				本次查询结果：
			</div>
			<div class="table-responsive">
				<table class="table table-hover">
					<thead>
						<tr class="info">
							<th>#</th>
							<th>姓名</th>
							<th>性别</th>
							<th>手机</th>
							<th>卡号</th>
							<th>卡类型</th>
							<th>折扣</th>
							<th>账户</th>
							<th>注册时间</th>
							<th>最后消费</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach begin="1" end="15" var="i">
							<tr>
								<td>${i }</td>
								<td><a href="#">会员${i }</a></td>
								<td>女</td>
								<td>1358888${(i + 1) * 900 }</td>
								<td>${(i + 1) * 900 }</td>
								<td>尊享钻石卡</td>
								<td>5</td>
								<td class="warning">
									[储值余额:<span class="text-danger">100</span>元];
									[赠送余额:<span class="text-danger">100</span>元];
									[疗程余额:<span class="text-danger">100</span>元];
									[疗程赠送:<span class="text-danger">100</span>元]</td>
								<td>2014-3-11</td>
								<td>2014-2-11</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				
				<!-- <div class="panel-footer"></div> -->
			</div>
			
			<ul class="pagination pull-right">
				<li><a href="#">&laquo;</a></li>
				<li><a href="#">1</a></li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href="#">4</a></li>
				<li><a href="#">5</a></li>
				<li><a href="#">&raquo;</a></li>
			</ul>
		</div>
		
	</div>
	<!-- Modal -->
	<div class="modal fade" id="searchModal" tabindex="-1" role="dialog" aria-labelledby="searchModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="searchModalLabel">高级查询</h4>
				</div>
				<div class="modal-body">...</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default btn-sm"><span class="glyphicon glyphicon-search"></span> 查询</button>
				</div>
			</div>
		</div>
	</div>
	
	<div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-labelledby="addModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="addModalLabel">添加会员</h4>
				</div>
				<div class="modal-body">...</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default btn-sm" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> 取消</button>
					<button type="button" class="btn btn-default btn-sm"><span class="glyphicon glyphicon-ok"></span> 确认添加</button>
				</div>
			</div>
		</div>
	</div>
	
	<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript">
		$(function(){
			$(document).on('scroll', function(){
				
			});
		});
	</script>
</body>
</html>
