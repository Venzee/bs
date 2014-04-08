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
					<li class="ui-nav-subitem"><a href="cardtype/list">卡类型</a></li>
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
			<form action="m/list" method="get" class="ui-form">
			    <div class="ui-box-content">
					<div class="ui-form-inline">
						<label for="keyword">关键字：</label>
						<input class="ui-input" name="w" id="keyword" value="${form.w }" type="text"/>
					</div>
					<button type="submit" id="search" class="btn btn-default btn-sm"><span class="glyphicon glyphicon-search"></span> 查询</button>	
					<button type="button" id="filter" class="btn btn-default btn-sm"><span class="glyphicon glyphicon-filter"></span> 高级查询</button>
					<!-- <button type="button" class="btn btn-default btn-sm"><span class="glyphicon glyphicon-download-alt"></span> 导出</button> -->
					<button type="button" id="add" class="btn btn-default btn-sm"><span class="glyphicon glyphicon-plus"></span> 添加会员</button>
					<button type="button" id="delete" class="btn btn-default btn-sm"><span class="glyphicon glyphicon-remove"></span> 删除会员</button>		
				</div>
				<div id="filter-content" class="ui-box-content fn-hide">
					<div class="ui-grid-row">
						<div class="ui-grid-25">
					    	<div class="ui-form-inline">
								<label for="cardType">卡类型：</label>
								<select id="cardType" name="cardTypeId">
								    <option value="0">请选择</option>
									<option value="1">钻石卡</option>
									<option value="2">铂金卡</option>
								</select>
							</div>
							<div class="ui-form-inline">
								<label for="consumeTimes">消费次数：</label>
								<input class="ui-input" name="startConsumeTimes" id="consumeTimes" type="text"/>
								<span>&nbsp;至&nbsp;</span>
								<input class="ui-input" name="endConsumeTimes" type="text"/>
							</div>
							<div class="ui-form-inline">
								<label for="startLastConsumeDate">最后消费：</label>
								<input class="ui-input" id="startLastConsumeDate" name="startLastConsumeDate" type="text"/>
								<span>&nbsp;至&nbsp;</span>
								<input class="ui-input" id="endLastConsumeDate" name="endLastConsumeDate" type="text"/>
							</div>
						</div>
					</div>
					<div class="ui-grid-row">
					    <div class="ui-grid-25">
					    	<div class="ui-form-inline">
								<label for="sex">性&nbsp;&nbsp;&nbsp;别：</label>
								<select id="sex" name="sex">
									<option value="">请选择</option>
								    <option value="0">女</option>
									<option value="1">男</option>
								</select>
							</div>
							<div class="ui-form-inline">
								<label for="startOpenDate">开卡时间：</label>
								<input class="ui-input" id="startOpenDate" name="startOpenDate" type="text"/>
								<span>&nbsp;至&nbsp;</span>
								<input class="ui-input" id="endOpenDate" name="endOpenDate" type="text"/>
							</div>
							<div class="ui-form-inline">
								<label for="startJoinDate">注册时间：</label>
								<input class="ui-input" id="startJoinDate" name="startJoinDate" type="text"/>
								<span>&nbsp;至&nbsp;</span>
								<input class="ui-input" id="endJoinDate" name="endJoinDate" type="text"/>
							</div>
						</div>
					</div>
					<div class="ui-grid-row">
					    <div class="ui-grid-25">
					    	<div class="ui-form-inline">
								<label for="openEmployee">开卡人：</label>
								<select id="openEmployee" name="openEmployeeId">
									<option value="">请选择</option>
								</select>
							</div>
							<div class="ui-form-inline">
								<label for="sumConsumeFee">消费总额：</label>
								<input class="ui-input" name="startSumConsumeFee" id="sumConsumeFee" type="text"/>
								<span>&nbsp;至&nbsp;</span>
								<input class="ui-input" name="endSumConsumeFee" type="text"/>
							</div>
							<div class="ui-form-inline">
								<label for="sumCardFee">储值总额：</label>
								<input class="ui-input" name="startSumCardFee" id="sumCardFee" type="text"/>
								<span>&nbsp;至&nbsp;</span>
								<input class="ui-input" name="endSumCardFee" type="text"/>
							</div>
						</div>
					</div>
					<div class="ui-grid-row">
					    <div class="ui-grid-25">
					    	<div class="ui-form-inline">
								<label for="level">分&nbsp;&nbsp;&nbsp;类：</label>
								<select id="level" name="levelId">
									<option value="">请选择</option>
								</select>
							</div>
							<div class="ui-form-inline">
								<label for="cardFee">储值余额：</label>
								<input class="ui-input" name="startCardFee" id="cardFee" type="text"/>
								<span>&nbsp;至&nbsp;</span>
								<input class="ui-input" name="endCardFee" type="text"/>
							</div>
							<div class="ui-form-inline">
								<label for="presentFee">赠送余额：</label>
								<input class="ui-input" name="startPresentFee" id="presentFee" type="text"/>
								<span>&nbsp;至&nbsp;</span>
								<input class="ui-input" name="endPresentFee" type="text"/>
							</div>
						</div>
					</div>
					<div class="ui-grid-row">
					    <div class="ui-grid-25">
					    	<div class="ui-form-inline">
								<label for="client">客户端：</label>
								<select id="client" name="clientStatus">
									<option value="">请选择</option>
									<option value="0">已绑定</option>
									<option value="1">未绑定</option>
								</select>
							</div>
							<div class="ui-form-inline">
								<label for="startBirth">生&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;日：</label>
								<input class="ui-input" id="startBirth" name="startBirth" type="text"/>
								<span>&nbsp;至&nbsp;</span>
								<input class="ui-input" id="endBirth" name="endBirth" type="text"/>
							</div>
							<div class="ui-form-inline">
								<label for="point">积&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;分：</label>
								<input class="ui-input" name="startPoint" id="point" type="text"/>
								<span>&nbsp;至&nbsp;</span>
								<input class="ui-input" name="endPoint" type="text"/>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
		<div class="ui-box">
		    <div class="ui-box-head">
		        <h3 class="ui-box-head-title">查询结果</h3>
		        <span class="ui-box-head-text">共${page.count }个会员。</span>
		        <span class="ui-box-head-more"><span class="glyphicon glyphicon-download-alt"></span> <a href="#">导出</a></span>
		    </div>
		    
			<table class="ui-table ui-table-inbox">
				<thead id="thead">
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
					<c:forEach items="${memberList }" var="o" varStatus="i">
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
						<c:choose>
							<c:when test="${page.pc == 0 }">
								无记录
							</c:when>
							<c:otherwise>
								<jsp:include page="../comm/page.jsp"></jsp:include>
							</c:otherwise>
						</c:choose>
					</td>
				</tr>
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
				'calendar' : 'arale/calendar/1.0.0/calendar',
				'select' : 'arale/select/0.9.9/select',
				'icheck' : 'jquery/icheck/1.0.2/icheck',
				'spin' : 'jquery/spin/2.0.0/spin'
			}
		});
		seajs.use('arale/dialog/1.3.0/dialog.css');
		seajs.use('arale/calendar/1.0.0/calendar.css');
		seajs.use(['$', 'dialog', 'calendar', 'select', 'icheck', 'spin'], function($, Dialog, Calendar, Select) {
			
			var opts = {
				lines: 10, // The number of lines to draw
				length: 10, // The length of each line
				width: 5, // The line thickness
				radius: 15, // The radius of the inner circle
				corners: 1, // Corner roundness (0..1)
				rotate: 0, // The rotation offset
				direction: 1, // 1: clockwise, -1: counterclockwise
				color: '#000', // #rgb or #rrggbb or array of colors
				speed: 1, // Rounds per second
				trail: 60, // Afterglow percentage
				shadow : true, // Whether to render a shadow
				hwaccel : false, // Whether to use hardware acceleration
				className : 'ui-spinner' // The CSS class to assign to the spinner
			}, spinner = '';
			
			if(spinner !== ''){
				spinner.spin();
			}else{
				spinner = new Spinner(opts).spin();
			}
			
			//$('body').append(spinner.el);
			
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
			
			var t1 = '2014-01-01';
			var t2 = '2014-05-01';
			
			var c1 = new Calendar({
				trigger: '#startLastConsumeDate',
				range: [t1, null]
			});
			var c2 = new Calendar({
				trigger: '#endLastConsumeDate',
				range: [null, t2]
			});
			
			c1.on('selectDate', function(date) {
		        c2.range([date, t2]);
		    });

		    c2.on('selectDate', function(date) {
		        c1.range([t1, date]);
		    });
			
			new Calendar({
				trigger: '#startOpenDate'
			});
			new Calendar({
				trigger: '#endOpenDate'
			});
			new Calendar({
				trigger: '#startJoinDate'
			});
			new Calendar({
				trigger: '#endJoinDate'
			});
			new Calendar({
				trigger: '#startBirth'
			});
			new Calendar({
				trigger: '#endBirth'
			});
			// Select
	    	/*new Select({
			    trigger: '#cardType'
			}).render();
	    	new Select({
			    trigger: '#sex'
			}).render();
	    	new Select({
			    trigger: '#openEmployee'
			}).render();
	    	new Select({
			    trigger: '#level'
			}).render();
	    	new Select({
			    trigger: '#client'
			}).render();*/

			$('#delete').on('click', function(){
				
			});
			
			$('#filter').on('click', function() {
				$(this).toggleClass('active');
				$('#filter-content').slideToggle();
			});

		});
	</script>
</body>
</html>
