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
.ui-box-content {
	width: 478px;
}
</style>
</head>

<body>
	<div class="ui-box">
	    <div class="ui-box-head">
	        <h3 class="ui-box-head-title">添加会员</h3>
	    </div>
	    <div class="ui-box-container">
	    	<br/>
	    	<ol class="ui-step ui-step-blue ui-step-3">
			    <li class="ui-step-start ui-step-active">
			        <div class="ui-step-line">-</div>    
			        <div class="ui-step-icon">        
			            <i class="iconfont">&#x0079;</i>
			            <i class="ui-step-number">1</i>
			            <span class="ui-step-text">基本信息</span>
			        </div>
			    </li>
			    <li>
			        <div class="ui-step-line">-</div>    
			        <div class="ui-step-icon">
			            <i class="iconfont">&#x0079;</i>
			            <i class="ui-step-number">2</i>
			            <span class="ui-step-text">卡账户</span>
			        </div>
			    </li>
			    <li class="ui-step-end">
			        <div class="ui-step-line">-</div>    
			        <div class="ui-step-icon">
			            <i class="iconfont">&#x0079;</i>
			            <i class="iconfont ui-step-number">&#xF029;</i>
			            <span class="ui-step-text">完成</span>
			        </div>
			    </li>
			</ol>
	    	<div class="ui-box-content">
		    	<div class="ui-tiptext-container ui-tiptext-container-message">
				    <p class="ui-tiptext ui-tiptext-message">
				        <i class="ui-tiptext-icon iconfont" title="提示">&#xF046;</i>
				        <span class="ui-form-required">*</span>号的为必填项
				    </p>
				</div>
			</div>
			<form class="ui-form" id="member-form" name="member-form" action="m/add" method="post" data-widget="validator">
				<fieldset>
					<div class="ui-switchable-content" data-switchable-role="content">
						<div class="ui-switchable-panel">
							<div class="ui-box-content">
								<div class="ui-form-item">
									<label for="name" class="ui-label"><span class="ui-form-required">*</span>姓名：</label>
									<input class="ui-input" id="name" name="m.name" type="text" required data-display="姓名"/>
								</div>
								<div class="ui-form-item ui-form-inline">
									<label class="ui-label"><span class="ui-form-required">*</span>性别：</label>
									<input id="male" value="0" name="m.sex" type="radio" required data-display="性别"/>
									<label for="male">女</label>
									<input id="female" value="1" name="m.sex" type="radio"/>
									<label for="female">男</label>
								</div>
								<div class="ui-form-item">
									<label for="mobile" class="ui-label"><span class="ui-form-required">*</span>手机：</label>
									<input class="ui-input" id="mobile" name="m.mobile" type="text" required data-display="手机"/>
								</div>
								<div class="ui-form-item">
									<label for="password" class="ui-label">密码：</label>
									<input class="ui-input" id="password" name="m.password" type="password" minlength="5" maxlength="20" data-display="密码"/>
								</div>
								<div class="ui-form-item">
									<label for="birth" class="ui-label">生日：</label>
									<input class="ui-input" id="birth" name="mc.birth" type="date"/>
								</div>
							</div>
						</div>
						<div class="ui-switchable-panel">
							<div class="ui-box-content">
								<div class="ui-form-item">
									<label for="cardno" class="ui-label"><span class="ui-form-required">*</span>卡号：</label>
									<input class="ui-input" id="cardno" name="mc.cardNo" type="text" required data-display="卡号"/>
								</div>
								<div class="ui-form-item">
									<label for="cardType" class="ui-label"><span class="ui-form-required">*</span>卡类型：</label>
									<select id="cardType" name="mc.cardTypeId">
									    <option value="0">请选择</option>
										<option value="1">钻石卡</option>
										<option value="2">铂金卡</option>
									</select>
								</div>
								<div class="ui-form-item">
									<label for="expireDate" class="ui-label">失效日期</label>
									<input class="ui-input" id="expireDate" name="mc.expireDate" type="text"/>
								</div>
								<div class="ui-form-item">
									<label for="consumeDiscount" class="ui-label"><span class="ui-form-required">*</span>消费折扣</label>
									<input class="ui-input" id="discount" name="mc.consumeDiscount" type="number" required max="10" min="0" data-display="消费折扣"/>
								</div>
								<div class="ui-form-item">
									<label for="goodsDiscount" class="ui-label"><span class="ui-form-required">*</span>卖品折扣</label>
									<input class="ui-input" name="mc.goodsDiscount" type="number" required max="10" min="0" data-display="卖品折扣"/>
								</div>
							</div>
						</div>
						<div class="ui-switchable-panel">
							<div class="ui-box-content">
								<div class="ui-form-item">
									<label class="ui-label">工本费</label>
								</div>
								<div class="ui-form-item ui-form-inline">
									<label for="costFee" class="ui-label">现金付</label>
									<input class="ui-input" id="costFee" name="c_ledg.cashPay" value="0" type="number"/>
									<span class="ui-input-pre">银联付</span>
									<input class="ui-input" name="c_ledg.unionPay" value="0" type="number"/>
								</div>
								<div class="ui-form-item">
									<label class="ui-label">充值明细</label>
								</div>
								<div class="ui-form-item">
									<label for="recharge" class="ui-label">现金付</label>
									<input class="ui-input" id="recharge" name="r_ledg.cashPay" value="0" type="number"/>
									<span class="ui-input-pre">银联付</span>
									<input class="ui-input" name="r_ledg.unionPay" value="0" type="number"/>
								</div>
								<div class="ui-form-item">
									<label for="presentFee" class="ui-label">赠送金</label>
									<input class="ui-input" id="presentFee" name="mc.presentFee" value="0" type="number"/>
								</div>
							</div>
						</div>
					</div>
				</fieldset>
				<div class="ui-box-content">
					<div class="ui-form-item">
						<div class="fn-right">
							<input type="button" class="ui-button ui-button-morange btn-prev ui-switchable-prev-btn" data-switchable-role="prev" value="上一步">
							<input type="button" class="ui-button ui-button-morange btn-next ui-switchable-next-btn" data-switchable-role="next" value="下一步">
							<input type="submit" class="ui-button ui-button-morange" value="确定">
						</div>
					</div>
				</div>
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
				'select' : 'arale/select/0.9.9/select',
				'widget' : 'arale/widget/1.1.1/widget',
				'validator' : 'arale/validator/0.9.7/validator',
				'carousel' : 'arale/switchable/1.0.2/carousel'
			}
		});
		seajs.use(['select', 'widget', 'carousel', '$'], function(Select, Widget, Carousel, $) {
		    $(function() {
		    	// Select
		    	new Select({
				    trigger: '#cardType'
				}).render();
		    	
		    	// Validation
		        Widget.autoRenderAll();
		        
		        var c = new Carousel({
			        element: '#member-form',
			        hasTriggers: false,
			        easing: 'easeOutStrong',
			        effect: 'scrollx',
			        step: 1,
			        viewSize: [498],
			        circular: false,
			        autoplay: false
			    }).render();
		    	
		        // 绑定上一步下一步按钮事件
		        /*$('input.btn-next').on('click', function(){
		        	$(this).parents('div.ui-box-content').addClass('fn-hide').next().removeClass('fn-hide');
		        });
				$('input.btn-prev').on('click', function(){
					$(this).parents('div.ui-box-content').addClass('fn-hide').prev().removeClass('fn-hide');
		        });*/
		    });
		});
	</script>
</body>
</html>
