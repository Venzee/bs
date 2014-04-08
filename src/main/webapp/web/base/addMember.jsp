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
	min-width: 1000px;
	max-width: 1360px;
	padding: 15px;
}
.ui-switchable-panel {
	width: 498px;
	float: left;
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
		    	<ol class="ui-step ui-step-blue ui-step-3" id="member-step">
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
			</div>
			<form class="ui-form" id="member-form" name="member-form" action="m/add" method="post" data-widget="validator">
				<fieldset>
					<div class="ui-switchable-content" data-switchable-role="content">
						<div class="ui-switchable-panel">
							<div class="ui-box-content">
								<div class="ui-form-item">
									<label for="name" class="ui-label"><span class="ui-form-required">*</span>姓名：</label>
									<input class="ui-input" id="name" name="m.name" type="text" required/>
								</div>
								<div class="ui-form-item">
									<label for="sex" class="ui-label"><span class="ui-form-required">*</span>性别：</label>
									<div class="ui-form-radio">
										<div class="ui-form-inline">
											<input type="radio" id="women" name="m.sex" value="0"/>
											<label for="women">女&nbsp;</label>
										</div>
										<div class="ui-form-inline">
											<input type="radio" id="man" name="m.sex" value="1"/>
											<label for="man">男&nbsp;</label>
										</div>
									</div>
								</div>
								<div class="ui-form-item">
									<label for="mobile" class="ui-label"><span class="ui-form-required">*</span>手机：</label>
									<input class="ui-input" id="mobile" name="m.mobile" type="text" required/>
								</div>
								<div class="ui-form-item">
									<label for="password" class="ui-label">密码：</label>
									<input class="ui-input" id="password" name="m.password" type="password" minlength="4" maxlength="20"/>
								</div>
								<div class="ui-form-item">
									<label for="birth" class="ui-label">生日：</label>
									<input class="ui-input" id="birth" name="mc.birth" type="text"/>
								</div>
							</div>
						</div>
						<div class="ui-switchable-panel">
							<div class="ui-box-content">
								<div class="ui-form-item">
									<label for="cardno" class="ui-label"><span class="ui-form-required">*</span>卡号：</label>
									<input class="ui-input" id="cardno" name="mc.cardNo" type="text" required/>
								</div>
								<div class="ui-form-item">
									<label for="cardType" class="ui-label"><span class="ui-form-required">*</span>卡类型：</label>
									<select id="cardType" name="mc.cardTypeId" required>
									    <option value="">请选择</option>
										<option value="1">钻石卡</option>
										<option value="2">铂金卡</option>
									</select>
								</div>
								<div class="ui-form-item">
									<label for="expireDate" class="ui-label">失效日期：</label>
									<input class="ui-input" id="expireDate" name="mc.expireDate" type="text"/>
								</div>
								<div class="ui-form-item">
									<label for="consumeDiscount" class="ui-label"><span class="ui-form-required">*</span>消费折扣：</label>
									<input class="ui-input" id="consumeDiscount" name="mc.consumeDiscount" type="text" required max="10" min="0"/>
								</div>
								<div class="ui-form-item">
									<label for="goodsDiscount" class="ui-label"><span class="ui-form-required">*</span>卖品折扣：</label>
									<input class="ui-input" id="goodsDiscount" name="mc.goodsDiscount" type="text" required max="10" min="0"/>
								</div>
							</div>
						</div>
						<div class="ui-switchable-panel">
							<div class="ui-box-content">
								<div class="ui-form-item">
									<label class="ui-label">工本费</label>
								</div>
								<div class="ui-form-item">
									<label for="costFee_cashPay" class="ui-label">现金付：</label>
									<input class="ui-input" id="costFee_cashPay" name="c_ledg.cashPay" value="0" type="text" min="0"/>
									<label for="costFee_unionPay" class="ui-input-pre">银联付：</label>
									<input class="ui-input" id="costFee_unionPay" name="c_ledg.unionPay" value="0" type="text" min="0"/>
								</div>
								<div class="ui-form-item">
									<label class="ui-label">充值</label>
								</div>
								<div class="ui-form-item">
									<label for="recharge_cashPay" class="ui-label">现金付：</label>
									<input class="ui-input" id="recharge_cashPay" name="r_ledg.cashPay" value="0" type="text" min="0"/>
									<label for="recharge_unionPay" class="ui-input-pre">银联付：</label>
									<input class="ui-input" id="recharge_unionPay" name="r_ledg.unionPay" value="0" type="text" min="0"/>
								</div>
								<div class="ui-form-item">
									<label for="presentFee" class="ui-label">赠送金：</label>
									<input class="ui-input" id="presentFee" name="mc.presentFee" value="0" type="text" min="0"/>
								</div>
							</div>
						</div>
					</div>
				</fieldset>
				<div class="ui-box-content">
					<div class="ui-form-item">
						<div class="fn-right">
							<button type="button" id="btn-prev" class="btn btn-default btn-sm ui-switchable-prev-btn" data-switchable-role="prev"><span class="glyphicon glyphicon-chevron-left"></span> 上一步</button>
							<button type="button" id="btn-next" class="btn btn-default btn-sm ui-switchable-next-btn" data-switchable-role="next">下一步 <span class="glyphicon glyphicon-chevron-right"></span></button>
							<button type="submit" id="btn-submit" class="btn btn-default btn-sm"><span class="glyphicon glyphicon-ok-sign"></span> 保&nbsp;&nbsp;&nbsp;存</button>
						</div>
					</div>
				</div>
			</form>
	    </div>
	</div>
	
	<script type="text/javascript" src="js/sea.js"></script>
	<script type="text/javascript">
		seajs.config({
			base: 'sea-modules',
			alias : {
				'$' : 'jquery/jquery/1.10.1/jquery',
				'confirmbox' : 'arale/dialog/1.3.0/confirmbox',
				'select' : 'arale/select/0.9.9/select',
				'widget' : 'arale/widget/1.1.1/widget',
				'validator' : 'arale/validator/0.9.7/validator',
				'carousel' : 'arale/switchable/1.0.2/carousel',
				'icheck' : 'jquery/icheck/1.0.2/icheck'
			}
		});
		seajs.use(['$', 'select', 'widget', 'validator', 'carousel', 'icheck'], function($, Select, Widget, Validator, Carousel) {
		    $(function() {
		    	
		    	$('input:radio').iCheck({
					checkboxClass: 'icheckbox_minimal-blue',
					radioClass: 'iradio_minimal-blue'
				});
		    	
		    	// Select
		    	new Select({
				    trigger: '#cardType'
				}).render();
		    	
		    	// Validation
		        //Widget.autoRenderAll();
		        
		    	// 轮播
		        var c = new Carousel({
			        element: '#member-form',
			        hasTriggers: false,
			        easing: 'easeOutStrong',
			        effect: 'scrollx',
			        step: 1,
			        viewSize: [498, 435],
			        circular: false,
			        autoplay: false
			    }).render();
		        
		        // 默认按钮状态
		        $('#btn-prev').hide();
        		$('#btn-next').show();
        		$('#btn-submit').hide();
        		
        		// 切换事件
        		var m_step = $('#member-step');
		        c.on('switch', function(toIndex, fromIndex) {
		        	if(toIndex === 0){
		        		$('#btn-prev').hide();
		        		$('#btn-next').show();
		        		$('#btn-submit').hide();
		        	}
		        	if(toIndex === 1){
		        		$('#btn-prev').show();
		        		$('#btn-next').show();
		        		$('#btn-submit').hide();
		        	}
					if(toIndex === 2){
						$('#btn-prev').show();
		        		$('#btn-next').hide();
		        		$('#btn-submit').show();
		        	}
		        	if(toIndex > fromIndex){
		        		m_step.find('li:eq(' + fromIndex + ')').removeClass('ui-step-active').addClass('ui-step-done');
		        		m_step.find('li:eq(' + toIndex + ')').addClass('ui-step-active');
		        	}else{
		        		m_step.find('li:eq(' + fromIndex + ')').removeClass('ui-step-active');
		        		m_step.find('li:eq(' + toIndex + ')').removeClass('ui-step-done').addClass('ui-step-active');
		        	}
		        });
		    });
		});
	</script>
</body>
</html>
