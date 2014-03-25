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
<style type="text/css">
.container {
	margin: 0 auto;
	min-width: 900px;
	max-width: 1360px;
	padding: 15px;
}
</style>
</head>

<body>
	<div class="ui-nav">
		<ul class="ui-nav-main">
			<li class="ui-nav-item"><a href="#">首&nbsp;&nbsp;页</a></li>
			
			<li class="ui-nav-item ui-nav-item-current"><a href="#">会员管理</a>
				<ul class="ui-nav-submain">
					<li class="ui-nav-subitem"><a href="#">卡类型</a></li>
					<li class="ui-nav-subitem ui-nav-subitem-current"><a href="#">会员资料</a></li>
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
		    <div class="ui-box-content">
				<form action="m/list" method="get" class="ui-form">
					<div class="ui-form-inline">
						<label for="keyword">关键字</label>
						<input class="ui-input" name="w" id="keyword" value="${foro.keyword }" type="text"/>
					</div>
					<button type="submit" id="search" class="btn btn-default btn-sm"><span class="glyphicon glyphicon-search"></span> 查询</button>	
					<button type="button" class="btn btn-default btn-sm" data-toggle="modal" data-target="#searchModal"><span class="glyphicon glyphicon-filter"></span> 高级查询</button>
					<button type="button" class="btn btn-default btn-sm"><span class="glyphicon glyphicon-download-alt"></span> 导出</button>
					<button type="button" id="add" class="btn btn-default btn-sm" data-toggle="modal" data-target="#addModal"><span class="glyphicon glyphicon-plus"></span> 添加会员</button>		
				</form>
			</div>
		</div>
		<div class="ui-box">
		    <div class="ui-box-head">
		        <h3 class="ui-box-head-title">查询结果</h3>
		        <span class="ui-box-head-text">共${page.count }个会员。</span>
		        <a href="#" class="ui-box-head-more">更多</a>
		    </div>
		    
			<table class="ui-table ui-table-inbox">
				<thead>
					<tr>
						<th>#</th>
						<th>姓名</th>
						<th>性别</th>
						<th>手机号</th>
						<th>卡号</th>
						<th>卡类型</th>
						<th>折扣</th>
						<th>卡账户</th>
						<th>注册时间</th>
						<th>最后消费</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${mList }" var="o" varStatus="i">
						<c:choose>
							<c:when test="${fn:length(o.mc_list) > 1 }">
								<tr>
									<td rowspan="${fn:length(o.mc_list) }"><input type="checkbox" /></td>
									<td rowspan="${fn:length(o.mc_list) }"><a href="#">${o.m.name }</a></td>
									<td rowspan="${fn:length(o.mc_list) }">
										<c:choose>
											<c:when test="${o.m.sex == 1 }">男</c:when>
											<c:otherwise>女</c:otherwise>
										</c:choose>
									</td>
									<td rowspan="${fn:length(o.mc_list) }">${o.m.mobile }</td>
									<td class="warning">${o.mc_list[0].cardNo }</td>
									<td class="warning">${o.mc_list[0].cardTypeId }</td>
									<td class="warning">
										[项目:<c:if test="${o.mc_list[0].consumeDiscount == 0 }">无折扣</c:if><c:if test="${o.mc_list[0].consumeDiscount != 0 }"><span class="text-danger">${o.mc_list[0].consumeDiscount }</span>折</c:if>]<br/>
										[卖品:<c:if test="${o.mc_list[0].goodsDiscount == 0 }">无折扣</c:if><c:if test="${o.mc_list[0].goodsDiscount != 0 }"><span class="text-danger">${o.mc_list[0].goodsDiscount }</span>折</c:if>]
									</td>
									<td class="warning">
										[储值余额:<span class="text-danger">${o.mc_list[0].cardFee }</span>元];
										[赠送余额:<span class="text-danger">${o.mc_list[0].presentFee }</span>元]<br/>
										[疗程余额:<span class="text-danger">${o.mc_list[0].treatFee }</span>元];
										[疗程赠送:<span class="text-danger">${o.mc_list[0].treatPresentFee }</span>元]
									</td>
									<td rowspan="${fn:length(o.mc_list) }">${fn:substring(o.m.joinDate,0,10) }</td>
									<td rowspan="${fn:length(o.mc_list) }">${fn:substring(o.m.lastConsumeDate,0,10) }</td>
								</tr>
								<c:forEach items="${o.mc_list }" var="c" begin="1">
									<tr class="warning">
										<td>${c.cardNo }</td>
										<td>${c.cardTypeId }</td>
										<td class="warning">
											[项目:<c:if test="${c.consumeDiscount == 0 }">无折扣</c:if><c:if test="${c.consumeDiscount != 0 }"><span class="text-danger">${c.consumeDiscount }</span>折</c:if>]<br/>
											[卖品:<c:if test="${c.goodsDiscount == 0 }">无折扣</c:if><c:if test="${c.goodsDiscount != 0 }"><span class="text-danger">${c.goodsDiscount }</span>折</c:if>]
										</td>
										<td>
											[储值余额:<span class="text-danger">${c.cardFee }</span>元];
											[赠送余额:<span class="text-danger">${c.presentFee }</span>元]<br/>
											[疗程余额:<span class="text-danger">${c.treatFee }</span>元];
											[疗程赠送:<span class="text-danger">${c.treatPresentFee }</span>元]
										</td>
									</tr>
								</c:forEach>
							</c:when>
							<c:otherwise>
								<tr>
									<td><input type="checkbox" /></td>
									<td><a href="#">${o.m.name }</a></td>
									<td>
										<c:choose>
											<c:when test="${o.m.sex == 1 }">男</c:when>
											<c:otherwise>女</c:otherwise>
										</c:choose>
									</td>
									<td>${o.m.mobile }</td>
									<c:choose>
										<c:when test="${fn:length(o.mc_list) > 0 }">
											<td class="warning">${o.mc_list[0].cardNo }</td>
											<td class="warning">${o.mc_list[0].cardTypeId }</td>
											<td class="warning">
												[项目:<c:if test="${o.mc_list[0].consumeDiscount == 0 }">无折扣</c:if><c:if test="${o.mc_list[0].consumeDiscount != 0 }"><span class="text-danger">${o.mc_list[0].consumeDiscount }</span>折</c:if>]<br/>
												[卖品:<c:if test="${o.mc_list[0].goodsDiscount == 0 }">无折扣</c:if><c:if test="${o.mc_list[0].goodsDiscount != 0 }"><span class="text-danger">${o.mc_list[0].goodsDiscount }</span>折</c:if>]
											</td>
											<td class="warning">
												[储值余额:<span class="text-danger">${o.mc_list[0].cardFee }</span>元];
												[赠送余额:<span class="text-danger">${o.mc_list[0].presentFee }</span>元]<br/>
												[疗程余额:<span class="text-danger">${o.mc_list[0].treatFee }</span>元];
												[疗程赠送:<span class="text-danger">${o.mc_list[0].treatPresentFee }</span>元]
											</td>
										</c:when>
										<c:otherwise>
											<td colspan="4" class="warning">
												<span class="text-danger">无会员卡 <a href="#">[开卡]</a></span>
											</td>
										</c:otherwise>
									</c:choose>
									<td>${fn:substring(o.m.joinDate,0,10) }</td>
									<td>${fn:substring(o.m.lastConsumeDate,0,10) }</td>
								</tr>
							</c:otherwise>
						</c:choose>
					</c:forEach>
				</tbody>
				<tr>
					<td colspan="10">
						<jsp:include page="../comm/page.jsp"></jsp:include>
					</td>
				</tr>
			</table>
		</div>
	</div>
	<script charset="utf-8" id="seajsnode"src="http://static.alipayobjects.com/seajs/??seajs/2.1.1/sea.js,seajs-combo/1.0.0/seajs-combo.js,seajs-style/1.0.0/seajs-style.js"></script>
	<script type="text/javascript">
		seajs.config({
			alias : {
				'$' : 'gallery/jquery/1.7.2/jquery',
				'confirmbox' : 'arale/dialog/1.2.6/confirmbox',
				'dialog' : 'arale/dialog/1.2.6/dialog'
			}
		});
		seajs.use('arale/dialog/1.2.6/dialog.css');
		seajs.use('dialog', function(Dialog) {
			var o = new Dialog({
				trigger : '#add',
				width : '700px',
				content : './web/base/addm.jsp'
			});
		});
		seajs.use('confirmbox', function(Confirmbox) {
			//Confirmbox.alert('xxx');
		});
	</script>
</body>
</html>
