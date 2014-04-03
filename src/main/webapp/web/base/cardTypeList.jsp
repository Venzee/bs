<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath %>">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>首页</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/one-debug.css">
<link rel="stylesheet" type="text/css" href="css/skins/minimal/blue.css">
<style type="text/css">
.container {
	margin: 0 auto;
	min-width: 900px;
	max-width: 1360px;
	padding: 15px;
}
#filter-content {
	border-top: 1px solid #ddd;
}
</style>
</head>

<body>
	<div id="nav" class="ui-nav">
		<ul class="ui-nav-main">
			<li class="ui-nav-item"><a href="#">首&nbsp;&nbsp;页</a></li>
			
			<li class="ui-nav-item ui-nav-item-current"><a href="#">会员管理</a>
				<ul class="ui-nav-submain">
					<li class="ui-nav-subitem ui-nav-subitem-current"><a href="#">卡类型</a></li>
					<li class="ui-nav-subitem"><a href="m/list">会员资料</a></li>
				</ul>
			</li>
			<li class="ui-nav-item"><a href="#">系统设置</a>
				<ul class="ui-nav-submain">
					<li class="ui-nav-subitem"><a href="#">基础设置</a></li>
					<li class="ui-nav-subitem"><a href="#">用户设置</a></li>
				</ul>
			</li>
			
		</ul>
		<div class="ui-nav-subcontainer"></div>
	</div>
	
	<div class="container">
		<div class="ui-box">
			
		</div>
		<div class="ui-box">
		    
			<table class="ui-table ui-table-inbox">
				<thead id="thead">
					<tr>
						<th>#</th>
						<th>名称</th>
						<th>消费折扣</th>
						<th>卖品折扣</th>
						<th>卡类型</th>
						<th>是否发送短信</th>
						<th>是否扣除信息费</th>
						<th>工本费</th>
						<th>状态</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${cardTypeList }" var="o" varStatus="i">
						<tr>
							<td><input type="checkbox" /></td>
							<td><a href="#">${o.name }</a></td>
							<td>${o.consumeDiscount }</td>
							<td>${o.goodsDiscount }</td>
							<td>${o.feeFlag }</td>
							<td>${o.smsFlag }</td>
							<td>${o.smsCostFlag }</td>
							<td>${o.costFee }</td>
							<td>${o.status }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	<script type="text/javascript" src="js/sea.js"></script>
	<script type="text/javascript">
		seajs.config({
			base: 'sea-modules',
			alias : {
				'$' : 'jquery/jquery/1.10.1/jquery',
				'confirmbox' : 'arale/dialog/1.3.0/confirmbox',
				'dialog' : 'arale/dialog/1.3.0/dialog',
				'select' : 'arale/select/0.9.9/select',
				'icheck' : 'jquery/icheck/1.0.2/icheck'
			}
		});
		seajs.use('arale/dialog/1.3.0/dialog.css');
		seajs.use(['$', 'dialog', 'select', 'icheck'], function($, Dialog, Select) {
			
			$('input:checkbox').iCheck({
				checkboxClass: 'icheckbox_minimal-blue',
				radioClass: 'iradio_minimal-blue'
			});
			
			var o = new Dialog({
				trigger : '#add',
				width : '500px',
				initialHeight : '435px',
				effect : 'fade',
				content : './web/base/addMember.jsp'
			});
			
		});
		
	</script>
</body>
</html>
