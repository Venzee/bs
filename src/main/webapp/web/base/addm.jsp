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
	min-width: 1000px;
	max-width: 1360px;
	padding: 15px;
}
</style>
</head>

<body>
	<div class="ui-box">
	    <div class="ui-box-head">
	        <h3 class="ui-box-head-title">添加会员</h3>
	    </div>
	    <div class="ui-box-container">
	    	<div class="ui-box-content">
		    	<div class="ui-tiptext-container ui-tiptext-container-message">
				    <p class="ui-tiptext ui-tiptext-message">
				        <i class="ui-tiptext-icon iconfont" title="提示">&#xF046;</i>
				        <span class="ui-form-required">*</span>号的为必填项
				    </p>
				</div>
			</div>
			<form class="ui-form" name="member-form" action="m/add" method="post">
				<fieldset>
					<div class="ui-box-content">
						<div class="ui-form-item ui-form-inline">
							<label for="name" class="ui-label">
								<span class="ui-form-required">*</span>姓名
							</label>
							<input class="ui-input" id="name" name="m.name" type="text">
							<span class="ui-input-pre"><span class="ui-form-required">*</span>性别</span>
							<select id="sex" name="m.sex">
							    <option value="0" selected="selected">女</option>
							    <option value="1">男</option>
							</select>
							<span class="ui-input-pre"><span class="ui-form-required">*</span>手机</span>
							<input class="ui-input" id="mobile" name="m.mobile" type="text"/>
						</div>
						<div class="ui-form-item">
							<label for="password" class="ui-label">密码</label>
							<input class="ui-input" id="password" name="m.password" type="password"/>
							<span class="ui-form-other"><a href="#">如需要密码请至少输入4位</a></span>
						</div>
					</div>
					<div class="ui-box-content">
						<div class="ui-form-item">
							<label for="cardno" class="ui-label">卡账户</label>
						</div>
						
						<div class="ui-form-item ui-form-inline">
							<label for="cardno" class="ui-label">
								<span class="ui-form-required">*</span>卡号
							</label>
							<input class="ui-input" id="cardno" name="mc.cardNo" type="text"/>
							<span class="ui-input-pre"><span class="ui-form-required">*</span>卡类型</span>
							<select id="cardType" name="mc.cardTypeId">
							    <option value="0">请选择</option>
								<option value="1">钻石卡</option>
								<option value="2">铂金卡</option>
							</select>
							<span class="ui-input-pre">失效日期</span>
							<input class="ui-input" id="expireDate" name="mc.expireDate" type="text"/>
						</div>
						<div class="ui-form-item">
							<label for="discount" class="ui-label"><span class="ui-form-required">*</span>消费折扣</label>
							<input class="ui-input" id="discount" name="mc.consumeDiscount" type="text"/>
							<span class="ui-input-pre"><span class="ui-form-required">*</span>卖品折扣</span>
							<input class="ui-input" name="mc.goodsDiscount" type="text"/>
						</div>
					</div>
					<div class="ui-box-content">
						<div class="ui-form-item">
							<label for="costFee" class="ui-label">工本费</label>
						</div>
						<div class="ui-form-item ui-form-inline">
							<label for="costFee" class="ui-label">现金付</label>
							<input class="ui-input" id="costFee" name="c_ledg.cashPay" value="0" type="text"/>
							<span class="ui-input-pre">银联付</span>
							<input class="ui-input" name="c_ledg.unionPay" value="0" type="text"/>
						</div>
					</div>
					<div class="ui-box-content">
						<div class="ui-form-item">
							<label for="recharge" class="ui-label">充值明细</label>
						</div>
						<div class="ui-form-item ui-form-inline">
							<label for="cashPay" class="ui-label">现金付</label>
							<input class="ui-input" id="recharge" name="r_ledg.cashPay" value="0" type="text"/>
							<span class="ui-input-pre">银联付</span>
							<input class="ui-input" name="r_ledg.unionPay" value="0" type="text"/>
							<span class="ui-input-pre">赠送金</span>
							<input class="ui-input" name="mc.presentFee" value="0" type="text"/>
						</div>
					</div>
					<div class="ui-box-content">
						<div class="ui-form-item">
							<input type="submit" class="ui-button ui-button-morange" value="确定">
							<input type="button" class="ui-button ui-button-mwhite" value="取消">
						</div>
					</div>
				</fieldset>
			</form>
	    </div>
	</div>
	
	<script charset="utf-8" id="seajsnode"src="http://static.alipayobjects.com/seajs/??seajs/2.1.1/sea.js,seajs-combo/1.0.0/seajs-combo.js,seajs-style/1.0.0/seajs-style.js"></script>
	<script type="text/javascript">
		seajs.config({
			alias : {
				'$' : 'gallery/jquery/1.7.2/jquery',
				'confirmbox' : 'arale/dialog/1.2.6/confirmbox',
				'dialog' : 'arale/dialog/1.2.6/dialog',
				'select' : 'arale/select/0.9.9/select'
			}
		});
		seajs.use('select', function(Select) {
			new Select({
			    trigger: '#sex'
			}).render();
			new Select({
			    trigger: '#cardType'
			}).render();
		});
	</script>
</body>
</html>
